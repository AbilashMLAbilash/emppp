<%-- 
    Document   : employeeStatusActive
    Created on : 28 Mar, 2023, 11:09:01 PM
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
            PreparedStatement ps=con.prepareStatement("update user set status='Active' where username=?");
            ps.setString(1, username);
            ps.executeUpdate();
            response.sendRedirect("blockedUsers.jsp");
        }
        catch(Exception e)
        {
            response.sendRedirect("blockedUsers.jsp");
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
