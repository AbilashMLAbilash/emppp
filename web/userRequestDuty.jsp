<%-- 
    Document   : requestDutyEmployee
    Created on : 29 Mar, 2023, 3:40:11 PM
    Author     : ELCOT
--%>

<%@page import="pkg.UserDAO"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  pkg.User u=new pkg.User();%>

<%
    pkg.User obj=new pkg.User();
    pkg.UserDAO m=new pkg.UserDAO();
      String userid=(String)session.getAttribute("currUser");
     
     obj=m.fetch(userid);
     String Pass=obj.getPassword();
     String Role=obj.getRole();
     String name=obj.getName();
     String emailid=obj.getEmailId();
    
   
%>
<!DOCTYPE html>
<%!pkg.User obj=new pkg.User();%>
<%!pkg.UserDAO m=new pkg.UserDAO();%>





<html>
    <style>
ul {
  font-family: 'Varela Round', sans-serif;
  list-style-type: none;
  margin: 0;
  padding: 0;
  margin-right: -8px;
  margin-left: -8px;
  margin-top: -8px;
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
            border-radius: 15px;
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
    <ul>
    <li><a href="signin.jsp">Logout</a></li>
    <li><a href="profile.jsp">Profile</a></li>
  <li class="dropdown">
    <a href="#manageDuty.jsp" class="dropbtn">Duty</a>
    <div class="dropdown-content">
      <a href="userRequestDuty.jsp">Duty Request</a>
      <a href="dutyDetails.jsp">Duty Details</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="#manageLeave.jsp" class="dropbtn">Leave</a>
    <div class="dropdown-content">
      <a href="userRequestLeave.jsp">Leave Request</a>
      <a href="leaveDetails.jsp">Leave Details</a>
    </div>
  </li>
  <li><a href="employeeHomePage.jsp">Home</a></li>
</ul>
</head>
    
    
    <div class="container">
            <form align="center" action="" method="post">
                <%
    if("Submit".equals(request.getParameter("bsubmit"))) 
   {
       String name1=request.getParameter("tName");
       String email=request.getParameter("tEmail");
       String applieddate=request.getParameter("tApplieddate");
       String date=request.getParameter("tSdate");
       String starttime=request.getParameter("tStime");
       String endtime=request.getParameter("tEtime");
       String dutytype=request.getParameter("tDutytype");
       String dutystatus="pending";
       
       
       obj.setName(name1);
       obj.setEmailId(email);
       obj.setAppliedDate(applieddate);
       obj.setDate(date);
       obj.setStartTime(starttime);
       obj.setEndTime(endtime);
       obj.setDutyType(dutytype);
       obj.setDutyStatus(dutystatus);
       
       
       try
       {
         m.insertrde(obj);
         out.println("Duty Request Send Successfully");
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
                <h2>User Duty Request</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Name</label>
                        <input type="text"  name="tName" value="<%=obj.getName()%>" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Email Id</label>
                        
                        <input type="text"  name="tEmail" value="<%=obj.getEmailId()%>" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Applied Date</label>
                        
                        <input type="date"  name="tApplieddate" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Duty Date</label>
                        
                        <input type="date"  name="tSdate" value="" required>
                    </div>
                    <div class="input-box">
                        <label for="name">Start Time</label>
                        <input type="time"  name="tStime" value="" required>
                        
                    </div>
                    <div class="input-box">
                        <label for="name">End Time</label>
                        <input type="time"  name="tEtime" value="" required>
                        
                    </div>
                    <div class="input-box">
                        <label for="name">Duty Type</label>
                        <select type="text"  name="tDutytype" value="" required>
                            <option>Select Duty Type</option>
                            <option>Work From Home</option>
                            <option>Client Meeting</option></select>
                    </div>
                    
                    <div class="input-box">
                        <label for="name">Duty Status</label>
                        
                        <input type="text"  name="tDutystatus" value="pending" required>
                    </div>
                    
                </div>
                <div class="button-container">
                    <button type="submit"  value="Submit" name="bsubmit">Submit</button>
                    
                </div>
            </form>
    </div>
    
    
    
    
</body>
</html>
