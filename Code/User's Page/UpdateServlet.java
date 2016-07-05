package Account.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String currpass = req.getParameter("currpass");
        String newpass = req.getParameter("newpass");
        String renewpass = req.getParameter("renewpass");

        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String name = req.getParameter("name");

        String update = req.getParameter("update");

        if (update != null) {
            if (renewpass.equals("") && newpass.equals("")) {
                if (AccountDao.Update(currpass, name, phone) == 1) {
                    resp.sendRedirect("/pages/success.jsp?action=updated");
                } else {
                    resp.sendRedirect("sai mat khau");
                }
            } else if (renewpass.equals(newpass)) {
                if (AccountDao.UpdateNewPass(currpass, newpass, name, phone) == 1) {
                    resp.sendRedirect("/pages/success.jsp?action=updated");
                } else {
                    resp.sendRedirect("/pages/success.jsp?action=unupdate");
                }
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
