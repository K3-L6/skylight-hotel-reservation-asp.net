<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<title></title>--%>
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
                    
                    <li class="active"><a href="AboutUs.aspx">About Us</a></li>
                
                    <li><a href="Rooms.aspx">Rooms</a></li>
                
                    <li><a href="Packages.aspx">Tours</a></li>
                
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
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
                <li data-target="#myPic" data-slide-to="3"></li>
                <li data-target="#myPic" data-slide-to="4"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/about1.jpg" alt="about1" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                     <div class="item">
                        <img src="images/about2.jpg" alt="about2" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                     <div class="item">
                        <img src="images/about3.jpg" alt="about3" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                    <div class="item">
                        <img src="images/about4.jpg" alt="about4" class="img-responsive" width="100%" style="max-height:500px;"/>
                    </div>

                    <div class="item">
                        <img src="images/about5.jpg" alt="about5" class="img-responsive" width="100%" style="max-height:500px;"/>
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
            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">Mission</h1>

                <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">Skylight Hotel Palawan’s Mission is to exceed the expectations of our guests, inspire and to offer a service and hotel product of exclusivity and excellence worldwide, by means of professional partners, in continuous development, using the most advanced managerial skills in order to contribute in the total success of the hotel and of all the components of the destination of Palawan.</p>
            
            <h1 style="font-family:'Century Gothic'; font-size:40px; text-align:center; padding-top:2%; padding-bottom:2%;">Vision</h1>

                 <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">Skylight Hotel Palawan will be a global, tourist and business hotel company offering consistent products and services in key business and leisure destinations. To become a hi-tech center for excellence and delivery of hotel. Our growth will be achieved through hotel ownership, management and selective franchising. We will be known for our innovation, exemplary service and superior financial performance. Skylight Hotel Palawan is committed to being the employer of choice in the hospitality industry. To be known throughout the world for making of the service an unparalleled experience, through highly qualified Human Resources, which will guarantee highest profitability and this way exceed the expectations of clients, owners and partners.</p>

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
