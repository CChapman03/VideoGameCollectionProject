<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
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

        <!-- Slide Show -->

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/Logo.png" />
                    <div class="carousel-caption">
                        <h1>Oak Forest</h1>
                    </div>
                </div> <!-- End Active Item -->
                <div class="item">
                    <img src="images/Logo.png" />
                    <div class="carousel-caption">
                        <h1>Red Birch Road</h1>
                    </div>
                </div>
                <div class="item">
                    <img src="images/Logo.png" />
                    <div class="carousel-caption">
                        <h1>Red Leaf Beech Tree</h1>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div> <!-- End Slider -->


        <!-- About Section -->

        <div id="aboutSection" class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-center">About VGC</h4>
                    <p>
                        At VGC you can catalog your video game collection!  With VGC you can add, update, and view your collection
                        with only a few clicks.
                    </p>
                    <p>
                        ...
                    </p>
                    <p>

                    </p>
                </div>
            </div>
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
