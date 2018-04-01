<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rooms_Budget_Reservation.aspx.cs" Inherits="Home" %>

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

        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:2%; padding-bottom:2%;">BUDGET RESERVATION FORM</h1>
        <form runat="server">
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">
              
            <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label><br/><br/>
            <asp:TextBox ID="nameFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt"></asp:TextBox><br/><br/>

            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><br/><br/>
            <asp:TextBox ID="mailFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt" TextMode="Email"></asp:TextBox><br /><br/>

            <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label><br/><br/>
            <asp:TextBox ID="contactFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt" TextMode="Phone"></asp:TextBox><br /><br/>
                    
            <asp:Label ID="Label4" runat="server" Text="From Date"></asp:Label><br/><br/>
            <asp:TextBox ID="fromDateFld" style="text-align:center;" runat="server" Height="40px" Width="50%" TextMode="Date" Font-Size="15pt"></asp:TextBox><br/><br/>

            <asp:Label ID="Label5" runat="server" Text="To Date"></asp:Label><br/><br/>
            <asp:TextBox ID="toDateFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt" TextMode="Date"></asp:TextBox><br /><br/>

            <asp:Label ID="Label6" runat="server" Text="Time of Arrival"></asp:Label><br/><br/>
            <asp:TextBox ID="timeArrivalFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt" TextMode="Time"></asp:TextBox><br /><br/>
            
            <asp:Label ID="Label7" runat="server" Text="Guess Count"></asp:Label><br/><br/>
            <asp:TextBox ID="countFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt" TextMode="Number"></asp:TextBox><br /><br/>
            
            <asp:Label ID="Label8" runat="server" Text="Payment Type"></asp:Label><br/><br/>
            <asp:DropDownList ID="paymentFld" style="text-align:center;" runat="server" Width="50%" Height="40px" Font-Size="15pt"></asp:DropDownList><br /><br/>

        </p>
        
        <div class="col-md-2 col-md-offset-5">
            <button type="button" runat="server" class="btn btn-primary btn-block" onserverclick="reserveBtn_Click">Reserve Now</button>
        </div><br/><br/><br/>

        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">
        <asp:Label ID="warnMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#CC0000"></asp:Label>
        </p>

        </form>
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
