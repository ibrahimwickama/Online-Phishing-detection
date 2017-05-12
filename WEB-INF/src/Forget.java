import Appn.Constants;
import Appn.Member;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Forget extends HttpServlet {
    String userPass;


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Member member = new Member();
        member.id = request.getParameter("p1");
        member.secq = request.getParameter("p2");
        member.seca = request.getParameter("p3");

        boolean result = search(member);
        if (result) {

            RequestDispatcher rq = request.getRequestDispatcher("forget.jsp");
            request.setAttribute("msg", "Your Password is " + userPass);
            rq.include(request, response);
        } else {
            RequestDispatcher rq = request.getRequestDispatcher("forget.jsp");
            request.setAttribute("msg", "Invalid Entry, Try again");
            rq.include(request, response);
        }
    }

    public boolean search(Member member) {
        boolean exist = false;
        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection conn = DriverManager.getConnection(Constants.dbURl, Constants.username, Constants.password);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select * from MEMBER");
            while (rs.next()) {
                if (member.id.equals(rs.getString(2)) && member.secq.equals(rs.getString(4)) && member.seca.equals(rs.getString(5))) {
                    userPass = rs.getString(3);
                    exist = true;
                    break;
                }
            }
            st.close();
            conn.close();

        } catch (Exception e) {
            return false;
        }

        return exist;
    }


}