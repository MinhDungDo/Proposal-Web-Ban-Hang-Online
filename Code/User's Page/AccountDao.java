public static Account getName(String Username) {
        Account account = new Account();

        String database = "watch";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement pstmt = null;

        Connection conn;

        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            pstmt = conn.prepareStatement("SELECT * FROM account WHERE Username = ?");
            pstmt.setString(1, Username);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String username = rs.getString("Username");
                String firstname = rs.getString("Firstname");
                String lastname = rs.getString("Lastname");
                String email = rs.getString("Email");
                String phone = rs.getString("Phone");
                String gender = rs.getString("Gender");
                String password = rs.getString("password");
                String repassword = rs.getString("repassword");
                Integer status = rs.getInt("status");
                String date = rs.getString("Date");
                String lastaccess = rs.getString("LastAccess");
                String uuid = rs.getString("UUID");

                account.setUsername(username);
                account.setFirstname(firstname);
                account.setLastname(lastname);
                account.setEmail(email);
                account.setPhone(phone);
                account.setGender(gender);
                account.setPassword(password);
                account.setRepassword(repassword);
                account.setStatus(status);
                account.setDate(date);
                account.setLastaccess(lastaccess);
                account.setUuid(uuid);
            }

            if (conn != null) {
                conn.close();
                conn = null;
            }

        } catch (SQLException sqle) {
            System.out.println("SQL Exception thrown: " + sqle);
        }

        return account;
    }