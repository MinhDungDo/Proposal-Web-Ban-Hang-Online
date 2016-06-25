package Category.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateCatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String idcat = req.getParameter("idcat");
        String active = req.getParameter("active");
        String inactive = req.getParameter("inactive");
        String delete = req.getParameter("delete");

        if (active != null) {
            CategoryDao.Active(idcat);
            resp.sendRedirect("/pages/downdata.jsp");
        } else if (inactive != null) {
            CategoryDao.Inactive(idcat);
            resp.sendRedirect("/pages/downdata.jsp");
        } else if (delete != null) {
            CategoryDao.setCategoryBackup(idcat);
            CategoryDao.Delete(idcat);
            resp.sendRedirect("/pages/downdata.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
