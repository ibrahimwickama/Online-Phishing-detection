import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Msg extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession ses = request.getSession(false);
        Appn.MsgForm[] mf = (Appn.MsgForm[]) ses.getAttribute("allmsg");
        int index = Integer.parseInt(request.getParameter("index"));
        Appn.MsgForm message = mf[index - 1];

        ses.setAttribute("msg", message);
        RequestDispatcher rq = request.getRequestDispatcher("msgdisp.jsp");
        rq.forward(request, response);


    }
}