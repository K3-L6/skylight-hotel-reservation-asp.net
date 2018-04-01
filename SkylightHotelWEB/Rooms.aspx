<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rooms.aspx.cs" Inherits="Home" %>

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
                
                    <li class="active"><a href="Rooms.aspx">Rooms</a></li>
                
                    <li><a href="Packages.aspx">Tours</a></li>
                
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                
                </ul>
            </div>

            </div>
        </div>
        <!--NAVIGATION BAR END-->

        <br/><br/><br/><br/><br/><br/>
        <!--STANDARD ROOM START-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <div id ="standardPic" class="carousel slide" style="text-align:center;">
            <ol class="carousel-indicators">
                <li data-target="#standardPic" data-slide-to="0" class="active"></li>
                <li data-target="#standardPic" data-slide-to="1"></li>
                <li data-target="#standardPic" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/standard.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/budget.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/deluxe.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#standardPic" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#standardPic" data-slide="next">
                    <span class="icon-next"></span>
                </a>

            </div>
            </div>
        </div>
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">STANDARD ROOM</h1>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">Standard Rooms offer comfort and privacy, with a full array of amenities that make your stay productive and peaceful at Skylight Hotel Palawan. Standard rooms are equipped with air-conditioning, complimentary Wi-Fi and broadband Internet access, cable television, hot and cold shower, local direct dialing telephone. Accommodation includes buffet breakfast. With your choice of matrimonial-sized bed for couple, twin room with two separate single bed and triple sharing with three separate single bed, extra bed are also available upon request.</p><br/>
        
        <div class="col-md-4 col-md-offset-4">
            <button type="button" class="btn btn-primary btn-block" onclick="location.href='Rooms_Standard.aspx'">More Info</button>
        </div>
        
        <!--STANDARD ROOM END-->



        
        <br/><br/><br/><br/><br/><br/>
        <!--BUDGET ROOM START-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <div id ="budgetPic" class="carousel slide" style="text-align:center;">
            <ol class="carousel-indicators">
                <li data-target="#budgetPic" data-slide-to="0" class="active"></li>
                <li data-target="#budgetPic" data-slide-to="1"></li>
                <li data-target="#budgetPic" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/budget.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/standard.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/deluxe.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#budgetPic" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#budgetPic" data-slide="next">
                    <span class="icon-next"></span>
                </a>

            </div>
            </div>
        </div>
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">BUDGET ROOM</h1>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">The smaller version of our Standard Room with very usable space yet very affordable at Skylight Hotel Palawan. Budget rooms are equipped with air-conditioned, cable television, hot and cold shower, national direct dialling telephone, available in matrimonial-sized bed and twin beds. Amenities are the same with standard room.</p><br/>
        
        <div class="col-md-4 col-md-offset-4">
            <button type="button" class="btn btn-primary btn-block" onclick="location.href='Rooms_Budget.aspx'">More Info</button>
        </div>

        <!--BUDGET ROOM END-->


        <br/><br/><br/><br/><br/><br/>
        <!--DELUXE ROOM START-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <div id ="deluxePic" class="carousel slide" style="text-align:center;">
            <ol class="carousel-indicators">
                <li data-target="#deluxePic" data-slide-to="0" class="active"></li>
                <li data-target="#deluxePic" data-slide-to="1"></li>
                <li data-target="#deluxePic" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/deluxe.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/standard.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/budget.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#deluxePic" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#deluxePic" data-slide="next">
                    <span class="icon-next"></span>
                </a>

            </div>
            </div>
        </div>
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">DELUXE ROOM</h1>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:justify;padding-left:8%;padding-right:8%;">Extra space and exquisite comfort define Deluxe Rooms, each fully supplied with premium Skylight Hotel Palawan amenities. Deluxe rooms are equipped with Queen-sized bed, receiving area, refrigerator and a bath tub, complimentary Wi-Fi and broadband Internet access. Accommodation includes buffet breakfast. With your choice of matrimonial-sized bed for couple, and extra bed are also available upon request with minimal charges.</p><br/>
        
        <div class="col-md-4 col-md-offset-4">
            <button type="button" class="btn btn-primary btn-block" onclick="location.href='Rooms_Deluxe.aspx'">More Info</button>
        </div>

        <!--DELUXE ROOM END-->

















    <script type='text/javascript'>
    $(document).ready(function() {
         $('.carousel').carousel({
             interval: 2000
         })
    });    
    </script>

</body>
</html>
