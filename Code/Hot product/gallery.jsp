<div class="product">
    <%
        String type = request.getParameter("type");
        String namepage = request.getParameter("namepage");
        ProductDao productDao = new ProductDao();
        List<Product> products = new ArrayList<Product>();

        List<Category> categories = new ArrayList<Category>();
        int count = 0;

        if (type.equals("newest")) {
            if (Integer.parseInt((request.getParameter("page"))) > productDao.getMaxPage()) {
                response.sendRedirect("gallery.jsp?page=" + productDao.getMaxPage() + "&type=newest");
            } else {
                products = productDao.getNewestPagingAll(Integer.parseInt(request.getParameter("page")), 12);
            }
        } else if (type.equals("mostbuy")) {
            if (Integer.parseInt((request.getParameter("page"))) > productDao.getMaxPage()) {
                response.sendRedirect("gallery.jsp?page=" + productDao.getMaxPage() + "&type=mostbuy");
            } else {
                products = productDao.getMostBuyAll(Integer.parseInt(request.getParameter("page")), 12);
            }
        } else if (type.equals("mostview")) {
            if (Integer.parseInt((request.getParameter("page"))) > productDao.getMaxPage()) {
                response.sendRedirect("gallery.jsp?page=" + productDao.getMaxPage() + "&type=mostview");
            } else {
                products = productDao.getMostViewAll(Integer.parseInt(request.getParameter("page")), 12);
            }
        }  else {
        
        }
    %>
    <div class="container">
        <div class="product-top">
            <nav style="text-align:center">
                <ul class="pagination">
				<%
                   if (type.equals("mostbuy")) {
                        Integer stt = Integer.parseInt(request.getParameter("page"));
                        if (stt > 1 && stt <= productDao.getMaxPage()) {
                    %>
                    <li><a href="gallery.jsp?page=<%=stt-1%>&type=mostbuy" aria-label="Previous"><span
                            aria-hidden="true">&laquo;
                        Previous</span></a></li>
                    <%
                        }
                        if (stt == 1) {
                    %>
                    <li class="disabled"><a aria-label="Previous"><span aria-hidden="true">&laquo;
                        Previous</span></a></li>
                    <%
                        }
                    %>
                    <c:forEach var="i" begin="1" end="<%=productDao.getMaxPage()%>">
                        <%
                            Integer test = (Integer) pageContext.getAttribute("i");
                            if (stt.equals(test)) {
                        %>
                        <li class="active"><a href="#">${i}<span class="sr-only">(current)</span></a></li>
                        <%
                        } else {
                        %>
                        <li><a href="gallery.jsp?page=${i}&type=mostbuy">${i}</a></li>
                        <%
                            }
                        %>
                    </c:forEach>
                    <%
                        if (stt >= 1 && stt < productDao.getMaxPage()) {
                    %>
                    <li><a href="gallery.jsp?page=<%=stt+1%>&type=mostbuy" aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a>
                    </li>
                    <%
                        }
                        if (stt == productDao.getMaxPage()) {
                    %>
                    <li class="disabled"><a aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a></li>
                    <%
                        }
                    } else if (type.equals("newest")) {
                        Integer stt = Integer.parseInt(request.getParameter("page"));
                        if (stt > 1 && stt <= productDao.getMaxPage()) {
                    %>
                    <li><a href="gallery.jsp?page=<%=stt-1%>&type=newest" aria-label="Previous"><span
                            aria-hidden="true">&laquo;
                        Previous</span></a></li>
                    <%
                        }
                        if (stt == 1) {
                    %>
                    <li class="disabled"><a aria-label="Previous"><span aria-hidden="true">&laquo;
                        Previous</span></a></li>
                    <%
                        }
                    %>
                    <c:forEach var="i" begin="1" end="<%=productDao.getMaxPage()%>">
                        <%
                            Integer test = (Integer) pageContext.getAttribute("i");
                            if (stt.equals(test)) {
                        %>
                        <li class="active"><a href="#">${i}<span class="sr-only">(current)</span></a></li>
                        <%
                        } else {
                        %>
                        <li><a href="gallery.jsp?page=${i}&type=newest">${i}</a></li>
                        <%
                            }
                        %>
                    </c:forEach>
                    <%
                        if (stt >= 1 && stt < productDao.getMaxPage()) {
                    %>
                    <li><a href="gallery.jsp?page=<%=stt+1%>&type=newest" aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a>
                    </li>
                    <%
                        }
                        if (stt == productDao.getMaxPage()) {
                    %>
                    <li class="disabled"><a aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a></li>
                    <%
                        }
                    } else if (type.equals("mostview")) {
                        Integer stt = Integer.parseInt(request.getParameter("page"));
                        if (stt > 1 && stt <= productDao.getMaxPage()) {
                    %>
                    <li><a href="gallery.jsp?page=<%=stt-1%>&type=mostview" aria-label="Previous"><span
                            aria-hidden="true">&laquo;
                        Previous</span></a></li>
                    <%
                        }
                        if (stt == 1) {
                    %>
                    <li class="disabled"><a aria-label="Previous"><span aria-hidden="true">&laquo;
                        Previous</span></a></li>
                    <%
                        }
                    %>
                    <c:forEach var="i" begin="1" end="<%=productDao.getMaxPage()%>">
                        <%
                            Integer test = (Integer) pageContext.getAttribute("i");
                            if (stt.equals(test)) {
                        %>
                        <li class="active"><a href="#">${i}<span class="sr-only">(current)</span></a></li>
                        </li>
                        <%
                        } else {
                        %>
                        <li><a href="gallery.jsp?page=${i}&type=mostview">${i}</a></li>
                        <%
                            }
                        %>
                    </c:forEach>
                    <%
                        if (stt >= 1 && stt < productDao.getMaxPage()) {
                    %>
                    <li><a href="gallery.jsp?page=<%=stt+1%>&type=mostview" aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a>
                    </li>
                    <%
                        }
                        if (stt == productDao.getMaxPage()) {
                    %>
                    <li class="disabled"><a aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a></li>
                    <%
                        }
                    %>
                </ul>
            </nav>
            <div class="product-one">
                <c:forEach var="i" items="<%=products%>">
                <%
                    count++;
                %>
                <div class="col-md-3 product-left">
                    <div class="product-main simpleCart_shelfItem">
                        <c:if test="${i.status == 1}">
                            <a href="/pages/single.jsp?iditem=${i.iditem}" class="mask"><img
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
                            <c:choose>
                                <c:when test="${i.status == 1}">
                                    <c:if test="${i.quantity == 0}">
                                        <p>Out of Stock</p>
                                        <h4><a><i></i></a> <span
                                                class=" item_price">$${i.price}</span>
                                        </h4>
                                    </c:if>
                                    <c:if test="${i.quantity > 0}">
                                        <p>Availability</p>
                                        <h4><a class="item_add" onclick="window.alert('Add to cart suscessfully!')"><i></i></a> <span
                                                class=" item_price">$${i.price}</span>
                                        </h4>
                                    </c:if>
                                </c:when>
                                <c:when test="${i.status == 0}">
                                    <p>Unavailability</p>
                                    <h4><a><i></i></a> <span
                                            class=" item_price">$${i.price}</span>
                                    </h4>
                                </c:when>
                                <c:otherwise></c:otherwise>
                            </c:choose>
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
            </div>
        </div>
    </div>
</div>