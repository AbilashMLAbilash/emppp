<%-- 
    Document   : nww
    Created on : 8 May, 2023, 11:26:56 AM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<html>
    <style>
        body{
            background: beige;
        }
        .wrapper{
            min-height: 100vh;
            box-sizing: border-box;
            padding-top: 5%;
            font-family: montserrat;
            line-height: 1.5;
            max-width: 960px;
            margin: 0 auto;
        }
        .box{
            display: flex;
            flex-wrap: wrap;
        }
        .box label{
            background: #fff;
            font-weight: bold;
            text-align: center;
            box-shadow: 0 2px 10px -2px rgba(0,0,0,0.5);
            order: 1;
            display: block;
            padding: 16px 127px;
            margin-right: 4px;
            cursor: pointer;
        }
        .box .content{
            display: none;
            padding: 30px;
            background: #fff;
            box-shadow: 0 2px 10px -2px rgba(0,0,0,0.5);
            order: 99;
            flex-grow: 1;
            width: 100%;
        }
        .box input[type="radio"]{
            display: none;
        }
        .box input[type="radio"]:checked + label{
            background: #ec6633;
        }
        .box input[type="radio"]:checked + label + .content{
            display: block;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="box">
                <input type="radio" name="box" id="box1" checked="checked">
                <label for="box1">Leave Type</label>
                <div class="content">
                    <h1>Leave Type</h1>
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
<!--                                            <th>Awards</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">1</a></td>
                                            <td>Sick Leave</td>
<!--                                            <td>john@example.com</td>-->
                                        </tr>
                                        <tr>
                                            <td><a href="#">2</a></td>
                                            <td>Casual Leave</td>
<!--                                            <td>mary@example.com</td>-->
                                        </tr>
                                        <tr>
                                            <td><a href="#">3</a></td>
                                            <td>Fesival Leave</td>
<!--                                            <td>july@example.com</td>-->
                                        </tr>
                                        <tr>
                                            <td><a href="#">4</a></td>
                                            <td>Birthday Leave</td>
<!--                                            <td>july@example.com</td>-->
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
                <label for="box2">Duty Type</label>
                <div class="content">
                    <h1>Duty Type</h1>
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
                                            <td><a href="#">1</a></td>
                                            <td>Work From Home</td>
<!--                                            <td>john@example.com</td>-->
                                        </tr>
                                        <tr>
                                            <td><a href="#">2</a></td>
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
