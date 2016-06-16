<%@ page import="Account.com.LoginServlet" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <title>Luxury Watches | Account</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--jQuery (necessary for Bootstrap's JavaScript plugins)-->
    <script src="../js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--start-menu-->
    <script src="../js/simpleCart.min.js"></script>
    <link href="../css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="../js/memenu.js"></script>
    <script>$(document).ready(function () {
        $(".memenu").memenu();
    });</script>
    <!--dropdown-->
    <script src="../js/jquery.easydropdown.js"></script>
</head>
<body>
<!--top-header-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-6 top-header-left">
                <div class="drop">
                    <%

                        HttpSession httpSession = request.getSession();
                        String name = LoginServlet.getLoginName(request, response);
                        if (name != null) {
                            int inLogin = (Integer) session.getAttribute("inLogin");
                            inLogin++;
                            session.setAttribute("inLogin", inLogin);
                            if (inLogin >= 3) {
                                response.sendRedirect("404.jsp");
                            }
                        } else {
                    %>
                    <div class="box">
                        <a class="dropdown drop label" style="font-size: 14px" href="login.jsp">Sign In</a>
                    </div>
                    <div class="box1">
                        <a class="dropdown drop label" style="font-size: 14px" href="register.jsp">Sign Up</a>
                    </div>
                    <%
                        }
                    %>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-6 top-header-left">
                <div class="cart box_1">
                    <a href="checkout.jsp">
                        <div class="total">
                            <span class="simpleCart_total"></span></div>
                        <img src="../images/cart-1.png" alt=""/>
                    </a>

                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--top-header-->
<!--start-logo-->
<div class="logo">
    <a href="../index.jsp"><h1>Luxury Watches</h1></a>
</div>
<!--start-logo-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="header">
            <div class="col-md-9 header-left">
                <div class="top-nav">
                    <ul class="memenu skyblue">
                        <li class="active"><a href="../index.jsp">Home</a></li>
                        <li class="grid"><a href="#">Men</a>

                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>Shop</h4>
                                        <ul>
                                            <li><a href="manager.jsp">New Arrivals</a></li>
                                            <li><a href="manager.jsp">Blazers</a></li>
                                            <li><a href="manager.jsp">Swem Wear</a></li>
                                            <li><a href="manager.jsp">Accessories</a></li>
                                            <li><a href="manager.jsp">Handbags</a></li>
                                            <li><a href="manager.jsp">T-Shirts</a></li>
                                            <li><a href="manager.jsp">Watches</a></li>
                                            <li><a href="manager.jsp">My Shopping Bag</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>Style Zone</h4>
                                        <ul>
                                            <li><a href="manager.jsp">Shoes</a></li>
                                            <li><a href="manager.jsp">Watches</a></li>
                                            <li><a href="manager.jsp">Brands</a></li>
                                            <li><a href="manager.jsp">Coats</a></li>
                                            <li><a href="manager.jsp">Accessories</a></li>
                                            <li><a href="manager.jsp">Trousers</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>Popular Brands</h4>
                                        <ul>
                                            <li><a href="manager.jsp">499 Store</a></li>
                                            <li><a href="manager.jsp">Fastrack</a></li>
                                            <li><a href="manager.jsp">Casio</a></li>
                                            <li><a href="manager.jsp">Fossil</a></li>
                                            <li><a href="manager.jsp">Maxima</a></li>
                                            <li><a href="manager.jsp">Timex</a></li>
                                            <li><a href="manager.jsp">TomTom</a></li>
                                            <li><a href="manager.jsp">Titan</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">Women</a>

                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>Shop</h4>
                                        <ul>
                                            <li><a href="manager.jsp">New Arrivals</a></li>
                                            <li><a href="manager.jsp">Blazers</a></li>
                                            <li><a href="manager.jsp">Swem Wear</a></li>
                                            <li><a href="manager.jsp">Accessories</a></li>
                                            <li><a href="manager.jsp">Handbags</a></li>
                                            <li><a href="manager.jsp">T-Shirts</a></li>
                                            <li><a href="manager.jsp">Watches</a></li>
                                            <li><a href="manager.jsp">My Shopping Bag</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>Style Zone</h4>
                                        <ul>
                                            <li><a href="manager.jsp">Shoes</a></li>
                                            <li><a href="manager.jsp">Watches</a></li>
                                            <li><a href="manager.jsp">Brands</a></li>
                                            <li><a href="manager.jsp">Coats</a></li>
                                            <li><a href="manager.jsp">Accessories</a></li>
                                            <li><a href="manager.jsp">Trousers</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>Popular Brands</h4>
                                        <ul>
                                            <li><a href="manager.jsp">499 Store</a></li>
                                            <li><a href="manager.jsp">Fastrack</a></li>
                                            <li><a href="manager.jsp">Casio</a></li>
                                            <li><a href="manager.jsp">Fossil</a></li>
                                            <li><a href="manager.jsp">Maxima</a></li>
                                            <li><a href="manager.jsp">Timex</a></li>
                                            <li><a href="manager.jsp">TomTom</a></li>
                                            <li><a href="manager.jsp">Titan</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">Kids</a>

                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>Shop</h4>
                                        <ul>
                                            <li><a href="manager.jsp">New Arrivals</a></li>
                                            <li><a href="manager.jsp">Blazers</a></li>
                                            <li><a href="manager.jsp">Swem Wear</a></li>
                                            <li><a href="manager.jsp">Accessories</a></li>
                                            <li><a href="manager.jsp">Handbags</a></li>
                                            <li><a href="manager.jsp">T-Shirts</a></li>
                                            <li><a href="manager.jsp">Watches</a></li>
                                            <li><a href="manager.jsp">My Shopping Bag</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>Style Zone</h4>
                                        <ul>
                                            <li><a href="manager.jsp">Shoes</a></li>
                                            <li><a href="manager.jsp">Watches</a></li>
                                            <li><a href="manager.jsp">Brands</a></li>
                                            <li><a href="manager.jsp">Coats</a></li>
                                            <li><a href="manager.jsp">Accessories</a></li>
                                            <li><a href="manager.jsp">Trousers</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>Popular Brands</h4>
                                        <ul>
                                            <li><a href="manager.jsp">499 Store</a></li>
                                            <li><a href="manager.jsp">Fastrack</a></li>
                                            <li><a href="manager.jsp">Casio</a></li>
                                            <li><a href="manager.jsp">Fossil</a></li>
                                            <li><a href="manager.jsp">Maxima</a></li>
                                            <li><a href="manager.jsp">Timex</a></li>
                                            <li><a href="manager.jsp">TomTom</a></li>
                                            <li><a href="manager.jsp">Titan</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="../typo.jsp">Blog</a>
                        </li>
                        <li class="grid"><a href="contact.jsp">Contact</a>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 header-right">
                <div class="search-bar">
                    <input type="text" value="Search" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--bottom-header-->
<!--start-breadcrumbs-->
<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><a href="../index.jsp">Home</a></li>
                <li class="active">Account</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--account-starts-->
<div class="account">
    <div class="container">
        <div class="account-top heading">
            <h2>ACCOUNT</h2>
        </div>
        <div class="account-main">
            <div class="col-md-6 account-left">
                <h3>Existing User</h3>
                <%
                    if (httpSession.getAttribute("loginExistence") != null) {
                        out.println("<div class='alert alert-danger' role='alert' style='width: 485px;'>");
                        out.println("<strong>Oh snap!</strong> Username does not exist. Please sign up at <a href='register.jsp'>HERE</a>.");
                        out.println("</div>");
                        httpSession.removeAttribute("loginExistence");
                %>
                <div class="account-bottom">
                    <form action="/LoginServlet" autocomplete="on" method="post">
                        <input id="username" name="username" placeholder="Username" type="text" required
                               autofocus="">
                        <input id="password" name="password" placeholder="Password" type="password" required>

                        <div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <input type="submit" value="Login">
                        </div>
                    </form>
                </div>
                <%

                } else if (httpSession.getAttribute("loginBlocked") != null) {
                    out.println("<div class='alert alert-danger' role='alert' style='width: 485px;'>");
                    out.println("<strong>Oh snap!</strong> Your username was blocked by administration.");
                    out.println("</div>");
                    httpSession.removeAttribute("loginBlocked");
                %>
                <div class="account-bottom">
                    <form action="/LoginServlet" autocomplete="on" method="post">
                        <input id="username" name="username" placeholder="Username" type="text" required
                               autofocus="">
                        <input id="password" name="password" placeholder="Password" type="password" required>

                        <div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <input type="submit" value="Login">
                        </div>
                    </form>
                </div>
                <%

                } else if (httpSession.getAttribute("loginUnactive") != null) {
                    out.println("<div class='alert alert-danger' role='alert' style='width: 485px;'>");
                    out.println("<strong>Oh snap!</strong> Your mail which liked your username does not active. Click <a href='http://www.gmail.com'>here</a> active now.");
                    out.println("</div>");
                    httpSession.removeAttribute("loginUnactive");
                %>
                <div class="account-bottom">
                    <form action="/LoginServlet" autocomplete="on" method="post">
                        <input id="username" name="username" placeholder="Username" type="text" required
                               autofocus="">
                        <input id="password" name="password" placeholder="Password" type="password" required>

                        <div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <input type="submit" value="Login">
                        </div>
                    </form>
                </div>
                <%
                } else if (httpSession.getAttribute("loginActive") != null) {
                    out.println("<script src='../js/jquery.timecountdown.js'></script>");
                    out.println("<div class='alert alert-success' role='alert' style='width: 485px;'>");
                    out.println("<strong>Well done!</strong> Login successfully. It will be redirected to homepage after <span id='time'>" +
                            "05</span> second(s)");
                    out.println("</div>");
                    httpSession.removeAttribute("loginActive");
                } else if (httpSession.getAttribute("loginCount") != null) {
                    int loginCount = (Integer) httpSession.getAttribute("loginCount");
                    if (loginCount > 2) {
                        if (httpSession.getAttribute("lasAccessedTime") == null) {
                            long lasAccessedTime = session.getLastAccessedTime();
                            httpSession.setAttribute("lasAccessedTime", lasAccessedTime);
                        }
                        out.println("<script src='../js/jquery.timeblock.js'></script>");
                        long last = (Long) httpSession.getAttribute("lasAccessedTime");
                        Date date = new Date();
                        long currTime = date.getTime();
                        long remainTime = currTime - last;
                        long totaltimeremain = 300000 - remainTime;
                        Date totaltimeremaindate = new Date(totaltimeremain);

                        out.println("<span id='timeremain' hidden='hidden'>" + totaltimeremain / 1000 + "</span>");
                        out.println("<div class='alert alert-danger' role='alert' style='width: 485px;'>");
                        out.println("<strong>Oh snap!</strong>BLOCKED Login. Try again after <span id='time'>" + new SimpleDateFormat("mm:ss").format(totaltimeremaindate) + "</span> minute(s).");
                        out.println("</div>");
                %>
                <div class="account-bottom">
                    <form action="/LoginServlet" autocomplete="on" method="post">
                        <input id="username" name="username" placeholder="BLOCKED" type="text" required
                               autofocus="" disabled="disabled">
                        <input id="password" name="password" placeholder="BLOCKED" type="password" required
                               disabled="disabled">

                        <div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <input type="submit" value="BLOCKED" disabled="disabled">
                        </div>
                    </form>
                </div>
                <%
                    if (remainTime >= 300000) {
                        httpSession.removeAttribute("loginCount");
                        httpSession.removeAttribute("lasAccessedTime");
                        response.sendRedirect("login.jsp");
                    }
                } else {
                    out.println("<div class='alert alert-warning' role='alert' style='width: 485px;'>");
                    out.println("<strong>Warning!</strong> Wrong password, try again!! " + loginCount + " time(s).");
                    out.println("</div>");
                %>
                <div class="account-bottom">
                    <form action="/LoginServlet" autocomplete="on" method="post">
                        <input id="username" name="username" placeholder="Username" type="text" required
                               autofocus="">
                        <input id="password" name="password" placeholder="Password" type="password" required>

                        <div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <input type="submit" value="Login">
                        </div>
                    </form>
                </div>
                <%
                    }
                } else {
                %>
                <div class="account-bottom">
                    <form action="/LoginServlet" autocomplete="on" method="post">
                        <input id="username" name="username" placeholder="Username" type="text" required
                               autofocus="">
                        <input id="password" name="password" placeholder="Password" type="password" required>

                        <div class="address">
                            <a class="forgot" href="#">Forgot Your Password?</a>
                            <input type="submit" value="Login">
                        </div>
                    </form>
                </div>
                <%
                    }
                %>
            </div>
            <div class="col-md-6 account-right account-left">
                <h3>New User? Create an Account</h3>

                <p>By creating an account with our store, you will be able to move through the checkout process faster,
                    store multiple shipping addresses, view and track your orders in your account and more.</p>
                <a href="register.jsp">Create an Account</a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--account-end-->
<!--information-starts-->
<div class="information">
    <div class="container">
        <div class="infor-top">
            <div class="col-md-3 infor-left">
                <h3>Follow Us</h3>
                <ul>
                    <li><a href="#"><span class="fb"></span><h6>Facebook</h6></a></li>
                    <li><a href="#"><span class="twit"></span><h6>Twitter</h6></a></li>
                    <li><a href="#"><span class="google"></span><h6>Google+</h6></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>Information</h3>
                <ul>
                    <li><a href="#"><p>Specials</p></a></li>
                    <li><a href="#"><p>New Products</p></a></li>
                    <li><a href="#"><p>Our Stores</p></a></li>
                    <li><a href="contact.jsp"><p>Contact Us</p></a></li>
                    <li><a href="#"><p>Top Sellers</p></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>My Account</h3>
                <ul>
                    <li><a href="login.jsp"><p>My Account</p></a></li>
                    <li><a href="#"><p>My Credit slips</p></a></li>
                    <li><a href="#"><p>My Merchandise returns</p></a></li>
                    <li><a href="#"><p>My Personal info</p></a></li>
                    <li><a href="#"><p>My Addresses</p></a></li>
                </ul>
            </div>
            <div class="col-md-3 infor-left">
                <h3>Store Information</h3>
                <h4>The company name,
                    <span>Lorem ipsum dolor,</span>
                    Glasglow Dr 40 Fe 72.</h4>
                <h5>+955 123 4567</h5>

                <p><a href="mailto:example@email.com">contact@example.com</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--information-end-->
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <div class="col-md-6 footer-left">
                <form>
                    <input type="text" value="Enter Your Email" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Enter Your Email';}">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="col-md-6 footer-right">
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-end-->
</body>
</html>