package com.spring.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Controller
public class MailController {

    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String siteEmail;

    @PostMapping("/sendMessage")
    public String sendMessage(@RequestParam String name,
                              @RequestParam String email,
                              @RequestParam String message,
                              RedirectAttributes redirectAttributes) {
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mail, "UTF-8");

            helper.setFrom(siteEmail);      // Gmail only allows your own address as sender
            helper.setTo(siteEmail);        // you receive it
            helper.setReplyTo(email);       // hitting Reply goes to the visitor
            helper.setSubject("New Contact Form Submission from " + name);
            helper.setText("Name: " + name + "\nEmail: " + email + "\n\nMessage:\n" + message);

            mailSender.send(mail);
            redirectAttributes.addFlashAttribute("msg", "Message sent successfully!");

        } catch (MessagingException | MailException e) {
            e.printStackTrace();   // check the STS console for the real reason
            redirectAttributes.addFlashAttribute("msg", "Failed to send message. Please try again later.");
        }
        return "redirect:/contact";
    }
}