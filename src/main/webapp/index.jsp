<!DOCTYPE html>
<html>

    <!-- Head -->
    <jsp:include page="head.jsp" flush="true" />

    <body>
        <div>

            <!-- Main Navbar -->

            <jsp:include page="nav.jsp" flush="true" />



            <!-- Slide Show -->

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/Logo.png" width="50%" style="margin: auto"/>
                        <div class="carousel-caption">
                            <h1>Game Controller</h1>
                        </div>
                    </div> <!-- End Active Item -->
                    <div class="item">
                        <img src="images/collection-library.png" />
                        <div class="carousel-caption">
                            <h1>Video Game Collection</h1>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/marioandfriends.png" />
                        <div class="carousel-caption">
                            <h1>Mario and friends figures</h1>
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

            <jsp:include page="footer.jsp" flush="true" />
        </div>
    </body>
</html>
