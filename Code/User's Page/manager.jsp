<div class="container">
    <div class="prdt-top">
        <div class="col-md-9 prdt-left">
            <div class="product-one">
                <form action="/UpdateServlet" method="post">
                    <div class="col-md-4 product-left p-left">
                        <label>Username</label>
                        <input class="form-control" type="text" name="name" id="name"
                               value="<%=account.getUsername()%>" size="22"
                               readonly="readonly">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>Firstname</label>
                        <input class="form-control" type="text" name="firstname" id="firstname"
                               value="<%=account.getFirstname()%>" size="22"
                               readonly="readonly">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>Lastname</label>
                        <input class="form-control" type="text" name="lastname" id="lastname"
                               value="<%=account.getLastname()%>" size="22"
                               readonly="readonly">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>Email</label>
                        <input class="form-control" type="text" name="email" id="email"
                               value="<%=account.getEmail()%>" size="22"
                               readonly="readonly">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>Phone</label>
                        <input class="form-control" type="text" name="phone" id="phone"
                               value="<%=account.getPhone()%>" size="22">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>Gender</label>
                        <input class="form-control" type="text" name="gender" id="gender"
                               value="<%=account.getGender()%>" size="22"
                               readonly="readonly">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-4 product-left p-left">
                        <label>Current Password</label>
                        <input class="form-control" type="password" name="currpass" id="currpass"
                               size="22"
                               required="">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>New Password</label>
                        <input class="form-control" type="password" name="newpass" id="newpass"
                               size="22">
                        <hr>
                    </div>
                    <div class="col-md-4 product-left p-left">
                        <label>Re-new Password</label>
                        <input class="form-control" type="password" name="renewpass" id="renewpass"
                               size="22">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <div class="col-md-4 product-left p-left">
                        <input class="btn btn-success" name="update" type="submit" value="Update">
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
        <div class="col-md-3 product-left p-left">
            <div class="w_sidebar" style="border: none">
                <label>Registered Date</label>
                <input class="form-control" type="text" name="date" id="date"
                       value="<%=account.getDate()%>" size="22"
                       readonly="readonly">
                <hr>
                <label>Last Access</label>
                <input class="form-control" type="text" name="lastaccess" id="lastaccess"
                       value="<%=account.getLastaccess()%>" size="22"
                       readonly="readonly">
                <hr>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>