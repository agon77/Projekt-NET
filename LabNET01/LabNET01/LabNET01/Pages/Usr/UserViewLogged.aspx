<%@ Page Title="User Manage" Language="C#" MasterPageFile="Site1.Master"  AutoEventWireup="true" CodeBehind="UserViewLogged.aspx.cs" Inherits="LabNET01.Pages.Usr.UserViewLogged" %>

        <asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
        <section class="featured">
            <div class="content-wrapper">
                <div align="center">
                    <hgroup class="title">
                        <h1><%: Title %></h1>
                        <h2>Project for lectures at The University Of Technology in Lodz</h2>
                    </hgroup>
                </div>
           </div>
        </section>
    </asp:Content>

    <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
         <div id="user_logged" runat="server">
            <div>
                <h5>
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
                    </h5>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId WHERE [UserName] = @Username" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>"
                UpdateCommand="UPDATE [aspnet_Membership] SET [Password] = @Password, [Email] = @Email WHERE [UserId] = @UserId">
                <SelectParameters>
                    <asp:Parameter Name="Username"/>
                </SelectParameters>
            </asp:SqlDataSource>
                    <div>

                <br /><br />
                <div style='margin-left: 750px'>
                    <div id="update_emai_box" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label1" runat="server">E-mail</asp:Label>
                         <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" text="UPDATE E-MAIL" runat="server" OnClick="Update_Email_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="update_email" runat="server"></asp:TextBox>
                    </div>
                    <div id="update_password_box" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label7" runat="server">Password</asp:Label>
                        <br />
                        <asp:Button ID="Button3" text="UPDATE PASSWORD" runat="server" OnClick="Update_Password_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="update_password" runat="server"></asp:TextBox>
                        <br /> <br />    
                    </div>
                </div>
            </div>
                 <br /> <br /> <br /> <br /> <br /> <br /> <br />
                <asp:LoginName ID="LoginName1" runat="server" Visible ="false"/>
            </div>
                 <br /> <br /> <br /> <br /> <br /> <br /> <br />
        </div>
    </asp:Content>
