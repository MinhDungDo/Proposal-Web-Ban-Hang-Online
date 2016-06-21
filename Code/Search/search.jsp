<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Account.com.LoginServlet" %>
<%@ page import="Category.com.Category" %>
<%@ page import="Category.com.CategoryDao" %>
<%@ page import="Product.com.Product" %>
<%@ page import="Product.com.ProductDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
  <title>Luxury Watches A Ecommerce Category Flat Bootstrap Resposive Website Template | Home :: w3layouts</title>
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
  <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
  <script src="/js/jquery-1.11.0.min.js"></script>
  <!--Custom-Theme-files-->
  <!--theme-style-->
  <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
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
  <script src="/js/simpleCart.min.js"></script>
  <link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
  <script type="text/javascript" src="/js/memenu.js"></script>
  <script>$(document).ready(function () {
    $(".memenu").memenu();
  });</script>
  <!--dropdown-->
  <script src="/js/jquery.easydropdown.js"></script>
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
            <a class="dropdown drop label" style="font-size: 14px" href="login.jsp"><%
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
            <img src="/images/cart-1.png" alt=""/>
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
  <a href="/index.jsp"><h1>Luxury Watches</h1></a>
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

              <div class="mepanel" style="margin-left: 75px;">
                <div class="row">
                  <div class="col1 me-one">
                    <ul>
                      <li><a href="manager.jsp">New Arrivals</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="grid"><a href="#">Women</a>

              <div class="mepanel" style="margin-left: 155px;">
                <div class="row">
                  <div class="col1 me-one">
                    <ul>
                      <li><a href="manager.jsp">New Arrivals</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="grid"><a href="#">Category</a>

              <div class="mepanel" style="margin-left: 260px;">
                <div class="row">
                  <div class="col1 me-one">
                    <ul>
                      <li><a href="manager.jsp">New Arrivals</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li class="grid"><a href="typo.jsp">Blog</a>
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
        <li><a href="/index.jsp">Home</a></li>
        <li class="active">Single</li>
      </ol>
    </div>
  </div>
</div>
<!--end-breadcrumbs-->
<!--product-starts-->
<div class="product">
  <%
    int count = 0;
    double max = 0;
    double numpage = 0;
    int renumpage = 0;
    List<String> size = (List<String>)session.getAttribute("list");
    max = size.size();
    numpage = max / 12;
    numpage = Math.ceil(numpage);
    renumpage = (int) numpage;
  %>
  <div class="container">
    <div class="product-top">
      <nav style="text-align:center">
        <ul class="pagination">
          <c:if test="${sessionScope.list.size() > 0}">
          <%
              Integer pagenum = Integer.parseInt(request.getParameter("page"));
              if (pagenum > 1 && pagenum <= renumpage) {
          %>
          <li><a href="search.jsp?page=<%=pagenum-1%>" aria-label="Previous"><span
                  aria-hidden="true">&laquo;
            Previous</span></a></li>
          <%
            }
            if (pagenum == 1) {
          %>
          <li class="disabled"><a aria-label="Previous"><span aria-hidden="true">&laquo;
            Previous</span></a></li>
          <%
            }
          %>
            <c:forEach var="i" begin="1" end="<%=renumpage%>">
            <%
              Integer test = (Integer) pageContext.getAttribute("i");
              if (pagenum.equals(test)) {
            %>
            <li class="active"><a href="#">${i}<span class="sr-only">(current)</span></a></li>
            <%
            } else {
            %>
            <li><a href="search.jsp?page=${i}">${i}</a></li>
            <%
              }
            %>
          </c:forEach>
          <%
            if (pagenum >= 1 && pagenum < renumpage) {
          %>
          <li><a href="search.jsp?page=<%=pagenum+1%>" aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a>
          </li>
          <%
            }
            if (pagenum == renumpage) {
          %>
          <li class="disabled"><a aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a></li>
            <%
              }
            %>
          </c:if>
        </ul>
      </nav>
      <div class="product-one">
        <c:if test="${sessionScope.list.size() > 0}">
        <%
          int pagenum = Integer.parseInt(request.getParameter("page"));
          if(pagenum > numpage){
            response.sendRedirect("search.jsp?page="+renumpage);
          }
          int beginpage = (pagenum-1)*12;
          int endpage = (pagenum-1)*12+11;
        %>
          <c:forEach var="i" items="${sessionScope.list}" begin="<%=beginpage%>" end="<%=endpage%>">
          <%
            count++;
          %>
        <div class="col-md-3 product-left">
          <div class="product-main simpleCart_shelfItem">
            <c:if test="${i.status == 1}">
              <a href="/pages/single.jsp?iditem=${i.iditem}" class="mask"><img
                      class="img-responsive zoom-img"
                      src="${i.url}" alt=""/></a>
            </c:if>
            <c:if test="${i.status == 0}">
              <a class="mask"><img
                      class="img-responsive zoom-img"
                      src="${i.url}" alt=""/></a>
            </c:if>
            <div class="product-bottom">
              <h3>${i.nameitem}</h3>
              <c:if test="${i.status == 1}">
                <p>Availability</p>
              </c:if>
              <c:if test="${i.status == 0}">
                <p>Unavailability</p>
              </c:if>
              <h4><a class="item_add" href="#"><i></i></a> <span
                      class=" item_price">$${i.price}</span></h4>
            </div>
            <div class="srch">
            </div>
          </div>
        </div>
        <%
          if (count == 4 || count == 8) {
        %>
        <div class="clearfix"></div>
      </div>
      <div class="product-one">
        <%
          }
        %>
        </c:forEach>
        <div class="clearfix"></div>
        </c:if>
      </div>
    </div>
  </div>
</div>
<!--product-end-->
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