package Category.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AddCatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sku = req.getParameter("sku");
        String manufactor = req.getParameter("manufactor");

        HttpSession session = req.getSession();
        CategoryDao categoryDao = new CategoryDao();
        Category category = new Category();

        category.setIdcat(sku);
        category.setNamecat(manufactor);
        if (categoryDao.setCategory(category) == true) {
            if (session.getAttribute("addcatSuccess") == null) {
                session.setAttribute("addcatSuccess", 0);
            }
            resp.sendRedirect("/pages/updata.jsp");
        } else {
            if (session.getAttribute("addcatFail") == null) {
                session.setAttribute("addcatFail", 0);
            }
            resp.sendRedirect("/pages/updata.jsp");
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
