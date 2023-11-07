<%-- 
    Document   : updateEmployeeAction
    Created on : 22 Mar, 2023, 12:17:04 PM
    Author     : ELCOT
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username=request.getParameter("username");
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String phonenumber=request.getParameter("phonenumber");
    String qualification=request.getParameter("qualification");
    String role=request.getParameter("role");
    String jobrole=request.getParameter("jobrole");
    String joineddate=request.getParameter("joineddate");
    String address=request.getParameter("address");
    String gender=request.getParameter("gender");
    String dob=request.getParameter("dob");
    String password=request.getParameter("password");
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
     PreparedStatement ps=con.prepareStatement("update user set name =?,emailid =?,phoneno =?,Qualification =?,role =?,jobrole =?,doj =?,address =?,gender =?,dob=?, password=? where username=?");
     ps.setString(12, username);
     ps.setString(1, name);
     ps.setString(2, email); 
     ps.setString(3, phonenumber);
     ps.setString(4, qualification);
     ps.setString(5, role);
     ps.setString(6, jobrole);
     ps.setString(7, joineddate);
     ps.setString(8, address);
     ps.setString(9, gender);
     ps.setString(10, dob);
     ps.setString(11, password);
     
     ps.executeUpdate();
     response.sendRedirect("listUsers.jsp?msg-valid");
    }
    catch(Exception e)
    {
       response.sendRedirect("listUsers.jsp?msg-invalid"); 
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
