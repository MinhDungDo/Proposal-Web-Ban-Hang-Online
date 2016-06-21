package Account.com;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMailServlet {
    public static void main(String name, String uuid) {

        final String username = "nguyenvuhoait0212@gmail.com";
        final String password = "Vuhoa0212";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session mailsession = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(mailsession);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("1359009@itec.hcmus.edu.vn"));
            message.setSubject("Activation Account LUXURY WATCHES.");
            message.setText("http://localhost:8080/pages/active.jsp?username=" + name + "&uuid=" + uuid);

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
