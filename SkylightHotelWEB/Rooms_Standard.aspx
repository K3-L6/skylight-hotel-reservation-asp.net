<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rooms_Standard.aspx.cs" Inherits="Home" %>

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
        <!--ROOM PIC AND INFO START-->
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
                        <img src="images/contact1.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/contact2.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/contact3.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
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
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">STANDARD ROOM FACILITIES</h1>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Queen-Sized Bed</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Refregirator</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Bath tub</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Wi-Fi and Broadband access</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Complimentary Buffet breakfast</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Fully Airconditioned Room</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Cable TV</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Hot and Could Shower</p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">Intercom Roundtrip Transfer (Hotel-Airport-Hotel)</p>
        
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;"><asp:Label ID="priceLbl" runat="server" Text="Room Price : "></asp:Label></p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;"><asp:Label ID="maxLbl" runat="server" Text="Max Person Count : "></asp:Label></p>
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;"><asp:Label ID="penaltyLbl" runat="server" Text="Penalty Charge for Exceeding Person Count : "></asp:Label></p><br/>
        
        <div class="col-md-2 col-md-offset-5">
            <button type="button" class="btn btn-primary btn-block" onclick="location.href='Rooms_Standard _Reservation.aspx'">Reserve Now</button>
        </div>

        
        
        <!--ROOM AND PIC INFO END-->



        
        

















    <script type='text/javascript'>
    $(document).ready(function() {
         $('.carousel').carousel({
             interval: 2000
         })
    });    
    </script>

</body>
</html>
