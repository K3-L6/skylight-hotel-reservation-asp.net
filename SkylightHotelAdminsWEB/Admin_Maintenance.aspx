<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Maintenance.aspx.cs" Inherits="Admin_Main" %>

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

                    <li class="active"><a href="Admin_Maintenance.aspx">Maintenance</a></li>

                    <li><a href="Admin_MyAcc.aspx">My Account</a></li>

                    <li><a href="Login.aspx">Log Out</a></li>
                
                </ul>
            </div>
            </div>
        </div>
        <!--NAVIGATION BAR END-->


        <!--Front Desk Users-->
            <div class="container-fluid">
                <!--Title-->
                <div class="col-md-8 col-md-offset-1">
                    <asp:Label ID="Label4" style="margin-top:100px; background-color:#0a8ac3; color:white; padding-left:50px; padding-top:5px; padding-bottom:5px;" runat="server" Text="Front Desk Users" Height="100%" Width="100%" Font-Size="40px" Font-Names="Century Gothic"></asp:Label>
                </div><br/>
                <!--LIST VIEW-->
                <div class="col-md-8 col-md-offset-2">





                    <asp:ListView ID="fduList" runat="server" DataKeyNames="fdu_username" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2;color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_lastNameLabel" runat="server" Text='<%# Eval("fdu_lastName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_firstNameLabel" runat="server" Text='<%# Eval("fdu_firstName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_emailLabel" runat="server" Text='<%# Eval("fdu_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_usernameLabel" runat="server" Text='<%# Eval("fdu_username") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_passwordLabel" runat="server" Text='<%# Eval("fdu_password") %>' />
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
                                    <asp:TextBox ID="fdu_lastNameTextBox" runat="server" Text='<%# Bind("fdu_lastName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_firstNameTextBox" runat="server" Text='<%# Bind("fdu_firstName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_emailTextBox" runat="server" Text='<%# Bind("fdu_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_usernameLabel1" runat="server" Text='<%# Eval("fdu_username") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_passwordTextBox" runat="server" Text='<%# Bind("fdu_password") %>' />
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
                                    <asp:TextBox ID="fdu_lastNameTextBox" runat="server" Text='<%# Bind("fdu_lastName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_firstNameTextBox" runat="server" Text='<%# Bind("fdu_firstName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_emailTextBox" runat="server" Text='<%# Bind("fdu_email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_usernameTextBox" runat="server" Text='<%# Bind("fdu_username") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="fdu_passwordTextBox" runat="server" Text='<%# Bind("fdu_password") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_lastNameLabel" runat="server" Text='<%# Eval("fdu_lastName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_firstNameLabel" runat="server" Text='<%# Eval("fdu_firstName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_emailLabel" runat="server" Text='<%# Eval("fdu_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_usernameLabel" runat="server" Text='<%# Eval("fdu_username") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_passwordLabel" runat="server" Text='<%# Eval("fdu_password") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">fdu_lastName</th>
                                                <th runat="server">fdu_firstName</th>
                                                <th runat="server">fdu_email</th>
                                                <th runat="server">fdu_username</th>
                                                <th runat="server">fdu_password</th>
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
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_lastNameLabel" runat="server" Text='<%# Eval("fdu_lastName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_firstNameLabel" runat="server" Text='<%# Eval("fdu_firstName") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_emailLabel" runat="server" Text='<%# Eval("fdu_email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_usernameLabel" runat="server" Text='<%# Eval("fdu_username") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="fdu_passwordLabel" runat="server" Text='<%# Eval("fdu_password") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                
                
                
                
                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SkylightHotelDatabaseConnectionString3 %>" DeleteCommand="delete from tbl_fdu where [fdu_username] = @fdu_username" InsertCommand="insert into tbl_fdu values (@fdu_username, @fdu_password, @fdu_lastName, @fdu_firstName, @fdu_email)" SelectCommand="SELECT [fdu_lastName], [fdu_firstName], [fdu_email], [fdu_username], [fdu_password] FROM [tbl_fdu]">
                        <DeleteParameters>
                            <asp:Parameter Name="fdu_username" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="fdu_username" />
                            <asp:Parameter Name="fdu_password" />
                            <asp:Parameter Name="fdu_lastName" />
                            <asp:Parameter Name="fdu_firstName" />
                            <asp:Parameter Name="fdu_email" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                
                
                
                
                
                </div>
                
             </div>
        <!--Front Desk Users-->

        
      




    </form>
</body>
</html>
