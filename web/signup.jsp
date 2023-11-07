<%-- 
    Document   : leaveType
    Created on : 28 Mar, 2023, 2:38:09 PM
    Author     : ELCOT
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! pkg.User obj=new pkg.User();%>
<%! pkg.UserDAO m=new pkg.UserDAO();%>


<html>
    <style>
         ul {
         font-family: 'Varela Round', sans-serif;
         list-style-type: none;
         margin: 0;
         padding: 0;
         overflow: hidden;
         background-color: #4070f4;
         max-width: 235vh;
       }

       li {
         float: right;
         font-family: 'Varela Round', sans-serif;
         font-size: 17px;
       }

       li a, .dropbtn {

         display: inline-block;
         color: white;
         text-align: center;
         padding: 14px 16px;
         text-decoration: none;
       }

       li a:hover, .dropdown:hover .dropbtn {
         background-color: #ddd;
       }

       li.dropdown {
         display: inline-block;
       }

       .dropdown-content {
         display: none;
         position: absolute;
         background-color: #f9f9f9;
         min-width: 160px;
         box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
         z-index: 1;
       }

       .dropdown-content a {
         color: black;
         padding: 12px 16px;
         text-decoration: none;
         display: block;
         text-align: left;
       }

       .dropdown-content a:hover {background-color: #f1f1f1;}

       .dropdown:hover .dropdown-content {
         display: block;
       } 
       body{
           margin-top: 0px;
           margin-left: 0px;
           background-image: url('bg1.PNG');
           background-repeat: no-repeat;
           background-attachment: fixed;
           background-size: 100% 100%;
           
       }
       .container{
            font-family: 'Varela Round', sans-serif;
		font-size: 13px;
            max-width: 700px;
            padding: 28px;
            margin: 0 28px;
            margin-top: 25px;
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
        <ul>
    
    <li><a href="signin.jsp">Logout</a></li>
    <li class="dropdown">
      <a href="#" class="dropbtn">Duty</a>
      <div class="dropdown-content">
        <a href="manageDuty.jsp">Duty Applications</a>
        <a href="approvedDuty.jsp">Approved Duty</a>
        <a href="canceledDuty.jsp">Rejected Duty</a>
      </div>
    </li>
  <li class="dropdown">
    <a href="#" class="dropbtn">Leave</a>
    <div class="dropdown-content">
<!--      <a href="leaveType.jsp"> Leave Type</a>-->
      <a href="manageLeave.jsp">Leave Applications</a>
      <a href="approvedLeaves.jsp">Approved Leave</a>
      <a href="canceledLeaves.jsp">Rejected Leave</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="#" class="dropbtn">Users</a>
    <div class="dropdown-content">
      <a href="listUsers.jsp">List Users</a>
      <a href="signup.jsp">Add Users</a>
<!--      <a href="blockedUsers.jsp">Blocked Users</a>-->
    </div>
  </li>
  
  <li><a href="hm.jsp">Home</a></li>
</ul>
        
        
        
        
        <div class="container">
    
            <form align="center" action="" method="post">
                <%
    if("Register".equals(request.getParameter("bsubmit"))) 
   {
       String id=request.getParameter("tId");
       String name=request.getParameter("tName");
       String email=request.getParameter("tEmail");
       String phone=request.getParameter("tPhone");
       String qualificaion=request.getParameter("tQualification");
       String role=request.getParameter("tRole");
       String jobrole=request.getParameter("tJobRole");
       String doj=request.getParameter("tDoj");
       String address=request.getParameter("tAddress");
       String gender=request.getParameter("tGender");
       String dob=request.getParameter("tDob");
       String pass=request.getParameter("tPass");
       String status="Active";
       //String cpass=request.getParameter("tCpass");
       
       
       obj.setUserId(id);
       obj.setName(name);
       obj.setEmailId(email);
       obj.setPhoneNo(phone);
       obj.setQualification(qualificaion);
       obj.setRole(role);
       obj.setJobRole(jobrole);
       obj.setDoj(doj);
       obj.setAddress(address);
       obj.setGender(gender);
       obj.setDob(dob);
       obj.setPassword(pass);
       obj.setStatus(status);
       //obj.setConfirmPassword(cpass);
       
       try
       {
         m.insert(obj);
         out.println("Inserted Successfully");
       }
       catch(Exception e)
       {
           %>
           <font color="black">


            <%= e.getMessage()%>
        </font>
        <%
           e.printStackTrace();
       }
   }
%>    

                <h2>Add New User</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">User Name</label>
                        <input type="text" placeholder="Enter your User Name" name="tId" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Name</label>
                        <input type="text" placeholder="Enter your Name" name="tName" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Email Id</label>
                        
                        <input type="text" placeholder="Enter your Emailid" name="tEmail" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Phone Number</label>
                        
                        <input type="text" placeholder="Enter your Phone Number" name="tPhone" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Qualification</label>
                        <input type="text" placeholder="Enter your Qualification" name="tQualification" value="" required />
                        
                    </div>
                    <div class="input-box">
                        <label for="name">Role</label>
                        <input type="text" placeholder="Admi or User" name="tRole" value="" required />
                    </div>
                    <div class="input-box">
                        <label for="name">Job Role</label>
                        
                        <input type="text" placeholder="Enter your Job Role" name="tJobRole" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Joined Date</label>
                        
                        <input type="date" placeholder="Enter your doj" name="tDoj" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Address</label>
                        
                        <input type="text" placeholder="Enter your Address" name="tAddress" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Gender</label>
                        <input type="text" placeholder="Enter your Gender" name="tGender" value="" required/>
                    </div>
                    <div class="input-box">
                        <label for="name">Date of Birth</label>
                        <input type="date" name="tDob" value="" required>
                        
                    </div>
                    <div class="input-box">
                        <label for="name">Password</label>
                        <input type="text" placeholder="Enter Password"  name="tPass" value="" required>
                        
                    </div>
                    
                    
                </div>
                <div class="button-container">
                    <button type="submit" name="bsubmit" value="Register">Register</button>
                </div>
                
            </form>
        </div>
        
        
    </body>
        
        
        
</html>
