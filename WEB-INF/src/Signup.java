import Appn.Constants;
import Appn.Member;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Signup extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Member member = new Member();
        ServerReg s = new ServerReg();
        member.name = request.getParameter("p1");
        String user = request.getParameter("p2");
        member.id = user;
        member.pwd = request.getParameter("p31");
        member.secq = request.getParameter("p4");
        member.seca = request.getParameter("p5");
        boolean result = signup(member);
        if (result) {

            request.setAttribute("user", member.id);
            request.setAttribute("pwd", member.pwd);
            request.setAttribute("secq", member.secq);
            request.setAttribute("seca", member.seca);
            request.setAttribute("name", member.name);

            RequestDispatcher rq = request.getRequestDispatcher("modsignup.jsp");
            request.setAttribute("msg", "Id already exist,Please choose another ID");
            rq.forward(request, response);

        } else {
            HttpSession ses = request.getSession(true);
            if (ses != null) {
                ses.setAttribute("user", member.id);
                ses.setAttribute("pwd", member.pwd);
                ses.setAttribute("seca", member.seca);
                ses.setAttribute("secq", member.secq);
            }
            //s.Reg(user,member.pwd,getServletConfig().getServletContext().getInitParameter("path"));
            s.Reg(user, member.pwd, getServletConfig().getServletContext().getInitParameter("jespath"), getServletConfig().getServletContext().getInitParameter("server"));
            RequestDispatcher rq = request.getRequestDispatcher("welcome.jsp");
            rq.forward(request, response);
        }
    }

    public boolean signup(Member member) {
        boolean exist = false;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection conn = DriverManager.getConnection(Constants.dbURl, Constants.username, Constants.password);
            PreparedStatement st = conn.prepareStatement("Select * from MEMBER WHERE id = '" + member.id + "'");
            System.out.println("member id$$$" + member.id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                exist = true;
            }

            if (!exist) {
                String query = "insert into MEMBER values('" + member.name + "','" + member.id + "','" + member.pwd + "','" + member.secq + "','" + member.seca + "')";
                st.executeUpdate(query);

            }

            st.close();
            conn.close();

        } catch (Exception e) {
            return true;
        }

        return exist;
    }

}