package Contactus.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ContactusDao {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver could not be loaded: " + e);
        }
    }

    public ContactusDao() {
    }

    public boolean setContent(Contactus contactus) {

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database + "?characterEncoding=utf8";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("INSERT INTO contactus(Name, Phone, Email, Content) VALUE (?,?,?,?)");
            pstmt.setString((Integer) 1, contactus.getName());
            pstmt.setString((Integer) 2, contactus.getPhone());
            pstmt.setString((Integer) 3, contactus.getEmail());
            pstmt.setString((Integer) 4, contactus.getContent());

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
