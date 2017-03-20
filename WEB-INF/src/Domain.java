import Appn.Constants;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Domain extends HttpServlet {
    Exception e1 = null;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String name = request.getParameter("t1");
        String type = request.getParameter("t2");
        boolean result = check(name);

        if (result) {

            RequestDispatcher rq = request.getRequestDispatcher("settings.jsp");
            request.setAttribute("msg", "The Domain name already exist");
            rq.forward(request, response);


        } else {
            if (save(name, type)) {
                RequestDispatcher rq = request.getRequestDispatcher("settings.jsp");
                request.setAttribute("msg", "The Domain name successfully saved");
                rq.forward(request, response);
            } else {
                RequestDispatcher rq = request.getRequestDispatcher("settings.jsp");
                request.setAttribute("msg", e1);
                rq.forward(request, response);

            }
        }
    }

    public boolean check(String name) {
        boolean exist = false;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection conn = DriverManager.getConnection(Constants.dbURl, Constants.username, Constants.password);
            PreparedStatement st = conn.prepareStatement("Select * from LIST WHERE name= '" + name + "'");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                exist = true;
            }

            st.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return exist;
    }

    public boolean save(String name, String type) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            Connection conn = DriverManager.getConnection(Constants.dbURl, Constants.username, Constants.password);
            PreparedStatement st = conn.prepareStatement("Select * from LIST");
            String query = "insert into LIST values('" + name + "','" + type + "')";
            st.executeUpdate(query);
            st.close();
            conn.close();
            return true;
        } catch (Exception e) {
            e1 = e;
            return false;
        }

    }

}