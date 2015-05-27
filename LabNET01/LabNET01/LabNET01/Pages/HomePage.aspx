<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LabNET01.Pages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4 align="right"><asp:LoginStatus ID="LoginStatus2" runat="server" /></h4>
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
    </form>
</body>
</html>
