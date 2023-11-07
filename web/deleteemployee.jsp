<%-- 
    Document   : deleteemployee
    Created on : 22 Mar, 2023, 9:19:14 PM
    Author     : ELCOT
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
         String username=request.getParameter("username");
     try
     {
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
     Statement st=con.createStatement();
     st.executeUpdate("delete from user where username='"+username+"'");
     response.sendRedirect("listUsers.jsp?msg=deleted");
     }
     catch(Exception e)
     {
      response.sendRedirect("listUsers.jsp?msg=invalid");   
     }    

     %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
