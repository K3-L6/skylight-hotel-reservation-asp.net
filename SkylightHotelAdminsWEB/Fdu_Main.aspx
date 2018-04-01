<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fdu_Main.aspx.cs" Inherits="Admin_Main" %>

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
                    
                    <li class="active"><a href="Fdu_Main.aspx">Web Reservation</a></li>
                    
                    <li><a href="Fdu_ReservedGuest.aspx">Reserved Guest</a></li>

                    <li><a href="Fdu_CustomerList.aspx">Customer List</a></li>

                    <li><a href="Fdu_MyAcc.aspx">My Account</a></li>

                    <li><a href="Login.aspx">Log Out</a></li>
                
                </ul>
            </div>
            </div>
        </div>
        <!--NAVIGATION BAR END-->


        <!--Main Container START-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label4" style="margin-top:100px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Website Reservation List" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                
                <!--VIEW START-->
                <div class="col-md-12 col-md-offset-3" style="padding-top:50px;">


                    <asp:ListView ID="rsvationList" runat="server" DataKeyNames="rsvation_email" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2;color: #284775;">
                                <td>
                                    <asp:Label ID="rsvation_nameLabel" runat="server" Text='<%# Eval("rsvation_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_emailLabel" runat="server" Text='<%# Eval("rsvation_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_contactLabel" runat="server" Text='<%# Eval("rsvation_contact") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_guessCountLabel" runat="server" Text='<%# Eval("rsvation_guessCount") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_roomBillLabel" runat="server" Text='<%# Eval("rsvation_roomBill") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #FFCC66;color: #000080;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_nameTextBox" runat="server" Text='<%# Bind("rsvation_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_emailLabel1" runat="server" Text='<%# Eval("rsvation_email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_contactTextBox" runat="server" Text='<%# Bind("rsvation_contact") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_guessCountTextBox" runat="server" Text='<%# Bind("rsvation_guessCount") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_roomBillTextBox" runat="server" Text='<%# Bind("rsvation_roomBill") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_nameTextBox" runat="server" Text='<%# Bind("rsvation_name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_emailTextBox" runat="server" Text='<%# Bind("rsvation_email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_contactTextBox" runat="server" Text='<%# Bind("rsvation_contact") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_guessCountTextBox" runat="server" Text='<%# Bind("rsvation_guessCount") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="rsvation_roomBillTextBox" runat="server" Text='<%# Bind("rsvation_roomBill") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6;color: #333333;">
                                <td>
                                    <asp:Label ID="rsvation_nameLabel" runat="server" Text='<%# Eval("rsvation_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_emailLabel" runat="server" Text='<%# Eval("rsvation_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_contactLabel" runat="server" Text='<%# Eval("rsvation_contact") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_guessCountLabel" runat="server" Text='<%# Eval("rsvation_guessCount") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_roomBillLabel" runat="server" Text='<%# Eval("rsvation_roomBill") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th runat="server">rsvation_name</th>
                                                <th runat="server">rsvation_email</th>
                                                <th runat="server">rsvation_contact</th>
                                                <th runat="server">rsvation_guessCount</th>
                                                <th runat="server">rsvation_roomBill</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                <td>
                                    <asp:Label ID="rsvation_nameLabel" runat="server" Text='<%# Eval("rsvation_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_emailLabel" runat="server" Text='<%# Eval("rsvation_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_contactLabel" runat="server" Text='<%# Eval("rsvation_contact") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_guessCountLabel" runat="server" Text='<%# Eval("rsvation_guessCount") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rsvation_roomBillLabel" runat="server" Text='<%# Eval("rsvation_roomBill") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                   

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkylightHotelDatabaseConnectionString6 %>" SelectCommand="SELECT [rsvation_name], [rsvation_email], [rsvation_contact], [rsvation_guessCount], [rsvation_roomBill] FROM [tbl_rsvation]"></asp:SqlDataSource>
                   

                </div>
                    
                <!--Reservation Form-->

                <div class="col-md-5 col-md-offset-4">
                    <asp:Label ID="Label2" style="margin-top:30px; background-color:#0a8ac3; color:white; padding-left:40px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Customer Email" Height="100%" Width="100%" Font-Size="25px" Font-Names="Century Gothic"></asp:Label>
                </div>
                    
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="mailFld" style="margin-top:10px; text-align:center;" runat="server" Width="100%" Height="100%" Font-Names="Century Gothic" Font-Size="20px"></asp:TextBox>
                </div>  

                <!--Button-->
                 <div class="col-md-4 col-md-offset-5">
                    <button type="button" style="margin-top:20px; margin-bottom:5px; padding:10px;" runat="server" onserverclick="reserve_Click" class="btn btn-warning btn-block" >Reserve</button>    
                </div>


                    
             </div>
        <!--Main Container END-->

        




        



    </form>
</body>
</html>
