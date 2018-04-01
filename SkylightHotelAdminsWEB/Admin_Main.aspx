<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Main.aspx.cs" Inherits="Admin_Main" %>

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
                    
                    <li class="active"><a href="Admin_Main.aspx">Rooms</a></li>
                    
                    <li><a href="Admin_Tours.aspx">Tours</a></li>

                    <li><a href="Admin_Maintenance.aspx">Maintenance</a></li>

                    <li><a href="Admin_MyAcc.aspx">My Account</a></li>

                    <li><a href="Login.aspx">Log Out</a></li>
                
                </ul>
            </div>
            </div>
        </div>
        <!--NAVIGATION BAR END-->


        <!--BUDGET ROOM-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label4" style="margin-top:100px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Budget Room" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--Image-->
                <div class="col-md-8 col-md-offset-2">
                    <asp:Image ID="Image1" runat="server" Height="450px" Width="100%" ImageUrl="~/images/budget.jpg" />
                </div>
                <!--ROOM PRICE-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label2" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Room Price" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                              
                
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="budgetPriceFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px" AutoPostBack="False"></asp:TextBox>
                </div>

                <!--MAX PERSON COUNT-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label1" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Max Person Count" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="budgetCountFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <!--EXCEED COUNT PENALTY-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label3" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Exceed Count Penalty" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="budgetPenalFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <div class="col-md-4 col-md-offset-4">
                    <button type="button" style="margin-top:20px; margin-bottom:5px; padding:10px;" runat="server" class="btn btn-warning btn-block" onserverclick="budgetSaveBtn_Click">Save Info</button>    
                </div>

             </div>
        <!--BUDGET ROOM-->






        <!--STANDARD ROOM-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label5" style="margin-top:50px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Standard Room" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--Image-->
                <div class="col-md-8 col-md-offset-2">
                    <asp:Image ID="Image2" runat="server" Height="450px" Width="100%" ImageUrl="~/images/standard.jpg" />
                </div>
                <!--ROOM PRICE-->
               
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label6" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Room Price" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="standardPriceFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <!--MAX PERSON COUNT-->
              
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label7" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Max Person Count" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="standardCountFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <!--EXCEED COUNT PENALTY-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label8" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Exceed Count Penalty" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="standardPenalFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <div class="col-md-4 col-md-offset-4">
                    <button type="button" style="margin-top:20px; margin-bottom:5px; padding:10px;" runat="server" class="btn btn-warning btn-block" onserverclick="standardSaveBtn_Click">Save Info</button>    
                </div>

             </div>
        <!--STANDARD ROOM-->





        <!--DELUXE ROOM-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label9" style="margin-top:50px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Deluxe Room" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--Image-->
                <div class="col-md-8 col-md-offset-2">
                    <asp:Image ID="Image3" runat="server" Height="450px" Width="100%" ImageUrl="~/images/deluxe.jpg" />
                </div>
                <!--ROOM PRICE-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label10" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Room Price" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="deluxePriceFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <!--MAX PERSON COUNT-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label11" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Max Person Count" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                    
                    
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="deluxeCountFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <!--EXCEED COUNT PENALTY-->
                
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="Label12" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Exceed Count Penalty" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                    </div>
                
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="deluxePenalFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>

                <div class="col-md-4 col-md-offset-4">
                    <button type="button" style="margin-top:20px; margin-bottom:25px; padding:10px;" runat="server" class="btn btn-warning btn-block" onserverclick="deluxeSaveBtn_Click">Save Info</button>    
                </div>

             </div>
        <!--DELUXE ROOM-->
        



    </form>
</body>
</html>
