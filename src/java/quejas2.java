/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.*;
import org.apache.commons.io.*;


public class quejas2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String tipo = request.getParameter("tipo");
        String descripcion = request.getParameter("definicion");
        String correo=request.getParameter("correo");
  
        
        try (PrintWriter out = response.getWriter()) {
            Connection connectionBD = null;
        Statement sql ;
   
        
   

            Class.forName("com.mysql.jdbc.Driver");
            connectionBD = DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","carlos98");
            sql = connectionBD.createStatement();
            int resu=  sql.executeUpdate("insert into quejas (tipo, definicion, correo) values('"+tipo+"','"+descripcion+"','"+correo+"')");
            if(resu==1){
                if(tipo.equals("Queja")){
                
                      final String miCorreo = "wedart148@gmail.com"; //correo del administrador desde que seran enviados los mensajes
    final String miContraseña = "secretajuanito"; //contraseña del correo
 
    String servidorSMTP = "smtp.gmail.com";
   String puertoEnvio = "25";
    String mailReceptor = "wedart148@gmail.com" ;
    String asunto = "Soporte"; 
    String cuerpo = "el administrador "+correo+"  ha presentado la siguiente "+ tipo + "\n"+
                      ""+ descripcion+"" ; //mensaje que sera enviado en el correro
  
               Properties props = new Properties();
        props.put("mail.smtp.user", miCorreo);
        props.put("mail.smtp.host", servidorSMTP);
        props.put("mail.smtp.port", puertoEnvio);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", puertoEnvio);
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");

     
        //SecurityManager security = System.getSecurityManager();

        try {
           // Authenticator auth = new autentificadorSMTP();
            
            
            
            Session session;
       session = Session.getInstance(props, 
               new javax.mail.Authenticator() {
                   
                   
                   
                   
                   @Override
                   protected PasswordAuthentication getPasswordAuthentication()  {
                       
                       
                       
                       return new PasswordAuthentication(miCorreo,miContraseña);
                       
                       
                       
                   }
                   
               });

 

            session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(cuerpo);
            msg.setSubject(asunto);
            msg.setFrom(new InternetAddress(miCorreo));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    mailReceptor));
            Transport.send(msg);
            
        } catch (Exception mex) {
        }
        }
                else{
                      final String miCorreo = "wedart148@hotmail.com"; //correo del administrador desde que seran enviados los mensajes
    final String miContraseña = "Secretajuanito1"; //contraseña del correo
 
    String servidorSMTP = "smtp.live.com";
   String puertoEnvio = "25";
    String mailReceptor = "wedart148@hotmail.com" ;
    String asunto = "Soporte"; 
    String cuerpo = "el administrador "+correo+"  ha presentado la siguiente "+ tipo + "\n"+
                      ""+ descripcion+"" ; //mensaje que sera enviado en el correro
  
               Properties props = new Properties();
        props.put("mail.smtp.user", miCorreo);
        props.put("mail.smtp.host", servidorSMTP);
        props.put("mail.smtp.port", puertoEnvio);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", puertoEnvio);
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");

     
        //SecurityManager security = System.getSecurityManager();

        try {
           // Authenticator auth = new autentificadorSMTP();
            
            
            
            Session session;
       session = Session.getInstance(props, 
               new javax.mail.Authenticator() {
                   
                   
                   
                   
                   @Override
                   protected PasswordAuthentication getPasswordAuthentication()  {
                       
                       
                       
                       return new PasswordAuthentication(miCorreo,miContraseña);
                       
                       
                       
                   }
                   
               });

 

            session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(cuerpo);
            msg.setSubject(asunto);
            msg.setFrom(new InternetAddress(miCorreo));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    mailReceptor));
            Transport.send(msg);
            
        } catch (Exception mex) {
        }
        }
                    
                    
                    
                }
                response.sendRedirect("http://localhost:8080/SYC/faces/quejas2.jsp");
                
                Class.forName("com.mysql.jdbc.Driver");
            connectionBD = DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","carlos98");
            sql = connectionBD.createStatement();
            ResultSet result = sql.executeQuery("select tipo,count(*) from quejas where tipo='"+tipo+"' and correo='"+correo+"' group by tipo;");
            if (result.next()){
                int cont=result.getInt("count(*)");
                if(cont>=3){
                    if(tipo.equals("Queja")){
                      final String miCorreo2 = "wedart148@gmail.com"; //correo del administrador desde que seran enviados los mensajes
    final String miContraseña2 = "secretajuanito"; //contraseña del correo
 
    String servidorSMTP2 = "smtp.gmail.com";
   String puertoEnvio2 = "25";
    String mailReceptor2 = "wedart148@gmail.com" ;
    String asunto2 = "codigo"; 
    String cuerpo2 = "el administrador "+correo+" ya ha presentado mas de "+cont+" quejas dale ban por chillon"; //mensaje que sera enviado en el correro
  
               Properties props2 = new Properties();
        props2.put("mail.smtp.user", miCorreo2);
        props2.put("mail.smtp.host", servidorSMTP2);
        props2.put("mail.smtp.port", puertoEnvio2);
        props2.put("mail.smtp.starttls.enable", "true");
        props2.put("mail.smtp.auth", "true");
        props2.put("mail.smtp.socketFactory.port", puertoEnvio2);
        props2.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props2.put("mail.smtp.socketFactory.fallback", "false");

     
        //SecurityManager security = System.getSecurityManager();

        try {
           // Authenticator auth = new autentificadorSMTP();
            
            
            
            Session session;
       session = Session.getInstance(props2, 
               new javax.mail.Authenticator() {
                   
                   
                   
                   
                   @Override
                   protected PasswordAuthentication getPasswordAuthentication()  {
                       
                       
                       
                       return new PasswordAuthentication(miCorreo2,miContraseña2);
                       
                       
                       
                   }
                   
               });

 

            session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(cuerpo2);
            msg.setSubject(asunto2);
            msg.setFrom(new InternetAddress(miCorreo2));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    mailReceptor2));
            Transport.send(msg);
            
        } catch (Exception mex) {
        }
    
    
    
             
               response.sendRedirect("http://localhost:8080/SYC/faces/quejas2.jsp");
                    }
          
                
                else{
                     final String miCorreo2 = "wedart148@hotmail.com"; //correo del administrador desde que seran enviados los mensajes
    final String miContraseña2 = "Secretajuanito1"; //contraseña del correo
 
  String servidorSMTP2 = "smtp.live.com";
   String puertoEnvio2 = "25";
    String mailReceptor2= "wedart148@hotmail.com" ;
    String asunto2= "Soporte"; 
    String cuerpo2 = "el administrador "+correo+" ya ha presentado mas de "+cont+" recomendaciones dale ban por chillon"; //mensaje que sera enviado en el correro
  
               Properties props2 = new Properties();
        props2.put("mail.smtp.user", miCorreo2);
        props2.put("mail.smtp.host", servidorSMTP2);
        props2.put("mail.smtp.port", puertoEnvio2);
        props2.put("mail.smtp.starttls.enable", "true");
        props2.put("mail.smtp.auth", "true");
        props2.put("mail.smtp.socketFactory.port", puertoEnvio2);
        props2.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props2.put("mail.smtp.socketFactory.fallback", "false");

     
        //SecurityManager security = System.getSecurityManager();

        try {
           // Authenticator auth = new autentificadorSMTP();
            
            
            
            Session session;
       session = Session.getInstance(props2, 
               new javax.mail.Authenticator() {
                   
                   
                   
                   
                   @Override
                   protected PasswordAuthentication getPasswordAuthentication()  {
                       
                       
                       
                       return new PasswordAuthentication(miCorreo2,miContraseña2);
                       
                       
                       
                   }
                   
               });

 

            session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(cuerpo2);
            msg.setSubject(asunto2);
            msg.setFrom(new InternetAddress(miCorreo2));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    mailReceptor2));
            Transport.send(msg);
            
        } catch (Exception mex) {
        }
    
    
    
             
               response.sendRedirect("http://localhost:8080/SYC/faces/quejas2.jsp");
                    }
            }
          
                
                    
             
            else{
                  response.sendRedirect("http://localhost:8080/SYC/faces/quejas2.jsp");
            }
            
        }
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(quejas.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(quejas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(quejas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
