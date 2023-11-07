<%@page import="java.sql.*" %>
<!DOCTYPE html>
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
    max-width: 650px;
    padding: 28px;
    border-radius: 8px;
    box-shadow: 0 15px 20px #0009;
}
 h2{
    font-size: 26px;
    font-weight: 600;
    text-align: left;
    /* color: white; */
    padding-bottom: 8px;
    border-bottom: 1px solid silver;
} 
.content{
    display:flex;
    flex-wrap: wrap;
     justify-content: space-between; 
     padding: 20px 0; 
} 
.input-box{
    display:flex;
    flex-wrap:wrap;
    width:50%;
    padding-bottom: 20px;
}
select{
    height:40px;
    width:95%;
    padding: 0 10px;
    border-radius: 5px;
    border:1px solid #ccc;
    outline:none;
    
}
textarea{
    width:100%;
}
 .input-box:nth-child(2n){
    justify-content:end;
} 
 .input-box label,.gender-title{
    width: 95%;
    /* color:white; */
    font-weight: bold;
    margin:5px 0;
} 
.gender-title{
    font-size: 16px;
}
.input-box input{
    height:40px;
    width:95%;
    padding: 0 10px;
    border-radius: 5px;
    border:1px solid #ccc;
    outline:none;
}
 .input-box input:is(:focus,:valid){
    box-shadow:0 3px 6px rgba(0,0,0,0.2);
}
.gender-category{
    color: grey;
}
.gender-category label{
    padding:0 20px 0 5px;
    font-size: 14px;
}
.gender-category label,.gender-category input{
    cursor:pointer;
}   
.alert p{
    font-size: 14px;
    font-style: italic;
    color: dimgray;
    margin:5px 0;
    padding: 10px;
}
.file{
    height:40px;
    width:95%;
    padding: 0 10px;
    display: block;
    /* border-radius: 5px; */
    /* border:1px solid #ccc; */
    outline:none;

}
.file_upload{
    /* display: block; */
    color:#2f4f4f;
    font-weight: bold;
}
  

    



.button-container{
    margin:15px 0; 
}
.button-container button{
    width: 600%;
    margin-top: 10px;
    margin-left: 100px;
    margin-right:  -90px;
    padding:10px;
    display:block;
    font-size: 20px;
    color:#fff;
    border:none;
    border-radius: 5px;
    background-image: linear-gradient(to right,#aa076b,#61045f);
}



.button-container button:hover{
    background-image: linear-gradient(to right,#61045f,#aa076b);

}


    </style>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
</head>
<body>  
    <ul>
    <li><a href="signin.jsp">Logout</a></li>
    <li><a href="updateEmployee.jsp">Edit User</a></li>
    <li><a href="signup.jsp">Add User</a></li>
  <li class="dropdown">
    <a href="manageDuty.jsp" class="dropbtn">List all Duty Application</a>
    <div class="dropdown-content">
      <a href="approvedDuty.jsp">Approved Duty</a>
      <a href="canceledDuty.jsp">Rejected Duty</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="manageLeave.jsp" class="dropbtn">List all Leave Application</a>
    <div class="dropdown-content">
      <a href="approvedLeaves.jsp">Approved Leave</a>
      <a href="canceledLeaves.jsp">Rejected Leave</a>
    </div>
  </li>
  <li><a href="leaveType.jsp">Add Leave Type</a></li>
  <li><a href="hm.jsp">Home</a></li>
</ul>
        
 <div align="center" class="content" style="margin-left: 350px ;font-family: 'Varela Round', sans-serif;">
    
    
    
    <div class="container">
        <form action="" method="POST">
           
            
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
            <h2>Add Leave Type</h2>
            <div  class="content">
                <div class="input-box">
                    <label for="EmploymentType">Leave Type</label>
                    <select type="text" name="tlt" value=""/>
                      <option >Select type</option>
                    <option>Sick Leave</option>
                    <option>Casual Leave</option>
                    <option>Loss of Pay</option>
                    </select>
                </div> 
                <div class="input-box">
                    <label for="JobName">Allowed/month</label>
                    <input type="number" name="tam" min="1" max="10" value=""/>
                </div>
                
                 
                <div class="input-box">
                    <label for="Qualification">Total Allowed</label>
                    <input type="number" name="tta" min="1" max="10" value=""/>
                  </div> 
                   
                  <div class="input-box">
                    <label for="JobLocation">Department</label>
                    <select type="text" name="td" value=""/>
                      <option >Select type</option>
                    <option>Admin</option>
                    <option>User</option>
                    </select>
                  </div> 
                
                
                
                     
                
                <div class="button-container">
                    <button type="submit" value="Update" name="bup" />Save</button>
                  </div>
            </div>
            <script>
                document.getElementById('today').valueAsDate = new Date();
                </script>
        </form>
    </div>
</div>
    
</body>
</html>