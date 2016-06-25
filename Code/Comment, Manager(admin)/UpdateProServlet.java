package Product.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UpdateProServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();

        String idpro = req.getParameter("idpro");
        String active = req.getParameter("active");
        String inactive = req.getParameter("inactive");
        String delete = req.getParameter("delete");
        String activein = req.getParameter("activein");
        String inactivein = req.getParameter("inactivein");
        String deletein = req.getParameter("deletein");

        String update = req.getParameter("update");
        String conf = req.getParameter("conf");
        String namepro = req.getParameter("namepro");
        String sku = req.getParameter("sku");
        String price = req.getParameter("price");
        String quan = req.getParameter("quan");
        String country = req.getParameter("country");
        String water = req.getParameter("water");
        String info = req.getParameter("info");
        String _case = req.getParameter("case");
        String strap = req.getParameter("strap");
        String material = req.getParameter("material");
        String type = req.getParameter("type");
        String gender = req.getParameter("gender");
        String warr = req.getParameter("warr");
        String move = req.getParameter("move");
        String date = req.getParameter("date");
        String url = req.getParameter("url");
        String url2 = req.getParameter("url2");
        String url3 = req.getParameter("url3");

        if (active != null) {
            ProductDao.Active(idpro);
            resp.sendRedirect("/pages/downdata.jsp");
        } else if (inactive != null) {
            ProductDao.Inactive(idpro);
            resp.sendRedirect("/pages/downdata.jsp");
        } else if (delete != null) {
            ProductDao.Delete(idpro);
            resp.sendRedirect("/pages/downdata.jsp");
        } else if (activein != null) {
            ProductDao.Active(idpro);
            resp.sendRedirect("/pages/downdata.jsp?iditem=" + idpro);
        } else if (inactivein != null) {
            ProductDao.Inactive(idpro);
            resp.sendRedirect("/pages/downdata.jsp?iditem=" + idpro);
        } else if (deletein != null) {
            ProductDao.Delete(idpro);
            resp.sendRedirect("/pages/downdata.jsp");
        } else if (update != null) {
            if (ProductDao.Update(conf,namepro,sku,price,quan,country,water,info,_case,strap,material,type,gender,warr,move,date,url,url2,url3,idpro) == 1){
                if (session.getAttribute("updateSuccess") == null) {
                    session.setAttribute("updateSuccess", 0);
                }
                resp.sendRedirect("/pages/downdata.jsp?iditem=" + idpro);
            }else{
                if (session.getAttribute("updateFail") == null) {
                    session.setAttribute("updateFail", 0);
                }
                resp.sendRedirect("/pages/downdata.jsp?iditem=" + idpro);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
