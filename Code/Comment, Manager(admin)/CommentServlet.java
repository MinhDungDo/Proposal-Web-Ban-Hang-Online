package Comment.com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String idItem = req.getParameter("iditem");
        String username = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String comment = req.getParameter("comment");
        Integer iditem = Integer.parseInt(idItem);

        Comment comments = new Comment();
        comments.setIditem(iditem);
        comments.setUsername(username);
        comments.setEmail(email);
        comments.setPhone(phone);
        comments.setComment(comment);

        CommentDao commentDao = new CommentDao();
        commentDao.setContent(comments);
        resp.sendRedirect("/pages/single.jsp?iditem=" + iditem);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
