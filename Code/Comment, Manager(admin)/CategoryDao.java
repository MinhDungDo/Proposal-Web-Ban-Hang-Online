package Category.com;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver could not be loaded: " + e);
        }

    }

    public CategoryDao() {
    }

    public static int Active(String idcat) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("UPDATE category SET Status = 1 WHERE idCat = ?");
            pstmt.setString(1, idcat);
            int count = pstmt.executeUpdate();


            pstmt.close();
            conn.close();

            if (count == 1) {
                return 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1;
    }

    public static int Inactive(String idcat) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("UPDATE category SET Status = 0 WHERE idCat = ?");
            pstmt.setString(1, idcat);
            int count = pstmt.executeUpdate();


            pstmt.close();
            conn.close();

            if (count == 1) {
                return 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1;
    }

    public static boolean Delete(String idcat) {

        boolean rs = true;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("DELETE FROM category WHERE idCat = ?");
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

    public List<Category> getAll() {
        List<Category> list = new ArrayList<Category>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM category");

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String namecat = rs.getString("nameCat");
                String idcat = rs.getString("idCat");
                Integer status = rs.getInt("Status");

                Category category = new Category(namecat, idcat, status);
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

    public boolean setCategory(Category category) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("INSERT INTO category(nameCat, idCat) VALUE (?,?)");
            pstmt.setString((Integer) 1, category.getNamecat());
            pstmt.setString((Integer) 2, category.getIdcat());

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
}
