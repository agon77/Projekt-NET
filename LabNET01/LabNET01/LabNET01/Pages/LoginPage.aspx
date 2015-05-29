<%@ Page Title="Login" Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LabNET01.Pages.LoginPage" %>

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
        <div>
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                            <br /> <br /> <br /> <br />
                            <div align="center">
                                <h3>Please log in for authentication.</h3>
                                <asp:Login ID="Login1" runat="server" onloggedin="Login1_LoggedIn" font-size="Large" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"  ForeColor="#333333" TextLayout="TextOnTop" Height="204px" Width="315px">
                                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                                    <TextBoxStyle Font-Size="0.8em" />
                                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                                </asp:Login>
                            </div>
                        </AnonymousTemplate>
                    </asp:LoginView>
                </AnonymousTemplate>
            
                <LoggedInTemplate>
                <div>
                    <div align="center">
                        <h2>Welcome <asp:LoginName ID="LoginName1" runat="server" />!</h2>
                        <br />
                        <br />
                        <br />
                        <a href="ProductsViewAdmin.aspx">Products View Admin</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="ProductsViewModerator.aspx">Products View Moderator</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="ProductsViewLogged.aspx">Products View Logged</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="UserViewAdmin.aspx">User View Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="UserViewModerator.aspx">User View Moderator</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="UserViewLogged.aspx">User View Logged</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
                </LoggedInTemplate>  
            </asp:LoginView>
        </div>
    </asp:Content>

