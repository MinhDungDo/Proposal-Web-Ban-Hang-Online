public List<Category> getCategoryBackup() {
        List<Category> list = new ArrayList<Category>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM category_backup");

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String namecat = rs.getString("nameCat");
                String idcat = rs.getString("idCat");
                Integer status = rs.getInt("Status");
                String datedel = rs.getString("DateDel");

                Category category = new Category(namecat, idcat, status, datedel);
                list.add(category);
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

    public static boolean deleteCategoryBackup(String idcat) {

        boolean rs = true;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("DELETE FROM category_backup WHERE idCat = ?");
            pstmt.setString(1, idcat);
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

    public static boolean recoverCategoryBackup(String idcat) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("INSERT INTO category SELECT nameCat, idCat, Status FROM category_backup WHERE idCat = ?");
            pstmt.setString((Integer) 1, idcat);

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