
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
                    
                    <li class="active"><a href="Home.aspx">Home</a></li>
                    
                    <li><a href="AboutUs.aspx">About Us</a></li>

                    <li><a href="Rooms.aspx">Rooms</a></li>
                
                    <li><a href="Packages.aspx">Tours</a></li>

                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                
                </ul>
            </div>
            </div>
        </div>
        <!--NAVIGATION BAR END-->

        <!--CAROUSEL PICTURE START-->
        <div id ="myPic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myPic" data-slide-to="0" class="active"></li>
                <li data-target="#myPic" data-slide-to="1"></li>
                <li data-target="#myPic" data-slide-to="2"></li>
                <li data-target="#myPic" data-slide-to="3"></li>
                <li data-target="#myPic" data-slide-to="4"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/home1.jpg" alt="home1" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                     <div class="item">
                        <img src="images/home2.jpg" alt="home2" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                     <div class="item">
                        <img src="images/home3.jpg" alt="home3" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                    <div class="item">
                        <img src="images/home4.jpg" alt="home4" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                    <div class="item">
                        <img src="images/home5.jpg" alt="home5" class="img-responsive" width="100%" style="max-height:500px;"/>
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
            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">It's More Fun In Palawan</h1>

                <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">At the center of Puerto Princesa City, Palawan is one of the Philippines' famous landmarks. Located 10 minutes from Puerto Princesa International Airport, and a stone's throw away from the city's financial district and best attractions, Skylight Hotel Palawan is the place to go and stay. The hotel is surrounded by Palawan's culturally rich and well preserved historical points of interest, such as Iwahig Penal Colony, Baker's Hill, Mitra Ranch and many more! Skylight Hotel Palawan has forty-one (41) elegantly furnished guestrooms. All guestrooms are equipped with air-conditioning system, cable television, hot and cold shower, NDD telephone and Wi-Fi connection for free. Skylight Hotel Palawan's restaurant and Veranda serves Orientel and International cuisines. Its natural ambiance makes guests comfortable and enjoyable during parties with different occasions (weddings, debuts, birthdays and conventions).</p>
                <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">Puerto Princesa City, the capital of Palawan, is a first class city in the Philippines. It is also the second largest city in the Philippines (after Davao City) in terms of total land area. According to the 2007 census, it is famous for its Crocodile Farm, Underground River and numerous dive spots. Skylight Hotel Palawan offers you tour packages that will fit your budget!</p>
		        <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">Watch out for the biggest Convention Center in Puerto Princesa City that will cater to all event requirements, the Convention Center of Skylight Hotel Palawan offers a wide variety of banquet and conference packages, consistent high standards and quality services.</p>
 
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
