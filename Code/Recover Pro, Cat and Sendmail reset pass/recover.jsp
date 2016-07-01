div class="prdt">
  <%

    List<Category> categoryList = new ArrayList<>();
    List<Product> products = new ArrayList<>();

    categoryList = categoryDao.getCategoryBackup();
    products = productDao.getProductBackup();
  %>
  <div class="container">
    <div class="prdt-top">
      <h4>Category Deleted</h4>

      <div class="col-md-9 prdt-left">
        <div class="product-one">
          <div class="col-md-4 product-left p-left">
            <label>SKU</label>
          </div>
          <div class="col-md-4 product-left p-left">
            <label>Manufactor</label>
          </div>
          <div class="col-md-4 product-left p-left">
            <label>Deleted Date</label>
          </div>
          <div class="clearfix"></div>
          <hr>
          <c:forEach var="i" items="<%=categoryList%>" begin="0">
            <form action="/UpdateCatServlet" method="post">
              <div class="col-md-4 product-left p-left">
                <input class="form-control" type="text" name="idcat" id="idcat" value="${i.idcat}"
                       size="22"
                       readonly="">
              </div>
              <div class="col-md-4 product-left p-left">
                <input class="form-control" type="text" name="namecat" id="namecat" value="${i.namecat}"
                       size="22"
                       disabled="">
              </div>
              <div class="col-md-4 product-left p-left">
                <input class="form-control" type="text" name="namecat" id="namecat" value="${i.datedel}"
                       size="22"
                       disabled="">
              </div>
              <div class="clearfix"></div>
              <br>

          </c:forEach>
        </div>
      </div>
      <div class="col-md-3 product-left p-left">
        <label>Action</label>
        <hr>
        <div class="w_sidebar" style="border: none">
          <c:forEach var="i" items="<%=categoryList%>" begin="0">
          <c:if test="${i.status == 0}">
            <input class="btn btn-success" name='recover' type='submit' value='Recover'
                   STYLE="color: red">
            <input class="btn btn-success" name='deletere' type='submit' value='Delete'
                   onclick="return confirm('Are u sure?')">
          </c:if>
          <c:if test="${i.status == 1}">
            <input class="btn btn-success" name='recover' type='submit' value='Recover'>
            <input class="btn btn-success" name='deletere' type='submit' value='Delete'
                   onclick="return confirm('Are u sure?')">
          </c:if>
          </c:forEach>
        </div>
        </form>
      </div>
      <div class="clearfix"></div>
    </div>
    <hr>
    <div class="prdt-top">
      <h4>Product Deleted</h4>

      <div class="col-md-9 prdt-left">
        <div class="product-one">
          <div class="col-md-4 product-left p-left">
            <label>Name</label>
          </div>
          <div class="col-md-4 product-left p-left">
            <label>Uploaded Date</label>
          </div>
          <div class="col-md-4 product-left p-left">
            <label>Deleted Date</label>
          </div>
          <div class="clearfix"></div>
          <hr>
          <c:forEach var="i" items="<%=products%>" begin="0">
            <form action="/UpdateProServlet" method="post">
              <input hidden="" id="idpro" name="idpro" value="${i.iditem}">

              <div class="col-md-4 product-left p-left">
                <input class="form-control" type="text" name="namepro" id="namepro"
                       value="${i.nameitem}"
                       size="22"
                       readonly="">
              </div>
              <div class="col-md-4 product-left p-left">
                <input class="form-control" type="text" name="date" id="date" value="${i.date}"
                       size="22"
                       disabled="">
              </div>
              <div class="col-md-4 product-left p-left">
                <input class="form-control" type="text" name="date" id="date" value="${i.datedel}"
                       size="22"
                       disabled="">
              </div>
              <div class="clearfix"></div>
              <br>

          </c:forEach>
        </div>
      </div>
      <div class="col-md-3 product-left p-left">
        <label>Number of Product(s)</label>
        <hr>
        <div class="w_sidebar" style="border: none">
          <c:forEach var="i" items="<%=products%>" begin="0">
          <c:if test="${i.status == 0}">
            <input class="btn btn-success" name='recover' type='submit' value='Recover'
                   STYLE="color: red">
            <input class="btn btn-success" name='delete' type='submit' value='Delete'
                   onclick="return confirm('Are u sure?')">
          </c:if>
          <c:if test="${i.status == 1}">
            <input class="btn btn-success" name='recover' type='submit' value='Recover'>
            <input class="btn btn-success" name='delete' type='submit' value='Delete'
                   onclick="return confirm('Are u sure?')">
          </c:if>
          </c:forEach>
        </div>
        </form>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>