<div class="product">
    <%
        ProductDao productDao = new ProductDao();
        List<Product> newest = new ArrayList<Product>();
        List<Product> mostbuy = new ArrayList<Product>();
        List<Product> mostview = new ArrayList<Product>();
        newest = productDao.getNewestPaging();
        mostbuy = productDao.getMostBuy();
        mostview = productDao.getMostView();
        int count = 0;
    %>
    <div class="container">
        <div class="product-top">
            <div class="product-one">
                <h3 style="margin-left: 14px; font-family: BreeSerif-Regular; font-size: 1.5em"><a
                        style="text-decoration: none" href="/pages/gallery.jsp?page=1&type=newest">Newest Product</a>
                </h3>
                <c:forEach var="i" items="<%=newest%>">
                    <div class="col-md-3 product-left">
                        <div class="product-main simpleCart_shelfItem">
                            <c:if test="${i.status == 1}">
                                <a href="pages/single.jsp?iditem=${i.iditem}" class="mask"><img
                                        class="img-responsive zoom-img item_thumb"
                                        src="${i.url}" alt=""/></a>
                            </c:if>
                            <c:if test="${i.status == 0}">
                                <a class="mask"><img
                                        class="img-responsive zoom-img item_thumb"
                                        src="${i.url}" alt=""/></a>
                            </c:if>
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
                            <div class="srch">
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
                <hr>
            </div>
            <div class="product-one">
                <h3 style="margin-left: 14px; font-family: BreeSerif-Regular; font-size: 1.5em"><a
                        style="text-decoration: none" href="/pages/gallery.jsp?page=1&type=mostbuy">Most-Buy Product</a>
                </h3>
                <c:forEach var="i" items="<%=mostbuy%>">
                    <div class="col-md-3 product-left">
                        <div class="product-main simpleCart_shelfItem">
                            <c:if test="${i.status == 1}">
                                <a href="pages/single.jsp?iditem=${i.iditem}" class="mask"><img
                                        class="img-responsive zoom-img item_thumb"
                                        src="${i.url}" alt=""/></a>
                            </c:if>
                            <c:if test="${i.status == 0}">
                                <a class="mask"><img
                                        class="img-responsive zoom-img"
                                        src="${i.url}" alt=""/></a>
                            </c:if>
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
                            <div class="srch">
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
                <hr>
            </div>
            <div class="product-one">
                <h3 style="margin-left: 14px; font-family: BreeSerif-Regular; font-size: 1.5em"><a
                        style="text-decoration: none" href="/pages/gallery.jsp?page=1&type=mostview">Most-View
                    Product</a></h3>
                <c:forEach var="i" items="<%=mostview%>">
                    <div class="col-md-3 product-left">
                        <div class="product-main simpleCart_shelfItem">
                            <c:if test="${i.status == 1}">
                                <a href="pages/single.jsp?iditem=${i.iditem}" class="mask"><img
                                        class="img-responsive zoom-img"
                                        src="${i.url}" alt=""/></a>
                            </c:if>
                            <c:if test="${i.status == 0}">
                                <a class="mask"><img
                                        class="img-responsive zoom-img"
                                        src="${i.url}" alt=""/></a>
                            </c:if>
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
                            <div class="srch">
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
                <hr>
            </div>
        </div>
    </div>
</div>