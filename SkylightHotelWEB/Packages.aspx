<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Home" %>

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
                    
                    <li><a href="Rooms.aspx">Rooms</a></li>
                
                    <li class="active"><a href="Packages.aspx">Tours</a></li>
                
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                
                </ul>
            </div>

            </div>
        </div>
        <!--NAVIGATION BAR END-->

        <br/><br/><br/><br/><br/><br/>
        <!--UNDERGROUND CAVE PALAWAN START-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <div id ="tour1" class="carousel slide" style="text-align:center;">
            <ol class="carousel-indicators">
                <li data-target="#tour1" data-slide-to="0" class="active"></li>
                <li data-target="#tour1" data-slide-to="1"></li>
                <li data-target="#tour1" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/home5.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/home4.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/home3.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#tour1" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#tour1" data-slide="next">
                    <span class="icon-next"></span>
                </a>

            </div>
            </div>
        </div>
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">UNDERGROUND RIVER PALAWAN</h1>
        
            <p style="font-family:'Century Gothic';font-size:30px;text-align:center;padding-left:8%;padding-right:8%;">Inclusion of the Tour Package:</p><br/>
            
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Licensed Tour Guide</p><br/>
        
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Travel Insurance</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Air-conditioned Van</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Buffet Lunch at Roberts Restaurant</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Entrance fee</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Permit and Boat Fee</p><br/>
            
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;"><asp:Label ID="priceLbl1" runat="server" Text="Price per Person : "></asp:Label></p><br/>
            
        
        <!--UNDERGROUND CAVE PALAWAN END-->

        <br/><br/><br/><br/><br/><br/>
        <!--HONDA BAY START-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <div id ="tour2" class="carousel slide" style="text-align:center;">
            <ol class="carousel-indicators">
                <li data-target="#tour2" data-slide-to="0" class="active"></li>
                <li data-target="#tour2" data-slide-to="1"></li>
                <li data-target="#tour2" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/home3.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/home4.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/home5.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#tour2" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#tour2" data-slide="next">
                    <span class="icon-next"></span>
                </a>

            </div>
            </div>
        </div>
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">HONDA BAY TOUR</h1>
        
            <p style="font-family:'Century Gothic';font-size:30px;text-align:center;padding-left:8%;padding-right:8%;">Inclusion of the Tour Package:</p><br/>
            
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Air-conditioned Van</p><br/>
        
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Travel Insurance</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Entrance fee</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Picnic Lunch</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Permit and Boat Fee</p><br/>
        
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;"><asp:Label ID="priceLbl2" runat="server" Text="Price per Person : "></asp:Label></p><br/>

        <!--HONDA BAY END-->


        <br/><br/><br/><br/><br/><br/>
        <!--DOS PALMAS START-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <div id ="tour3" class="carousel slide" style="text-align:center;">
            <ol class="carousel-indicators">
                <li data-target="#tour3" data-slide-to="0" class="active"></li>
                <li data-target="#tour3" data-slide-to="1"></li>
                <li data-target="#tour3" data-slide-to="2"></li>
            </ol>
                
            <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/home5.jpg" alt="contact1" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/home4.jpg" alt="contact2" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

                     <div class="item">
                        <img src="images/home3.jpg" alt="contact3" class="img-responsive" style="height:500px; width:100%;"/>
                    </div>

            </div>

                <a class="carousel-control left" href="#tour3" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>

                <a class="carousel-control right" href="#tour3" data-slide="next">
                    <span class="icon-next"></span>
                </a>

            </div>
            </div>
        </div>
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">DOS PALMAS PALAWAN</h1>
        
            <p style="font-family:'Century Gothic';font-size:30px;text-align:center;padding-left:8%;padding-right:8%;">Inclusion of the Tour Package:</p><br/>
            
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Welcome drink Lunch</p><br/>
        
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Speedboat transfers to nearby snorkeling sites   Children’s playground</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Ocean kayaks</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Snorkeling equipment (mask, snorkel, fins)</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Public shower and toilets</p><br/>
        
            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;">Scheduled round trip</p><br/>

            <p style="font-family:'Century Gothic';font-size:20px;text-align:center;padding-left:8%;padding-right:8%;"><asp:Label ID="priceLbl3" runat="server" Text="Price per Person : "></asp:Label></p><br/>

        <!--DOS PALMAS END-->





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
