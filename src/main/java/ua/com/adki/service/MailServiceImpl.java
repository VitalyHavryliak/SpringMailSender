package ua.com.adki.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import ua.com.adki.entity.User;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class MailServiceImpl implements MailService{

    @Autowired
    private JavaMailSender javaMailSender;
    public void sendEmail(User user) {

        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);

        try{
            helper.setTo(user.getEmail());
            helper.setText("<h3>Hello, it's test message from vitaly.havryliak@gmail.com<br>Project of 7-8 lab is work done.</h3>", true);
            helper.setFrom("vitaly.havryliak@gmail.com");
        }catch (MessagingException e){
            e.printStackTrace();
        }
        javaMailSender.send(mimeMessage);
    }
}
