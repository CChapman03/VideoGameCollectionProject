<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/1/19
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Signup</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

        <style>
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
                background-color: rgb(25, 25, 25);
                color: rgb(255, 255, 255);
                padding: 1% 0;
                font-size: 1.2em;
                border: 0;
            }

            .navbar-brand {
                float: left;
                min-height: 55px;
                padding: 0 15px 5px;
            }

            .navbar-inverse .navbar-nav .active a, .navbar-inverse .navbar-nav .active a:focus, .navbar-inverse .navbar-nav .active a:hover {
                background-color: rgb(25, 25, 25);
                color: rgb(255, 255, 255);
            }

            .navbar-inverse .navbar-nav li a {
                color: #D5D5D5;
            }

            .navbar-inverse .navbar-nav .dropdown-menu {
                padding: 1% 0;
                background-color: rgb(25, 25, 25);
                color: rgb(255, 255, 255);
            }

            .navbar-inverse .navbar-nav .dropdown-menu li a, .navbar-inverse .navbar-nav .dropdown-menu li a:focus, .navbar-inverse .navbar-nav .dropdown-menu li a:hover {
                background-color: rgb(25, 25, 25);
                color: #FFF;
            }

            .navbar-inverse .navbar-nav .dropdown-menu li a {
                color: #D5D5D5;
            }

            .container, #aboutSection {
                margin: 4% auto;
            }

            #aboutSection {
                font-size: 1.2em;
            }

            #icon, #pic {
                width: 100%;
                margin: 4% auto;
            }

            @media (max-width: 600px) {
                .carousel-caption {
                    display: none;
                }

                svg {
                    max-width: 25%;
                }

                h2 {
                    font-size: 1.5em;
                }
            }

            form {
                background-color: indianred;
                margin: 3em 3em;
                padding: 3em 3em;
                box-shadow: grey 3px 4px 5px;
            }

            h1 {
                text-align: center;
            }

            #btn_submit {

                display: inline;
                margin: auto;
                text-align: center;

            }

            #register_a {
                color: indianred;
            }

            #register_p {
                text-align: center;
            }

            footer {
                margin-bottom: 0;
                border-radius: 0;
                background-color: rgb(25, 25, 25);
                color: rgb(255, 255, 255);
                padding: 1% 0;
                font-size: 1.2em;
                border: 0;
                float: bottom;
            }

        </style>
    </head>
    <body>
        <div>
            <!-- Main Navbar -->

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.jsp"><img src="images/Logo.png" alt="Video Game Collection's Logo" width="96px" height="48px" /></a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="index.jsp">VGC - Video Game Collection</a></li>
                        </ul>
                        <div class="pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="login.jsp">Login</a></li>
                                <li><a href="signup.jsp">Signup</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="container">

                <h1>Signup to VGC - Video Game Collection!</h1>

                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="username">User Name:</label>
                        <input type="text" class="form-control" id="username">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address: </label>
                        <input type="email" class="form-control" id="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password: </label>
                        <input type="password" class="form-control" id="pwd">
                    </div>
                    <div class="form-group">
                        <label for="pwd2">Retype: </label>
                        <input type="password" class="form-control" id="pwd2">
                    </div>
                    <div class="form-group text-center">
                        <button id="btn_submit" type="submit" class="btn btn-default">Signup</button>
                    </div>
                </form>

                <p id="register_p">Already Registered: Login <a id="register_a" href="login.jsp">here</a></p>

            </div>

            <!-- Footer -->
            <div class="navbar navbar-fixed-bottom">
                <!-- Copyright -->
                <div class="text-center">&copy; 2019 Copyright: VGC - Video Game Collection
                </div>
                <!-- Copyright -->
            </div>
            <!-- Footer -->
        </div>
    </body>
</html>
