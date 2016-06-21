package Account.com;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    public static String getLoginName(HttpServletRequest req, HttpServletResponse resp) {
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {

            for (Cookie c : cookies) {

                if (c.getName().compareTo("currentAccount") == 0) {
                    return c.getValue();
                }

            }
        }

        return null;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String rmb = req.getParameter("loginkeeping");
        HttpSession session = req.getSession();

        if (rmb != null) {
            if (AccountDao.isExistence(username) == false) {
                resp.sendRedirect("/pages/register.jsp");
            } else {
                if (AccountDao.isLogin(username, password) == true) {
                    if (session.getAttribute("loginCount") != null) {
                        session.removeAttribute("loginCount");
                    }
                    if (AccountDao.getName(username).getStatus() == 1) {
                        Cookie cookie = new Cookie("currentAccount", username);
                        cookie.setMaxAge(60 * 60 * 60 * 24 * 5);
                        resp.addCookie(cookie);
                        resp.sendRedirect("/pages/success.jsp?action=loged");
                    } else {
                        resp.sendRedirect("/pages/success.jsp?action=unactive");
                    }

                } else {
                    int loginAttempt;

                    if (session.getAttribute("loginCount") == null) {
                        session.setAttribute("loginCount", 0);
                        loginAttempt = 0;
                    } else {
                        loginAttempt = (Integer) session.getAttribute("loginCount");
                    }

                    if (loginAttempt > 2) {
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/pages/wait.jsp");
                        rd.include(req, resp);
                    } else {
                        loginAttempt++;
                        resp.sendRedirect("/pages/login.jsp");
                    }

                    session.setAttribute("loginCount", loginAttempt);
                }
            }
        } else {
            if (AccountDao.isExistence(username) == false) {
                if (session.getAttribute("loginExistence") == null) {
                    session.setAttribute("loginExistence", 0);
                }
                resp.sendRedirect("/pages/login.jsp");
            } else {
                if (AccountDao.isLogin(username, password) == true) {
                    if (AccountDao.getName(username).getStatus() == 1) {
                        Cookie cookie = new Cookie("currentAccount", username);
                        cookie.setMaxAge(60 * 60);
                        resp.addCookie(cookie);
                        if (session.getAttribute("loginActive") == null) {
                            session.setAttribute("loginActive", 0);
                        }
                        if (session.getAttribute("inLogin") == null) {
                            session.setAttribute("inLogin", 1);
                            int temp = 0;
                            temp++;
                            session.setAttribute("inLogin", temp);
                        }
                        if ((session.getAttribute("loginCount") != null)) {
                            session.removeAttribute("loginCount");
                        }
                        resp.sendRedirect("/pages/login.jsp");
                    } else if (AccountDao.getName(username).getStatus() == 3) {
                        if (session.getAttribute("loginUnactive") == null) {
                            session.setAttribute("loginUnactive", 0);
                        }
                        resp.sendRedirect("/pages/login.jsp");
                    } else {
                        if (session.getAttribute("loginBlocked") == null) {
                            session.setAttribute("loginBlocked", 0);
                        }
                        resp.sendRedirect("/pages/login.jsp");
                    }
                } else {
                    int loginAttempt;

                    if (session.getAttribute("loginCount") == null) {
                        session.setAttribute("loginCount", 0);
                        loginAttempt = 0;
                    } else {
                        loginAttempt = (Integer) session.getAttribute("loginCount");
                    }

                    if (loginAttempt > 2) {
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/pages/login.jsp");
                        rd.include(req, resp);
                    } else {
                        loginAttempt++;
                        resp.sendRedirect("/pages/login.jsp");
                    }

                    session.setAttribute("loginCount", loginAttempt);
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
