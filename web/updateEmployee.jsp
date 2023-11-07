<%-- 
    Document   : updateEmployee
    Created on : 9 May, 2023, 2:57:08 PM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <table>
                <h2>Add New User</h2>
<!--                <div class="content">
                    <div class="input-box">-->
                        <label for="name">User Name</label>
                        <input type="text" placeholder="Enter your User Name" name="tId" value="" required>
<!--                    </div>-->
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
            </table>
        </form>
    </body>
</html>
