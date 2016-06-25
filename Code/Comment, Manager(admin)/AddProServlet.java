package Product.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AddProServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String model = req.getParameter("model");
        String sku = req.getParameter("sku");
        String price = req.getParameter("price");
        String quantity = req.getParameter("quantity");
        String url = req.getParameter("url");
        String url2 = req.getParameter("url2");
        String url3 = req.getParameter("url3");
        String info = req.getParameter("info");
        String movement = req.getParameter("movement");
        String water = req.getParameter("water");
        String _case = req.getParameter("case");
        String strap = req.getParameter("strap");
        String material = req.getParameter("material");
        String type = req.getParameter("type");
        String gender = req.getParameter("gender");
        String warranty = req.getParameter("warranty");
        String country = req.getParameter("country");

        HttpSession session = req.getSession();
        ProductDao productDao = new ProductDao();
        Product product = new Product();

        int abv = Integer.parseInt(model);
        int Price = Integer.parseInt(price);
        int Quantity = Integer.parseInt(quantity);

        product.setNameitem(name);
        product.setIditem(abv);
        product.setIdcat(sku);
        product.setPrice(Price);
        product.setQuantity(Quantity);
        product.setUrl(url);
        product.setUrl2(url2);
        product.setUrl3(url3);
        product.setInfo(info);
        product.setMovement(movement);
        product.setWater(water);
        product.set_case(_case);
        product.setStrap(strap);
        product.setMaterial(material);
        product.setType(type);
        product.setGender(gender);
        product.setWarranty(warranty);
        product.setCountry(country);

        if (productDao.setProduct(product) == true) {
            if (session.getAttribute("addproSuccess") == null) {
                session.setAttribute("addproSuccess", 0);
            }
            resp.sendRedirect("/pages/updata.jsp");
        } else {
            if (session.getAttribute("addproFail") == null) {
                session.setAttribute("addproFail", 0);
            }
            resp.sendRedirect("/pages/updata.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
