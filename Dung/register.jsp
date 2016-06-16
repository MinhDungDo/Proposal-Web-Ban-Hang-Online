<%@ page import="Account.com.LoginServlet" %>
<!DOCTYPE html>
<html>
<head>
    <title>Luxury Watches | Register</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="../js/jquery-1.11.0.min.js"></script>
    <!--Custom Theme files-->
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
                <li class="active">Register</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--register-starts-->
<div class="register">
    <div class="container">
        <div class="register-top heading">
            <h2>REGISTER</h2>
        </div>
        <div class="register-main">
            <form action="/RegisterServlet" autocomplete="on" method="post">
                <div class="col-md-6 account-left">
                    <input id="username" name="username" placeholder="Username" type="text" required
                           autofocus="">
                    <input id="firstname" name="firstname" placeholder="First name" type="text" required>
                    <input id="lastname" name="lastname" placeholder="Last name" type="text" required>
                    <input id="email" name="email" placeholder="Email address" type="text" required>
                    <input id="phone" name="phone" placeholder="Phone" type="text" required>
                    <ul>
                        <li><label class="radio left"><input id="male" type="radio" name="gender" value="male"
                                                             checked=""><i></i>Male</label></li>
                        <li><label class="radio"><input id="female" type="radio" name="gender" value="female"><i></i>Female</label>
                        </li>
                        <div class="clearfix"></div>
                    </ul>

                </div>
                <div class="col-md-6 account-left">
                    <input id="password" name="password" placeholder="Password" type="password" required>
                    <input id="repassword" name="repassword" placeholder="Retype password" type="password"
                           required="required">
                </div>
                <div class="clearfix"></div>
        </div>
        <div class="address submit">
            <input type="submit" value="Submit">
        </div>
        </form>
    </div>

</div>
<!--register-end-->
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