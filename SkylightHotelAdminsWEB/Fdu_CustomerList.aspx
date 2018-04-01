<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fdu_CustomerList.aspx.cs" Inherits="Admin_Main" %>

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
                    
                    <li><a href="Fdu_Main.aspx">Web Reservation</a></li>
                    
                    <li><a href="Fdu_ReservedGuest.aspx">Reserved Guest</a></li>

                    <li class="active"><a href="Fdu_CustomerList.aspx">Customer List</a></li>

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
                    <asp:Label ID="Label4" style="margin-top:100px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Customer List" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                
                <div class="col-md-12 col-md-offset-2" style="padding-top:50px;">
                    <asp:ListView ID="guestList" runat="server" DataKeyNames="guest_email" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2;color: #284775;">
                                <td>
                                    <asp:Label ID="guest_nameLabel" runat="server" Text='<%# Eval("guest_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_emailLabel" runat="server" Text='<%# Eval("guest_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_contactLabel" runat="server" Text='<%# Eval("guest_contact") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_roomNumberLabel" runat="server" Text='<%# Eval("guest_roomNumber") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_billLabel" runat="server" Text='<%# Eval("guest_bill") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_outDateLabel" runat="server" Text='<%# Eval("guest_outDate") %>' />
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
                                    <asp:TextBox ID="guest_nameTextBox" runat="server" Text='<%# Bind("guest_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_emailLabel1" runat="server" Text='<%# Eval("guest_email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_contactTextBox" runat="server" Text='<%# Bind("guest_contact") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_roomNumberTextBox" runat="server" Text='<%# Bind("guest_roomNumber") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_billTextBox" runat="server" Text='<%# Bind("guest_bill") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_outDateTextBox" runat="server" Text='<%# Bind("guest_outDate") %>' />
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
                                    <asp:TextBox ID="guest_nameTextBox" runat="server" Text='<%# Bind("guest_name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_emailTextBox" runat="server" Text='<%# Bind("guest_email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_contactTextBox" runat="server" Text='<%# Bind("guest_contact") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_roomNumberTextBox" runat="server" Text='<%# Bind("guest_roomNumber") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_billTextBox" runat="server" Text='<%# Bind("guest_bill") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="guest_outDateTextBox" runat="server" Text='<%# Bind("guest_outDate") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6;color: #333333;">
                                <td>
                                    <asp:Label ID="guest_nameLabel" runat="server" Text='<%# Eval("guest_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_emailLabel" runat="server" Text='<%# Eval("guest_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_contactLabel" runat="server" Text='<%# Eval("guest_contact") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_roomNumberLabel" runat="server" Text='<%# Eval("guest_roomNumber") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_billLabel" runat="server" Text='<%# Eval("guest_bill") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_outDateLabel" runat="server" Text='<%# Eval("guest_outDate") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th runat="server">guest_name</th>
                                                <th runat="server">guest_email</th>
                                                <th runat="server">guest_contact</th>
                                                <th runat="server">guest_roomNumber</th>
                                                <th runat="server">guest_bill</th>
                                                <th runat="server">guest_outDate</th>
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
                                    <asp:Label ID="guest_nameLabel" runat="server" Text='<%# Eval("guest_name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_emailLabel" runat="server" Text='<%# Eval("guest_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_contactLabel" runat="server" Text='<%# Eval("guest_contact") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_roomNumberLabel" runat="server" Text='<%# Eval("guest_roomNumber") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_billLabel" runat="server" Text='<%# Eval("guest_bill") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="guest_outDateLabel" runat="server" Text='<%# Eval("guest_outDate") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkylightHotelDatabaseConnectionString10 %>" SelectCommand="SELECT [guest_name], [guest_email], [guest_contact], [guest_roomNumber], [guest_bill], [guest_outDate] FROM [tbl_guest]"></asp:SqlDataSource>
                </div>
                                
                    
             </div>
        <!--Main Container END-->

        




        



    </form>
</body>
</html>
