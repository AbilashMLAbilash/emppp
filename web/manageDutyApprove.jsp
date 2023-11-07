<%-- 
    Document   : manageDutyApprove
    Created on : 29 Mar, 2023, 2:47:31 PM
    Author     : ELCOT
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%
        String id=request.getParameter("id");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
            PreparedStatement ps=con.prepareStatement("update duty_request set status='Approved' where id=?");
            ps.setString(1, id);
            ps.executeUpdate();
            response.sendRedirect("manageDuty.jsp");
        }
        catch(Exception e)
        {
            response.sendRedirect("manageDuty.jsp");
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
