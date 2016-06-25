package Comment.com;

public class Comment {
    private Integer iditem;
    private String username;
    private String email;
    private String phone;
    private String comment;
    private String date;

    public Integer getIditem() {
        return iditem;
    }

    public void setIditem(Integer iditem) {
        this.iditem = iditem;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Comment() {
    }

    public Comment(Integer iditem, String username, String email, String phone, String comment, String date) {
        this.iditem = iditem;
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.comment = comment;
        this.date = date;
    }
}
