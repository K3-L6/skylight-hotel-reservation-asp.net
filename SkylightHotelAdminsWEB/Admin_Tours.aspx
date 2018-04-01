<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Tours.aspx.cs" Inherits="Admin_Main" %>

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
                    
                    <li class="active"><a href="Admin_Tours">Tours</a></li>

                    <li><a href="Admin_Maintenance.aspx">Maintenance</a></li>

                    <li><a href="Admin_MyAcc.aspx">My Account</a></li>

                    <li><a href="Login.aspx">Log Out</a></li>
                
                </ul>
            </div>
            </div>
        </div>
        <!--NAVIGATION BAR END-->


        <!--UNDERGROUND RIVER-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label4" style="margin-top:100px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Underground River Palawan" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--Image-->
                <div class="col-md-8 col-md-offset-2">
                    <asp:Image ID="Image1" runat="server" Height="450px" Width="100%" ImageUrl="~/images/undergroundriver.jpg" />
                </div>
                <!--PRICE PER PAX-->
                <div class="row">
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label2" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Price Per Person" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-2">
                        <button type="button" style="margin-top:31px; padding:10px;" runat="server" onserverclick="undergroundriverSaveBtn_Click" class="btn btn-warning btn-block">SAVE</button>
                    </div>            
                </div>
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="undergroundRiverPriceFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>
             </div>
        <!--UNDERGROUND RIVER-->

        <!--HONDA BAY-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label1" style="margin-top:50px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Honda Bay Tour" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--Image-->
                <div class="col-md-8 col-md-offset-2">
                    <asp:Image ID="Image2" runat="server" Height="450px" Width="100%" ImageUrl="~/images/hondabay.jpg" />
                </div>
                <!--PRICE PER PAX-->
                <div class="row">
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label3" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Price Per Person" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-2">
                        <button type="button" style="margin-top:31px; padding:10px;" runat="server" onserverclick="hondabaySaveBtn_Click" class="btn btn-warning btn-block">SAVE</button>
                    </div>            
                </div>
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="hondabayPriceFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>
             </div>
        <!--HONDA BAY-->




        <!--DOS PALMAS RESORT-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label5" style="margin-top:50px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Dos Palmas Resort" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--Image-->
                <div class="col-md-8 col-md-offset-2">
                    <asp:Image ID="Image3" runat="server" Height="450px" Width="100%" ImageUrl="~/images/dospalmas.jpg" />
                </div>
                <!--PRICE PER PAX-->
                <div class="row">
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label6" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Price Per Person" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    <div class="col-md-2">
                        <button type="button" style="margin-top:31px; padding:10px;" runat="server" onserverclick="dospalmasSaveBtn_Click" class="btn btn-warning btn-block">SAVE</button>
                    </div>            
                </div>
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="dospalmasPriceFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>
             </div>
        <!--DOS PALMAS RESORT-->






        



    </form>
</body>
</html>
