<%-- 
    Document   : report
    Created on : 21/03/2016, 01:38:20 PM
    
--%>


<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-16"%>
<%@page import="net.sf.jasperreports.engine.export.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page import=" net.sf.jasperreports.view.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=UTF-16">
        <title>JSP Page</title>
    </head>
    <body>
      <%
    Connection conn=null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","n0m3l0");
        out.print("conexion CTM! xD");
    }
    catch (Exception ex)
    {
        ex.printStackTrace();
    }
 String id= request.getParameter("id2");
  File reportFile = new File(application.getRealPath("report1.jasper"));

 Map   <String, Object>  parameters = new HashMap();

    byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (),parameters,conn);

    response.setContentType("application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream ouputStream = response.getOutputStream();
    ouputStream.write(bytes, 0, bytes.length);
    ouputStream.flush();
    ouputStream.close();
%>
    </body>
</html>
