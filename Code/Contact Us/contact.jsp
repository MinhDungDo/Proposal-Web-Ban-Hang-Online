<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Account.com.LoginServlet" %>
<%@ page import="Category.com.Category" %>
<%@ page import="Category.com.CategoryDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Contact :: w3layouts</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
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
                        String name = LoginServlet.getLoginName(request, response);
                        if (name != null) {
                    %>
                    <div class="box">
                        <a class="dropdown drop label" style="font-size: 14px" href="manager.jsp"><%
                            out.print("Hi, " + name);%></a>
                    </div>
                    <div class="box1">
                        <a class="dropdown drop label simpleCart_empty" style="font-size: 14px" href="/LogoutServlet">Log
                            out</a>
                    </div>
                    <%
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
                        <li class="active"><a href="/index.jsp">Home</a></li>
                        <li class="grid"><a href="#">Men</a>
                            <%
                                CategoryDao categoryDao = new CategoryDao();
                                List<Category> categorymale = new ArrayList<Category>();
                                categorymale = categoryDao.getMale();
                            %>
                            <div class="mepanel" style="margin-left: 75px;">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <ul>
                                            <c:forEach var="i" items="<%=categorymale%>">
                                                <c:if test="${i.status == 1}">
                                                    <li style="width: 200px"><a
                                                            href="gallery.jsp?page=1&type=getcate&namepage=${i.namecat}"
                                                            style="width: 60px">${i.namecat}</a></li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">Women</a>
                            <%
                                List<Category> categoryfemale = new ArrayList<Category>();
                                categoryfemale = categoryDao.getFemale();
                            %>
                            <div class="mepanel" style="margin-left: 155px;">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <ul>
                                            <c:forEach var="i" items="<%=categoryfemale%>">
                                                <c:if test="${i.status == 1}">
                                                    <li style="width: 200px"><a
                                                            href="gallery.jsp?page=1&type=getcate&namepage=${i.namecat}"
                                                            style="width: 60px">${i.namecat}</a></li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="gallery.jsp?page=1&type=getall">Category</a>
                            <%
                                List<Category> category = new ArrayList<Category>();
                                category = categoryDao.getAll();
                            %>
                            <div class="mepanel" style="margin-left: 260px;">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <ul>
                                            <c:forEach var="i" items="<%=category%>">
                                                <c:if test="${i.status == 1}">
                                                    <li style="width: 200px"><a
                                                            href="gallery.jsp?page=1&type=getcate&namepage=${i.namecat}"
                                                            style="width: 60px">${i.namecat}</a></li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
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
                <li class="active">Contact</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--contact-start-->
<div class="contact">
    <div class="container">
        <div class="contact-top heading">
            <h2>CONTACT</h2>
        </div>
        <ul>
            <li class="breadcrumb"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram,
                anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi,
                qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
        </ul>
        <div class="contact-text">
            <div class="col-md-3 contact-left">
                <div class="address">
                    <h5>Address</h5>

                    <p>The company name,
                        <span>Lorem ipsum dolor,</span>
                        Glasglow Dr 40 Fe 72.</p>
                </div>
                <div class="address">
                    <h5>Address1</h5>

                    <p>Tel:1115550001,
                        <span>Fax:190-4509-494</span>
                        Email: <a href="mailto:example@email.com">contact@example.com</a></p>
                </div>
            </div>
            <div class="col-md-9 contact-right">
                <form action="/ContactusServlet" method="post">
                    <input class="form-control" type="text" placeholder="Name" id="name" name="name">
                    <input class="form-control" type="text" placeholder="Phone" id="phone" name="phone">
                    <input class="form-control" type="text" placeholder="Email" id="email" name=email>
                    <textarea class="form-control" placeholder="Message" required="required" id="content" name="content"></textarea>

                    <div class="submit-btn">
                        <input class="btn btn-success" type="submit" value="SUBMIT">
                    </div>
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--contact-end-->
<!--map-start-->
<div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6632.248000703498!2d151.265683!3d-33.7832959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12abc7edcbeb07%3A0x5017d681632bfc0!2sManly+Vale+NSW+2093%2C+Australia!5e0!3m2!1sen!2sin!4v1433329298259"
            style="border:0"></iframe>
</div>
<!--map-end-->
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
                <p>© 2015 Luxury Watches. All Rights Reserved | Design by <a href="http://w3layouts.com/"
                                                                             target="_blank">W3layouts</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-end-->
</body>
</html>