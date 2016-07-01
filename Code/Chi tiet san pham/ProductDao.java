public List<Product> getNewestPaging() throws SQLException {
        List<Product> list = new ArrayList<Product>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY Date DESC LIMIT 4 OFFSET 0");

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }

    public List<Product> getMostView() throws SQLException {
        List<Product> list = new ArrayList<Product>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY View DESC LIMIT 4 OFFSET 0");

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }

    public List<Product> getMostBuy() throws SQLException {
        List<Product> list = new ArrayList<Product>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY Quantity DESC LIMIT 4 OFFSET 0");

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }

    public Product getByID(int Iditem) {
        Product product = new Product();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product WHERE idItem = ?");
            pstmt.setInt(1, Iditem);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                product.setNameitem(nameitem);
                product.setIditem(iditem);
                product.setIdcat(idcat);
                product.setPrice(price);
                product.setQuantity(quantity);
                product.setDate(date);
                product.setView(view);
                product.setUrl(url);
                product.setUrl2(url2);
                product.setUrl3(url3);
                product.setInfo(info);
                product.setMovement(movement);
                product.setWater(water);
                product.set_case(_case);
                product.setStrap(strap);
                product.setMaterial(material);
                product.setType(type);
                product.setGender(gender);
                product.setWarranty(warranty);
                product.setCountry(country);
                product.setStatus(status);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }

        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return product;
    }
 public List<Product> getAllPaging(int page, int rowPerPage) throws SQLException {
        List<Product> list = new ArrayList<Product>();

        int curpage = (page - 1) * rowPerPage;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product LIMIT ? OFFSET ?");
            pstmt.setInt((Integer) 1, rowPerPage);
            pstmt.setInt((Integer) 2, curpage);


            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }

    public List<Product> getNewestPagingAll(int page, int rowPerPage) throws SQLException {
        List<Product> list = new ArrayList<Product>();

        int curpage = (page - 1) * rowPerPage;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY Date DESC LIMIT ? OFFSET ?");
            pstmt.setInt((Integer) 1, rowPerPage);
            pstmt.setInt((Integer) 2, curpage);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }

    public List<Product> getMostViewAll(int page, int rowPerPage) throws SQLException {
        List<Product> list = new ArrayList<Product>();

        int curpage = (page - 1) * rowPerPage;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY View DESC LIMIT ? OFFSET ?");
            pstmt.setInt((Integer) 1, rowPerPage);
            pstmt.setInt((Integer) 2, curpage);


            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }

    public List<Product> getMostBuyAll(int page, int rowPerPage) throws SQLException {
        List<Product> list = new ArrayList<Product>();

        int curpage = (page - 1) * rowPerPage;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY Quantity DESC LIMIT ? OFFSET ?");
            pstmt.setInt((Integer) 1, rowPerPage);
            pstmt.setInt((Integer) 2, curpage);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String nameitem = rs.getString("nameItem");
                Integer iditem = rs.getInt("idItem");
                String idcat = rs.getString("idCat");
                int price = rs.getInt("Price");
                int quantity = rs.getInt("Quantity");
                Date date = rs.getDate("Date");
                int view = rs.getInt("View");
                String url = rs.getString("URL");
                String url2 = rs.getString("URL2");
                String url3 = rs.getString("URL3");
                String info = rs.getString("Info");
                String movement = rs.getString("Movement");
                String water = rs.getString("Water");
                String _case = rs.getString("_Case");
                String strap = rs.getString("Strap");
                String material = rs.getString("Material");
                String type = rs.getString("Type");
                String gender = rs.getString("Gender");
                String warranty = rs.getString("Warranty");
                String country = rs.getString("Country");
                int status = rs.getInt("Status");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status);
                list.add(product);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return list;
    }