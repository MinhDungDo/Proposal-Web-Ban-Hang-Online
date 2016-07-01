<div class="col-md-9 single-main-left">
                <%
                    ProductDao productDao = new ProductDao();
                    productDao.isView(Integer.parseInt(request.getParameter("iditem")));
                    Product product = productDao.getByID(Integer.parseInt(request.getParameter("iditem")));
                    List<Product> relation = new ArrayList<Product>();
                    relation = productDao.getRelation();

                    CommentDao commentDao = new CommentDao();
                    List<Comment> comments = new ArrayList<>();
                    comments = commentDao.getAllById(request.getParameter("iditem"));
                %>
                <div class="sngl-top">
                    <div class="col-md-5 single-top-left">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="<%=product.getUrl()%>">
                                    <div class="thumb-image"><img src="<%=product.getUrl()%>" data-imagezoom="true"
                                                                  class="img-responsive" alt=""/></div>
                                </li>
                                <li data-thumb="<%=product.getUrl2()%>">
                                    <div class="thumb-image"><img src="<%=product.getUrl2()%>" data-imagezoom="true"
                                                                  class="img-responsive" alt=""/></div>
                                </li>
                                <li data-thumb="<%=product.getUrl3()%>">
                                    <div class="thumb-image"><img src="<%=product.getUrl3()%>" data-imagezoom="true"
                                                                  class="img-responsive" alt=""/></div>
                                </li>
                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script src="../js/imagezoom.js"></script>
                        <script defer src="../js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen"/>
                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function () {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
                    </div>
                    <div class="col-md-7 single-top-right">
                        <div class="single-para simpleCart_shelfItem">
                            <h2 class="item_name"><%=product.getNameitem()%>
                            </h2>

                            <img src="<%=product.getUrl()%>"
                                 class="item_thumb" alt="" hidden="hidden"/>

                            <div class="star-on">
                                <ul class="star-footer">
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                    <li><a href="#"><i> </i></a></li>
                                </ul>
                                <div class="review">
                                    <a href="#"><%=product.getView()%> review(s) </a>

                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <h5 class="item_price">$<%=product.getPrice()%>
                            </h5>

                            <p><%=product.getInfo()%>
                            </p>

                            <div class="available">

                            </div>
                            <ul class="tag-men">
                                <li><span>GENDER</span>
                                    <span class="women1">: <%=product.getGender()%></span></li>
                                <li><span>SKU</span>
                                    <span class="women2">: <%=product.getIdcat()%></span></li>
                            </ul>
                            <a href="" class="add-cart item_add btn btn-success"
                               onclick="window.alert('Add to cart suscessfully!')">ADD TO CART</a>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="tabs">
                    <ul class="menu_drop">
                        <li class="item1" style="margin-left: 15px; margin-right: 15px;"><a href="#"><img
                                src="../images/arrow.png" alt="">Description</a>
                            <ul>
                                <li class="subitem1"><a href="#"><strong>Movement:</strong> <%=product.getMovement()%>
                                </a></li>
                                <li class="subitem2"><a href="#"><strong>Water resistance:</strong> <%=product.getWater()%>
                                </a></li>
                                <li class="subitem3"><a href="#"><strong>Case:</strong> <%=product.get_case()%>
                                </a></li>
                                <li class="subitem1"><a href="#"><strong>Strap:</strong> <%=product.getStrap()%>
                                </a></li>
                            </ul>
                        </li>
                        <li class="item2" style="margin-left: 15px; margin-right: 15px;"><a href="#"><img
                                src="../images/arrow.png" alt="">Additional information</a>
                            <ul>
                                <li class="subitem1"><a href="#"><strong>Material:</strong> <%=product.getMaterial()%>
                                </a></li>
                                <li class="subitem2"><a href="#"><strong>Type:</strong> <%=product.getType()%>
                                </a></li>
                                <li class="subitem3"><a href="#"><strong>Warranty:</strong> <%=product.getWarranty()%>
                                </a></li>
                                <li class="subitem1"><a href="#"><strong>Country of Origin:</strong> <%=product.getCountry()%>
                                </a></li>

                            </ul>
                        </li>
                        <li class="item3" style="margin-left: 15px; margin-right: 15px;"><a href="#"><img
                                src="../images/arrow.png" alt="">Reviews (<%=comments.size()%>)</a>

                            <ul>
                                
                            </ul>
                        </li>
                        <li class="item4" style="margin-left: 15px; margin-right: 15px;"><a href="#"><img
                                src="../images/arrow.png" alt="">Helpful Links</a>
                            <ul>
                                <li class="subitem1"><a href="http://www.overstock.com/">All measurements are
                                    approximate and may vary slightly from the listed dimensions.

                                    Men's watch bands can be sized to fit 7.5-inch to 8.5-inch wrists.

                                    Click here to view our Watch Sizing Guide.</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="latestproducts">
                    <div class="product-one">
                        <c:forEach var="i" items="<%=relation%>">
                            <div class="col-md-4 product-left p-left">
                                <div class="product-main simpleCart_shelfItem">
                                    <a href="single.jsp?iditem=${i.iditem}" class="mask"><img
                                            class="img-responsive zoom-img"
                                            src="${i.url}" alt=""/></a>

                                    <div class="product-bottom">
                                        <h3 class="item_name">${i.nameitem}</h3>
                                        <c:if test="${i.status == 1}">
                                            <p>Availability</p>
                                            <h4><a class="item_add" onclick="window.alert('Add to cart suscessfully!')"><i></i></a> <span
                                                    class=" item_price">$${i.price}</span>
                                            </h4>
                                        </c:if>
                                        <c:if test="${i.status == 0}">
                                            <p>Unavailability</p>
                                            <h4><a><i></i></a> <span
                                                    class=" item_price">$${i.price}</span>
                                            </h4>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>