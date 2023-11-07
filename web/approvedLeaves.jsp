<%-- 
    Document   : approvedLeaves
    Created on : 29 Mar, 2023, 11:54:55 AM
    Author     : ELCOT
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
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
                margin-top: 0px; /*change this for other pages*/
                margin-left: -90px;
                color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
        body h5{
            font-family: 'Varela Round', sans-serif;
            font-size: 15px;
            color: black;
            margin-top: 5px;
            margin-bottom:  -15px;
            text-align: left;
            margin-left: 100px;
        }
	.table-responsive {
         max-width: 100vh; 
         
        margin: 20px 0;
        width: 90vw;
    }
	.table-wrapper {
        margin-left: 100px; 
        width: 186%;
        background: #fff;
        padding: 20px 25px;
	border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {  
            max-width: 235vh;
		padding-bottom: 15px;
		background: #435d7d;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
        
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn-group {
		float: right;
	}
	.table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
                color: black;
    }
	table.table tr th:first-child {
		width: 60px;
                
                
	}
	table.table tr th:last-child {
		width: 100px;
                
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
        color: blue;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    
	/* Custom checkbox */
	.custom-checkbox {
		position: relative;
	}
	.custom-checkbox input[type="checkbox"] {    
		opacity: 0;
		position: absolute;
		margin: 5px 0 0 3px;
		z-index: 9;
	}
	.custom-checkbox label:before{
		width: 18px;
		height: 18px;
	}
	.custom-checkbox label:before {
		content: '';
		margin-right: 10px;
		display: inline-block;
		vertical-align: text-top;
		background: white;
		border: 1px solid #bbb;
		border-radius: 2px;
		box-sizing: border-box;
		z-index: 2;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		content: '';
		position: absolute;
		left: 6px;
		top: 3px;
		width: 6px;
		height: 11px;
		border: solid #000;
		border-width: 0 3px 3px 0;
		transform: inherit;
		z-index: 3;
		transform: rotateZ(45deg);
	}
	.custom-checkbox input[type="checkbox"]:checked + label:before {
		border-color: #03A9F4;
		background: #03A9F4;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		border-color: #fff;
	}
	.custom-checkbox input[type="checkbox"]:disabled + label:before {
		color: #b8b8b8;
		cursor: auto;
		box-shadow: none;
		background: #ddd;
	}
	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
      
       
</style>


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
    
<!--    <form>
        <div class="datesearch" style="margin-left: 450px;margin-top: 20px" >
        <table>
                <tr>
                    <th>Start Date:<input type="date" name="tsd" value="" style="font-size:15px;border-radius: 10px"/></th>
                    <th>End Date:<input type="date" name="ted" value="" style="font-size:15px;border-radius: 10px"/></th>
                    <th><input type="submit" value="Search" name="bs" style="font-size:17px;background-color: #435d7d;border-radius: 10px;color: white" /></th>
                </tr>
        </table>
        </div>
    </form>-->
  
    <div class="container">
<!--		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-6">
							<h2>Filter<b> Approved Leaves</b></h2>
						</div>
						
                                            
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
                                        <th>User Name</th>
					<th>Email</th>
					<th>Leave Type</th>
					<th>Start Date</th>
					<th>End Date</th>
                                        <th>Total days</th>
                                        <th>Reason</th>
                                        <th>Leave status</th>
                                        
					</tr>
                                        </thead>
					<tbody>
                                    <%!String Start_Date1,End_Date2;%>
<%
    if("Search".equals(request.getParameter("bs"))){
       Connection con=null;
    {
        try
		{
                    
                        Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			
                        PreparedStatement ps=con.prepareStatement("Select * from leave_request where leavestatus='Approved' and startdate between (?) and (?)");
			ps.setString(1, Start_Date1);
                        ps.setString(2, End_Date2);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) 
                         {
            %>
            
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            
        </tr>
        <%
            }
            }
		catch(Exception e)
		{
			out.print("File not Found");
		}

    
    
        Start_Date1=request.getParameter("tsd");
        End_Date2=request.getParameter("ted");
       
       
        
        //out.print(Start_Date1);
        //out.print(End_Date2);
        
        
    } 
    }
    %>

					</tbody>
                                </table>
    </div>
		</div> -->
    
    <div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-6">
							<h2> Approved<b>Leaves</b></h2>
						</div>
						
                                            
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
                                        <th>User Name</th>
					<th>Email</th>
					<th>Leave Type</th>
					<th>Start Date</th>
					<th>End Date</th>
                                        <th>Total days</th>
                                        <th>Reason</th>
                                        <th>Leave status</th>
                                        
					</tr>
                                        </thead>
					<tbody>
                                                          
                                            
						  <%
                        try
                        {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
                          Statement st=con.createStatement();
                          ResultSet rs=st.executeQuery("select * from leave_request where leavestatus='Approved'");
                          while(rs.next())
                          {
                    %>
                   
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    
                       
                </tr>
                <%
                    }}
                        catch(Exception e)
                        {
                            out.println(e);
                        }
                %>
					</tbody>
                                </table>
    </div>
		</div> 
    
    
</body>
</html> 
