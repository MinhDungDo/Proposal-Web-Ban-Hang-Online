package Product.com;

import Account.com.MD5Servlet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver could not be loaded: " + e);
        }

    }

    public ProductDao() {
    }

    public static int Active(String iditem) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("UPDATE product SET Status = 1 WHERE idItem = ?");
            pstmt.setString(1, iditem);
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

    public static int Inactive(String iditem) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("UPDATE product SET Status = 0 WHERE idItem = ?");
            pstmt.setString(1, iditem);
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

    public static boolean Delete(String iditem) {

        boolean rs = true;
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("DELETE FROM product WHERE idItem = ?");
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

    public boolean setProduct(Product product) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("INSERT INTO product(nameItem, idItem, idCat, Price, Quantity, URL, URL2, URL3, Info, Movement, Water, _Case, Strap, Material, Type, Gender, Warranty, Country) VALUE (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pstmt.setString((Integer) 1, product.getNameitem());
            pstmt.setInt((Integer) 2, product.getIditem());
            pstmt.setString((Integer) 3, product.getIdcat());
            pstmt.setInt((Integer) 4, product.getPrice());
            pstmt.setInt((Integer) 5, product.getQuantity());
            pstmt.setString((Integer) 6, product.getUrl());
            pstmt.setString((Integer) 7, product.getUrl2());
            pstmt.setString((Integer) 8, product.getUrl3());
            pstmt.setString((Integer) 9, product.getInfo());
            pstmt.setString((Integer) 10, product.getMovement());
            pstmt.setString((Integer) 11, product.getWater());
            pstmt.setString((Integer) 12, product.get_case());
            pstmt.setString((Integer) 13, product.getStrap());
            pstmt.setString((Integer) 14, product.getMaterial());
            pstmt.setString((Integer) 15, product.getType());
            pstmt.setString((Integer) 16, product.getGender());
            pstmt.setString((Integer) 17, product.getWarranty());
            pstmt.setString((Integer) 18, product.getCountry());

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

    public List<Product> getProduct(String keyword) {
        List<Product> list = new ArrayList<Product>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM product WHERE nameItem like ?");
            pstmt.setString((Integer) 1, keyword);

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

    public static int Update(String password, String namepro, String sku, String price, String quan, String country, String water, String info, String _case, String strap, String material, String type, String gender, String warr, String move, String date, String url, String url2, String url3, String iditem){
        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database + "?characterEncoding=utf8";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;
        PreparedStatement pstmt2 = null;

        Connection conn;

        try {
            password = MD5Servlet.md5(password);
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("SELECT * FROM account WHERE Username = 'admin' AND Password = ?");
            pstmt.setString(1, password);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                    pstmt2 = conn.prepareStatement("UPDATE product SET nameItem = ?, idCat = ?, Price = ?, Quantity = ?, URL = ?, URL2 = ?, URL3 = ?, Info = ?, Movement = ?, Water = ?, _Case = ?, Strap = ?, Material = ?, Type = ?, Gender = ?, Warranty = ?, Country = ? WHERE idItem = ?");
                    pstmt2.setString(1, namepro);
                    pstmt2.setString(2, sku);
                    pstmt2.setString(3, price);
                    pstmt2.setString(4, quan);
                    pstmt2.setString(5, url);
                    pstmt2.setString(6, url2);
                    pstmt2.setString(7, url3);
                    pstmt2.setString(8, info);
                    pstmt2.setString(9, move);
                    pstmt2.setString(10, water);
                    pstmt2.setString(11, _case);
                    pstmt2.setString(12, strap);
                    pstmt2.setString(13, material);
                    pstmt2.setString(14, type);
                    pstmt2.setString(15, gender);
                    pstmt2.setString(16, warr);
                    pstmt2.setString(17, country);
                    pstmt2.setString(18, iditem);
                    pstmt2.executeUpdate();
                return 1;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }

        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }
        return -1;
    }
}
