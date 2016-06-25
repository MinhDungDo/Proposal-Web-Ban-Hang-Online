package Contactus.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by KUBO0212 on 6/26/2016.
 */
public class ContactusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String content = req.getParameter("content");

        Contactus contactus = new Contactus();
        contactus.setName(name);
        contactus.setEmail(email);
        contactus.setPhone(phone);
        contactus.setContent(content);

        ContactusDao contactusDao = new ContactusDao();
        contactusDao.setContent(contactus);
        SendMailContactusServlet.main(email);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
