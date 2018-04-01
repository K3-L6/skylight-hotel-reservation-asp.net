<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailValidation.aspx.cs" Inherits="Home" %>

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

        <!--ROOM PIC AND INFO START-->
        
        <h1 style="font-family:'Century Gothic'; font-size:45px; text-align:center; padding-top:13%; padding-bottom:3%;">Please check your email for the validation code.</h1>
        <form runat="server">
        <p style="font-family:'Century Gothic';font-size:20px;text-align:center;">
              
            <asp:Label ID="titleLabel" runat="server" Text="Validation Code"></asp:Label><br/><br/>
            <asp:TextBox ID="codeFld" style="text-align:center;" runat="server" Height="40px" Width="50%" Font-Size="15pt"></asp:TextBox><br/><br/>

        </p>
        

        <div class="col-md-4 col-md-offset-4">
            <button type="button" runat="server" class="btn btn-primary btn-block" onserverclick="validateBtn_Click">Submit</button>
        </div><br/><br/><br/>

        <div class="col-md-2 col-md-offset-5">
            <button type="button" runat="server" class="btn btn-warning btn-block" onserverclick="resendBtn_Click">Resend Email Code</button>
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
