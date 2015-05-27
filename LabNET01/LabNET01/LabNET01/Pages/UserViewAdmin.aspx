﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserViewAdmin.aspx.cs" Inherits="LabNET01.Pages.UserViewAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4><a href="javascript: history.go(-1)">Go Back</a></h4>
    <h4 align="right"><asp:LoginStatus ID="LoginStatus1" runat="server" /></h4>
    <h2 align="center">Management of users</h2>
    <h4 align="center">View for administrators</h4>

        <h6>
        <div>
        <table width="20%" align="center" ><tr>
        <td align="center">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF">
                    <td align="center">
                        <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                    </td>
                    <td align="center">
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td align="center">
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td align="center">
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #284775; border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td align="center">No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td align="center">
                        <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                    </td>
                    <td align="center">
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td align="center">
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td align="center">
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#284775;color: #000000;">
                                    <th  align="center" runat="server">UserId</th>
                                    <th  align="center" runat="server">User Name</th>
                                    <th  align="center" runat="server">Password</th>
                                    <th  align="center" runat="server">E-mail</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        </td></tr></table>
    </div>
            </h6>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId">
        </asp:SqlDataSource>
            <div>

        <br /><br />
        <div style='margin-left: 600px'>
            <div id="delete_box_users" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label1" runat="server">User Name</asp:Label>
                <br />
                <asp:Button ID="Button1" text="DELETE" runat="server" OnClick="Delete_Click" />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName">
                </asp:DropDownList>
                <br /> <br /> <br />
            </div>
            <div id="insert_box_users" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label13" runat="server">Role Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="label10" runat="server">User Name</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label11" runat="server">Password</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label12" runat="server">E-mail</asp:Label> 
                <br />
                <asp:Button ID="Button2" text="INSERT" runat="server" OnClick="Insert_Click" />
                <asp:TextBox ID="insert_role" runat="server"></asp:TextBox>
                <asp:TextBox ID="insert_username" runat="server"></asp:TextBox>
                <asp:TextBox ID="insert_password" runat="server"></asp:TextBox>
                <asp:TextBox ID="insert_email" runat="server"></asp:TextBox>
                <br /> <br /> <br />
            </div>
            <div id="update_box_users" runat="server">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label5" runat="server">User Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label7" runat="server">Password</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label8" runat="server">E-mail</asp:Label> 
                <br />
                <asp:Button ID="Button3" text="UPDATE" runat="server" OnClick="Update_Click" />
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName">
                </asp:DropDownList>
                <asp:TextBox ID="update_password" runat="server"></asp:TextBox>
                <asp:TextBox ID="update_email" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    </div>
         <br /> <br /> <br /> <br /> <br /> <br /> <br />
    </form>
</body>
</html>
