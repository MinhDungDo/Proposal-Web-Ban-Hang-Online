public List<Product> getProductBackup() {
        List<Product> list = new ArrayList<Product>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product_backup");

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
                String datedel = rs.getString("DateDel");

                Product product = new Product(nameitem, iditem, idcat, price, quantity, date, view, url, url2, url3, info, movement, water, _case, strap, material, type, gender, warranty, country, status, datedel);
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

    public static boolean deleteProductBackup(String iditem) {

        boolean rs = true;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("DELETE FROM product_backup WHERE idItem = ?");
            pstmt.setString(1, iditem);
            int count = pstmt.executeUpdate();

            if (count == 1) {
                rs = true;
            } else {
                rs = false;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }

        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return rs;
    }

    public static boolean recoverProductBackup(String iditem) {
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("INSERT INTO product SELECT nameItem, idItem, idCat, Price, Quantity, Date, View, URL, URL2, URL3, Info, Movement, Water, _Case, Strap, Material, Type, Gender, Warranty, Country, Status FROM product_backup WHERE idItem = ?");
            pstmt.setString((Integer) 1, iditem);

            int count = pstmt.executeUpdate();

            pstmt.close();
            conn.close();

            if (count == 1) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }