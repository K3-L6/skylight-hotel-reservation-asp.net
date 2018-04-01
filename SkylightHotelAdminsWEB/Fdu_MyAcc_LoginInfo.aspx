<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fdu_MyAcc_LoginInfo.aspx.cs" Inherits="Admin_Main" %>

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
    <form runat="server">

    <!--NAVIGATION BAR START-->
        <div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                
                <div class="navbar-header">
                    <img src="images/logo.jpg" width="350" height="50"/>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
            
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li><a href="Admin_Main.aspx">Rooms</a></li>
                    
                    <li><a href="Admin_Tours.aspx">Tours</a></li>

                    <li><a href="Admin_Maintenance.aspx">Maintenance</a></li>

                    <li class="active"><a href="Admin_MyAcc.aspx">My Account</a></li>

                    <li><a href="Login.aspx">Log Out</a></li>
                
                </ul>
            </div>
            </div>
        </div>
        <!--NAVIGATION BAR END-->


        <!--My Account Settings-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label4" style="margin-top:100px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="My Account Settings" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                
               
                <!--Username-->
               
                    <div class="col-md-4 col-md-offset-5">
                        <asp:Label ID="Label2" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Username" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-6 col-md-offset-3">
                        <asp:TextBox ID="userFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                    </div>
                <!--Old Password-->
               
                    <div class="col-md-4 col-md-offset-5">
                        <asp:Label ID="Label1" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Old Password" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-6 col-md-offset-3">
                        <asp:TextBox ID="passFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px" TextMode="Password"></asp:TextBox>
                    </div>
                <!--New Password-->
               
                    <div class="col-md-4 col-md-offset-5">
                        <asp:Label ID="Label3" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="New Password" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-6 col-md-offset-3">
                        <asp:TextBox ID="npassFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px" TextMode="Password"></asp:TextBox>
                    </div>
                
                <!--Repeat Password-->
               
                    <div class="col-md-4 col-md-offset-5">
                        <asp:Label ID="Label5" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Repeat Password" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-6 col-md-offset-3">
                        <asp:TextBox ID="rpassFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px" TextMode="Password"></asp:TextBox>
                    </div>
                

                
                <!--SAVE INFO BUTTON-->
                <div class="row">
                    <div class="col-md-2 col-md-offset-4">
                        <button type="button" style="margin-top:20px; margin-bottom:5px; padding:10px;" runat="server" onserverclick="saveBtn_Click" class="btn btn-warning btn-block" >Save</button>    
                    </div>

                    <div class="col-md-2">
                        <button type="button" style="margin-top:20px; margin-bottom:5px; padding:10px;" runat="server" onserverclick="backBtn_Click" class="btn btn-warning btn-block" >Back</button>    
                    </div>

                </div>
                
                
                </div>
        <!--My Account Settings-->

        

        







        



    </form>
</body>
</html>
