e<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
        <!--NAVIGATION BAR START-->
        <div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                
                <div class="navbar-header">
                    <img src="images/logo.jpg" width="350" height="50"/>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
            
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li><a href="Home.aspx">Home</a></li>
                    
                    <li><a href="AboutUs.aspx">About Us</a></li>
                
                    <li><a href="Rooms.aspx">Rooms</a></li>
                
                    <li><a href="Packages.aspx">Tours</a></li>
                
                    <li class="active"><a href="ContactUs.aspx">Contact Us</a></li>
                
                </ul>
            </div>

            </div>
        </div>
        <!--NAVIGATION BAR END-->

        <!--CAROUSEL PICTURE START-->
        <div id ="myPic" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#myPic" data-slide-to="0" class="active"></li>
                <li data-target="#myPic" data-slide-to="1"></li>
                <li data-target="#myPic" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/contact1.jpg" alt="contact1" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                     <div class="item">
                        <img src="images/contact2.jpg" alt="contact2" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                     <div class="item">
                        <img src="images/contact3.jpg" alt="contact3" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#myPic" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#myPic" data-slide="next">
                    <span class="icon-next"></span>
                </a>

         </div>
        <!--CAROUSEL PICTURE END-->


        <!--MAIN CONTENT START-->
        <div class="container-fluid" >
            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">How to go to Us</h1>

                <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:5%;padding-right:5%;">Located at the heart of Puerto Princesa City. Skylight Hotel Palawan is only five minutes ride from the airport and seaport, walking distance to all your needs Banks, Public Market, NCCC Mall and one of the popular Pasalubong-TO-GO at TIANGGE TIANGE</p>
            
            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">Address</h1>

                 <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:5%;padding-right:5%;">Palawan: 210-A Rizal Avenue Puerto Princesa City, Palawan 5300 Manila: 1305 Pedro Gil St. Paco, Manila</p>

            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">Phones</h1>

                <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:5%;padding-right:5%;">Palawan: (048) 434-4872 / (048) 434-7176<br/>Fax# (048) 433-4596<br/>Mobile# (+63) 9399022186 / (+63) 9153076755<br/>Manila: (02)563-2565 / (02)563-8912<br/>Fax# (02) 563-2372</p>

            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">E-mail</h1>

                <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:5%;padding-right:5%;">rsrvskylighthotel@yahoo.com</p>
            
            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">Google Map</h1>

                <div class="container-fluid">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="bs-example" data-example-id="responsive-embed-16by9-iframe-youtube">
                            <div class="embed-responsive embed-responsive-16by9">
	                            <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3932.3021592573473!2d118.73645731433025!3d9.740452280122936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33b563dc1fa300c7%3A0x833650bdead37563!2sSkylight+Hotel+Palawan!5e0!3m2!1sen!2sph!4v1455200961972"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
        
        </div>
        <!--MAIN CONTENT END-->




    <!--Script for autostart pic slide-->
    <script type='text/javascript'>
    $(document).ready(function() {
         $('.carousel').carousel({
             interval: 2000
         })
    });    
    </script>

</body>
</html>
