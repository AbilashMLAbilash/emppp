<%-- 
    Document   : signin
    Created on : 22 Mar, 2023, 3:33:25 PM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!pkg.User obj=new pkg.User();%>
<%!pkg.UserDAO m=new pkg.UserDAO();%>



<html>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif;
        }
        
        body{
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: #4070f4;
            background-image: url('pg1.jpg');
            background-size: cover;
            background-position: center;
            
            
                      
        }
        .container{
            font-family: 'Varela Round', sans-serif;
            font-size: 13px;
            max-width: 700px;
            padding: 28px;
            margin: 0 28px;
            background: white;
            box-shadow: 0 15px 20px #95dbfe;
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
        /*
        .content{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px 0;
        }*/
        .input-box{
            display: flex;
            flex-wrap: wrap;
            width: 100%;
            padding-bottom: 15px;
        }
        /*
        .input-box:nth-child(2n){
            justify-content: end;
        }*/
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
            width: 95%;
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
            /*
            .conent::-webkit-scrollbar{
                width:0;
            }*/
           
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <form action="" method="post">
                <%

     if("Login".equals(request.getParameter("bsubmit"))){


        try{

             obj=m.fetch(request.getParameter("tId"));
           out.println(obj.getUserId());
                      out.println(obj.getPassword());

                      session.setAttribute("a1", obj.getUserId());
                      
                      
            String s=obj.getPassword();
            String s1=request.getParameter("tPassword");

            if(!(s.equals(s1))){
                out.println("Wrong Password");

            return;
}
                    String n = request.getParameter("");
                    if (!(m.equals(n))) {
                        out.println("error");
                    }

                      session.setAttribute("currUser", obj.getUserId());
                        String r=obj.getRole();

                            if("User".equals(r)){
        %>
        <jsp:forward page="employeeHomePage.jsp"/>
                        
        
         <%                    } else if("Admin".equals(r)) {

        %>
        <jsp:forward page="hm.jsp"/>
        <% }else {

        %>
        <jsp:forward page=""/>
        <%}
       } catch (Exception ex) {
        %>
        <font color="red">


            <%= ex.getMessage()%>
        </font>
        <%
                    //ex.printStackTrace();
                }
            }
        %>
                <h2>Login</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">User Name</label>
                        
                        <input type="text" placeholder="Enter your User Name" name="tId" value="" required>
                    </div>
                    
                    <div class="input-box">
                        <label for="name">Password</label>
                        <input type="text" placeholder="Enter Password" name="tPassword" value="" required>
                    </div>
                </div>
                <div class="button-container">
                    <button type="submit"  value="Login" name="bsubmit">Login</button>
                </div>
                
            </form>
        </div>
    </body>
</html>
