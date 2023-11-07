<%-- 
    Document   : dummyfilterdates
    Created on : 12 Apr, 2023, 9:41:18 AM
    Author     : ELCOT
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! String leaveType,allowed,totalAllowed,department;%>

<%
    if("Update".equals(request.getParameter("bup"))){
       Connection con=null;
    {
        try
		{
                    
                        Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			
                        String str="update leave_type set allowed=?,total_allowed=?,department=? where leave_type=?";
                        PreparedStatement ps=con.prepareStatement(str);
                        ps.setString(1, allowed );
			ps.setString(2, totalAllowed);
			ps.setString(3, department);
			ps.setString(4, leaveType);
                        ps.executeUpdate();
                        out.print("Updated Successfully");
                        con.close();


			
		}
		catch(Exception e)
		{
			out.print(e);
		}

    
    
        leaveType=request.getParameter("tlt");
        allowed=request.getParameter("tam");
        totalAllowed=request.getParameter("tta");
        department=request.getParameter("td");
       
        
//        out.print(accno);
//        out.print(pass);
//        out.print(role);
//        out.print(name);
        
    } 
    }
    
    
    /*
    if("Insert".equals(request.getParameter("bin"))){
        
         	Connection con=null;
{
    try
		{
                    
            Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			String str="insert into leave_type values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(str);
			ps.setString(1, leaveType);
			ps.setString(2, allowed);
			ps.setString(3, totalAllowed);
			ps.setString(4, department);
                        
			
			ps.executeUpdate();
			con.close();
			out.print("Inserted Successfully");
			
		}
		catch(Exception e)
		{
			out.print(e);
		}

    
    
        leaveType=request.getParameter("tlt");
        allowed=request.getParameter("tam");
        totalAllowed=request.getParameter("tta");
        department=request.getParameter("td");
       
        
        /*out.print(accno);
        out.print(pass);
        out.print(role);
        out.print(name);

        
        }    
    }
    */
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <form>
            <table>
                <tr>
                    <th>Leave Type:<select type="text" name="tlt" value=""/>
                    <option >Select type</option>
                    <option>Sick Leave</option>
                    <option>Casual Leave</option>
                    <option>Loss of Pay</option>
                    </select></th>
                    <th>Allowed/month:<input type="number" name="tam" min="1" max="10" value=""/></th>
                    <th>Total Allowed:<input type="number" name="tta" min="1" max="10" value=""/></th>
                    <th><label for="JobLocation">Department</label>
                    <th>Department:<select type="text" name="td" value=""/>
                    <option >Select type</option>
                    <option>Admin</option>
                    <option>User</option>
                    </select></th>

                    <th><input type="submit" value="Update" name="bup" /></th>
<!--                    <th><input type="submit" value="Insert" name="bin" /></th>-->
                </tr>
            </table>
        </form>
    </body>
</html>
