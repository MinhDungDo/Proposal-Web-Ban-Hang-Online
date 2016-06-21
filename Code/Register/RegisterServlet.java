package Account.com;

/**
 * Created by KUBO0212 on 6/2/2016.
 */

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Account account = new Account();
        AccountDao accountDao = new AccountDao();

        String username = req.getParameter("username");
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String gender = req.getParameter("gender");
        String password = req.getParameter("password");
        String repassword = req.getParameter("repassword");
        String uuid = UUID.randomUUID().toString();

        try {
            password = MD5Servlet.md5(password);
            repassword = MD5Servlet.md5(repassword);
        } catch (Exception e) {
            e.printStackTrace();
        }

        account.setUsername(username);
        account.setFirstname(firstname);
        account.setLastname(lastname);
        account.setEmail(email);
        account.setPhone(phone);
        account.setGender(gender);
        account.setPassword(password);
        account.setRepassword(repassword);
        account.setUuid(uuid);

        boolean rs = accountDao.setRegister(account);


        if (rs == true) {
            resp.sendRedirect("/index.jsp");
            SendMailServlet.main(username, uuid);
        } else {
            resp.sendRedirect("/pages/register.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
