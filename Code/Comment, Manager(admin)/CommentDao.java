package Comment.com;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommentDao {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver could not be loaded: " + e);
        }
    }

    public CommentDao() {
    }

    public boolean setContent(Comment comment) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database + "?characterEncoding=utf8";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("INSERT INTO comment(idItem, Username, Email, Phone, Content) VALUE (?,?,?,?,?)");
            pstmt.setInt((Integer) 1, comment.getIditem());
            pstmt.setString((Integer) 2, comment.getUsername());
            pstmt.setString((Integer) 3, comment.getEmail());
            pstmt.setString((Integer) 4, comment.getPhone());
            pstmt.setString((Integer) 5, comment.getComment());

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

    public List<Comment> getAllById(String iditem) throws SQLException {
        List<Comment> list = new ArrayList<Comment>();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            pstmt = conn.prepareStatement("SELECT * FROM comment WHERE idItem = ?");
            pstmt.setString((Integer) 1, iditem);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Integer idItem = rs.getInt("idItem");
                String username = rs.getString("Username");
                String email = rs.getString("Email");
                String phone = rs.getString("Phone");
                String cmt = rs.getString("Content");
                String date = rs.getString("Date");

                Comment comment = new Comment(idItem, username, email, phone, cmt, date);
                list.add(comment);
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
}
