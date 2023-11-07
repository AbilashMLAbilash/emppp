<%-- 
    Document   : employeeLeaveMap
    Created on : 27 Apr, 2023, 11:54:10 AM
    Author     : ELCOT
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! String name,emailid,leavetype,startdate,enddate,totaldays,reason,leavestatus;%>
<%
    if("Fetch".equals(request.getParameter("bf"))){
       Connection con=null;
    {
        try
		{
                    
                        Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			
                        PreparedStatement ps=con.prepareStatement("Select * from leave_request where name=? or reason=?");
			ps.setString(1, name);
                        ps.setString(2, reason);
			ResultSet rs=ps.executeQuery();
			while (rs.next())
                        {
			out.print(rs.getString(1)+"     "+rs.getString(2)+"     "+rs.getString(3)+"     "+rs.getString(4));
				}
                        
			con.close();



			
		}
		catch(Exception e)
		{
			out.print(e);
		}

    
    
        
        name=request.getParameter("tname");
        emailid=request.getParameter("taccno");
        leavetype=request.getParameter("tlt");
        startdate=request.getParameter("trole");
        enddate=request.getParameter("tname");
        totaldays=request.getParameter("taccno");
        reason=request.getParameter("tpass");
        leavestatus=request.getParameter("trole");
        
        
        
        
        
        
//        out.print(accno);
//        out.print(pass);
//        out.print(role);
//        out.print(name);
        
    } 
    }
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <table>
                <tr>
                    <th>Name:<input type="text" name="tname" value=""/></th>
                    <th>Leave Type:<select type="text" name="tlt" value=""/>
                    <option >Select type</option>
                    <option>Sick Leave</option>
                    <option>Casual Leave</option>
                    <option>Loss of Pay</option>
                    </select></th>
                    

                    <th><input type="submit" value="Fetch" name="bf" /></th>
<!--                    <th><input type="submit" value="Insert" name="bin" /></th>-->
                </tr>
            </table>
        </form>
    </body>
</html>
