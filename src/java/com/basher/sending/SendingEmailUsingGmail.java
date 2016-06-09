/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.sending;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author user
 */
@WebServlet(name = "SendingEmailUsingGmail", urlPatterns = {"/SendingEmailUsingGmail"})
public class SendingEmailUsingGmail extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    static Properties mailServerProperties;
    static javax.mail.Session getMailSession;
    static MimeMessage generateMailMessage;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            generateAndSendEmail();
        } catch (MessagingException ex) {
            Logger.getLogger(SendingEmailUsingGmail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void generateAndSendEmail() throws AddressException, MessagingException {

        // Step1
        System.out.println("\n 1st ===> setup Mail Server Properties..");
        mailServerProperties = System.getProperties();
        mailServerProperties.put("mail.smtp.port", "587");
        mailServerProperties.put("mail.smtp.auth", "true");
        mailServerProperties.put("mail.smtp.starttls.enable", "true");
        mailServerProperties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        System.out.println("Mail Server Properties have been setup successfully..");

        // Step2
        System.out.println("\n\n 2nd ===> get Mail Session..");
        getMailSession = javax.mail.Session.getDefaultInstance(mailServerProperties, null);
        generateMailMessage = new MimeMessage(getMailSession);
        generateMailMessage.setFrom(new InternetAddress("kira.info.noreply@gmail.com"));
        generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("mcorbes.2013@gmail.com"));
        // generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress("mcorbes.2013@gmail.com"));
        generateMailMessage.setSubject("Greetings from Crunchify..");
        String emailBody = "Test email by Crunchify.com JavaMail API example. " + "<br><br> Regards, <br>Crunchify Admin";
        generateMailMessage.setContent(emailBody, "text/html");
        System.out.println("Mail Session has been created successfully..");

        // Step3
        System.out.println("\n\n 3rd ===> Get Session and Send mail");
        Transport transport = getMailSession.getTransport("smtp");

            // Enter your correct gmail UserID and Password
        // if you have 2FA enabled then provide App Specific Password
        transport.connect("smtp.gmail.com", "kira.info.noreply@gmail.com", "m@lv!nc0rb@s");
        transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
        transport.close();

       
    }
}
