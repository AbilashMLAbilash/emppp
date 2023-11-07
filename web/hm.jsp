<%-- 
    Document   : updateEmployee
    Created on : 28 Mar, 2023, 10:31:29 PM
    Author     : ELCOT
--%>

<%@page import="pkg.UserDAO"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <head>
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
body {
                margin-top: -15px; 
                margin-left:0px;
                color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
        body h5{
            font-family: 'Varela Round', sans-serif;
            font-weight: bold;
            font-size: 15px;
            color: black;
            margin-top: 10px;
            margin-bottom:  -15px;
            text-align: left;
            margin-left: 10px;
        }
/*	body{
            margin-top: -15px
            background: beige;
        }*/
        .wrapper{
            min-height: 100vh;
            color: black;
            font-size: 15px;
            box-sizing: border-box;
            padding-top: 5%;
            margin-top: 5px;
            font-family: montserrat;
            line-height: 1.5;
            max-width: 678px;
            margin: 0 auto;
        }
        .box{
            display: flex;
            flex-wrap: wrap;
            margin-top: -20px;
        }
        .box label{
            margin-top: -30px;
            background: #7d98b9;
            font-weight: bold;
            text-align: center;
            box-shadow: 0 2px 10px -2px rgba(0,0,0,0.5);
/*            order: 1;*/
            display: block;
            padding: 16px 127px;
            margin-right: 4px;
            cursor: pointer;
            
        }
        th,td{
            font-size: 15px;
            padding: 15px;
            padding-right:  140px;
           text-align: center;
            border: 2px solid #000;
            border-collapse: collapse;
            
        }
        
        .box .content{
            display: none;
            padding: 30px;
            background: #fff;
            box-shadow: 0 2px 10px -2px rgba(0,0,0,0.5);
            order: 99;
/*            flex-grow: 1;*/
            width: 100%;
        }
        .box input[type="radio"]{
            display: none;
        }
        .box input[type="radio"]:checked + label{
            background: #435d7d;
        }
        .box input[type="radio"]:checked + label + .content{
            display: block;
        }
</style>
</head>
<body>
    
    <br>
        <%
        String msg=request.getParameter("msg");
        if("valid".equals(msg))
        {
        %>
    <center><font color="red" size="5">Successfully Updated</font></center>
    <%
      }
    %>
    <%
        
        if("invalid".equals(msg))
        {
        %>
    <center><font color="red" size="5">Some thing went wrong! Try Again.....</font></center>
    <%
      }
    %>
    <%
        
        if("deleted".equals(msg))
        {
        %>
    <center><font color="red" size="5">Successfully Deleted</font></center>
    <%
      }
    %>
        
        

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
   
     
    <h5><%
    pkg.User ad=new pkg.User();
    pkg.UserDAO ad1=new pkg.UserDAO();
    String userid=(String)session.getAttribute("currUser");
     
     ad=ad1.fetch(userid);
     String Pass=ad.getPassword();
     String Role=ad.getRole();
     String name=ad.getName();
     out.println("Welcome "+name);
    
   
%></h5>
   
<br>

    <div class="wrapper">
            <div class="box">
                <input type="radio" name="box" id="box1" checked="checked">
                <label for="box1" style="color:white">Leave Type</label>
                <div class="content">
                    <h1 style="margin-top:-20px">Leave Type</h1>
                     <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
<!--                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Project Tab 1</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Project Tab 2</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Project Tab 3</a>-->
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>List</th>
                                            <th>Leave Type</th>
                                            <th>Allowed/Year</th>
<!--                                            <th>Awards</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none">1</a></td>
                                            <td>Sick Leave</td>
                                            <td>6</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none">2</a></td>
                                            <td>Casual Leave</td>
                                            <td>6</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none">3</a></td>
                                            <td>Festival Leave</td>
                                            <td>6</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none">4</a></td>
                                            <td>Birthday Leave</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none"></a></td>
                                            <td>Total Leaves</td>
                                            <td>20</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
                </div>
                
                <input type="radio" name="box" id="box2">
                <label for="box2" style="color:white">Duty Type</label>
                <div class="content">
                    <h1 style="margin-top:-20px">Duty Type</h1>
                    <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
<!--                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Project Tab 1</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Project Tab 2</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Project Tab 3</a>-->
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>List</th>
                                            <th>Duty Type</th>
<!--                                            <th>Awards</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none">1</a></td>
                                            <td>Work From Home</td>
<!--                                            <td>john@example.com</td>-->
                                        </tr>
                                        <tr>
                                            <td><a href="#" style="text-decoration:none">2</a></td>
                                            <td>Client Meeting</td>
<!--                                            <td>mary@example.com</td>-->
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
                </div>
            </div>
        </div>
    </body>
</html>