<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
<body style="">
    <div class="container-fluid" style="background-color:#0a8ac3; padding-bottom:35px;">
        <!--LOGO-->
        <div class="col-md-12" style="background-color:#186cb2; height:300px;">
            <img src="images/logo.jpg" width="100%" height="100%" />
        </div>

        <!--LOGIN PANEL-->
        <div class="col-md-6 col-md-offset-3" style="background-color:#186cb2; height:300px; margin-top:30px;">
            
            <form runat="server">
                <!--USERNAME LABEL-->
                <div class="col-md-2">
                    <asp:Label ID="Label1" style="margin-top:30px;" runat="server" Text="Username" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic" ForeColor="White"></asp:Label>
                </div>
                <!--USERNAME TEXTBOX-->
                <div class="col-md-10 col-md-offset-1">
                    <asp:TextBox ID="usernameFld" style="margin-top:5px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>
                <!--PASSWORD LABEL-->
                <div class="col-md-2">
                    <asp:Label ID="Label2" style="margin-top:5px;" runat="server" Text="Password" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic" ForeColor="White"></asp:Label>
                </div>
                <!--PASSWORD TEXTBOX-->
                <div class="col-md-10 col-md-offset-1">
                    <asp:TextBox ID="passwordFld" style="margin-top:5px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px" TextMode="Password"></asp:TextBox>
                </div>
                <!--BUTTON LOGIN-->
                <div class="col-md-6 col-md-offset-6">
                    <button type="button" style="margin-top:20px;" runat="server" class="btn btn-warning btn-block" onserverclick="loginBtn_Click">LOGIN</button>
                </div>
            </form>
        </div>

    </div>
</body>
</html>
