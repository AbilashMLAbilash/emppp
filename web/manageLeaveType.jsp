<%-- 
    Document   : manageLeaveType
    Created on : 9 May, 2023, 9:51:40 AM
    Author     : ELCOT
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String sick_leave=request.getParameter("tsl");
        String casual_leave=request.getParameter("tcl");
        String festival_leave=request.getParameter("tfl");
//        String Vacation_leave=request.getParameter("tvl");
//        String loss_of_pay=request.getParameter("tlp");
        String birthday_leave=request.getParameter("tbl");
        
if("Set".equals(request.getParameter("Set"))){
       Connection con=null;
    {
        try
		{

                        Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			
                        String str="update leave_type set sick_leave=?,casual_leave=?,festival_leave=?,birthday_leave=?";
                  //String str="create table leave_type(sick_leave varchar(10), casual_leave varchar(10),Festival varchar(10),Vacation_leave varchar(10),loss_of_pay varchar(10),Birthday_leave varchar(10))";

                        PreparedStatement ps=con.prepareStatement(str);
                        ps.setString(1, sick_leave);
                        ps.setString(2, casual_leave);
                        ps.setString(3, festival_leave);
                        ps.setString(4, birthday_leave);
//ps.setString(4, Vacation_leave);
//ps.setString(5, loss_of_pay);

                        ps.executeUpdate();
                        out.print("Updated Successfully");
                        con.close();


			
		}
		catch(Exception e)
		{
			out.print(e);
		}



        




    } 
    }

%>

<html>
    <style>
            .topnav {
                font-family: 'Varela Round', sans-serif;
		font-size: 13px;
                background-color: #4070f4;
                overflow: hidden;
            }

/* Style the links inside the navigation bar */
            .topnav a {
              float: right;
              color: #f2f2f2;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
              font-size: 17px;
            }

/* Change the color of links on hover */
            .topnav a:hover {
              background-color: #ddd;
              color: black;
            }

/* Add a color to the active/current link */
            .topnav a.active {
              background-color: #88a6f8;
              color: white;
            }
         
        .container{
            font-family: 'Varela Round', sans-serif;
		font-size: 13px;
            max-width: 700px;
            padding: 28px;
            margin: 0 28px;
            margin-top: 35px;
            margin-left: 300px;
            background: white;
            box-shadow: 0 15px 20px #ABB2B9;
            border-radius: 5px;
        }
        h2{
            font-size: 26px;
            font-weight: 600;
            text-align: left;
            color: #2f4f4f;
            padding-bottom: 8px;
            border-bottom: 1px solid silver;
        }
        .content{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px 0;
        }
        .input-box{
            display: flex;
            flex-wrap: wrap;
            width: 45%;
            padding-bottom: 15px;
        }
        .input-box:nth-child(2n){
            justify-content: end;
        }
        .input-box label{
            width: 95%;
            color: #2f4f4f;
            font-weight: bold;
            margin: 5px 0;
        }
        .input-box input{
            height: 40px;
            width: 95%;
            padding: 0 10px;
            border-radius: 5px;
            border: 1px solid#ccc;
            outline: none;
        }
        .input-box input:is(:focus, :valid){
            box-shadow:0 3px 6x rgba(0,0,0,0.2)
        }
        .button-container{
            margin: 15px 0;
        }
        .button-container button{
            width: 100%;
            margin-top: 10px;
            padding: 10px;
            display: block;
            font-size: 20px;
            color: #fff;
            border: none;
            border-radius: 5px;
            background: linear-gradient(to right,#09A6F3,#0A85ED);
            
        }
        .button-container button:hover{
            background: linear-gradient(to right,#0A85ED,#09A6F3);
        }
           
        
        
        @media(max-width:600px){
            .container{
                min-width: 280px;
            }
            .content{
                max-height: 380px;
                overflow: auto;
            }
            .input-box{
                margin-bottom: 12px;
                width: 100%;
            }
            .input-box:nth-child(2n){
                justify-content: space-between;
            }
            </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="topnav">
            <a href="signin.jsp">Logout</a>
            <a href="#udateemployee">Update Employee</a>
            <a href="signup.jsp">Add Employee</a>
            <a href="#manageduty">Manage Duty</a>
            <a href="#manageleave">Manage Leave</a>
            
            <a class="active" href="leaveType.jsp">Leave Type</a>
            <a href="hm.jsp">Home</a>
        </div>
        
        
        
        
        <div class="container">
            <form action="" method="post">
                <h2>Leave Type</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Sick Leave</label>
                        
                        <input type="number" id="quantity" name="tsl" min="1" max="5" value="sick_leave">
                    </div>
                    <div class="input-box">
                        <label for="name">Casual Leave</label>
                        
                        <input type="number" id="quantity" name="tcl" min="1" max="5" value="casual_leave">
                    </div>
                    <div class="input-box">
                        <label for="name">Festival Leave</label>
                        
                        
                        <input type="number" id="quantity" name="tfl" min="fl" max="5" value="Festival">
                    </div>
                    <div class="input-box">
                        <label for="name">Vacation Leave</label>
                        <input type="number" id="quantity" name="tvl" min="1" max="5" value="Vacation_leave">
                        
                    </div>
                    <div class="input-box">
                        <label for="name">Loss Of Pay</label>
                        
                        <input type="number" id="quantity" name="tlp" min="1" max="5" value="loss_of_pay">
                    </div>
                    <div class="input-box">
                        <label for="name">Birthday Leave</label>
                        
                        <input type="number" id="quantity" name="tbl" min="1" max="5" value="Birthday_leave">
                    </div>
                    
                    
                    
                </div>
                <div class="button-container">
                    
                    <button type="submit" name="Set" value="Set">Set</button>
                </div>
                
            </form>
        </div>
        
        
    </body>
        
        
        
</html>

