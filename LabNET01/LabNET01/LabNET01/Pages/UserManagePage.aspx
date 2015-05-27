<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagePage.aspx.cs" Inherits="LabNET01.Pages.UserManagePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
    
<form id="form1" runat="server">
<div id="all_page" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId WHERE [UserName] = @Username" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>"
        UpdateCommand="UPDATE [aspnet_Membership] SET [Password] = @Password, [Email] = @Email WHERE [UserId] = @UserId">
        <SelectParameters>
            <asp:Parameter Name="Username"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"                 
        SelectCommand="SELECT m.UserId, u.UserName, m.Password, m.Email FROM [aspnet_Membership] m JOIN [aspnet_Users] u ON u.UserId = m.UserId">
    </asp:SqlDataSource>

    <h4 align="right"><asp:LoginStatus ID="LoginStatus1" runat="server" /></h4>
    <h2 align="center">User Management</h2>
        <h3>
        <div id="edit_own_data_users" runat="server" align="center">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:CommandField ShowEditButton="True"/>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
        </div>
        </h3>
    <div id="admin_view_users" runat="server">
    <h3>
    <asp:DataList ID="DataList1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource2" CaptionAlign="Top" HorizontalAlign="Center" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ShowFooter="False" CellSpacing="2" GridLines="Both" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="2px">
        <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Medium" />
        <HeaderTemplate>
			<TR>
                <TD>UserID</TD>
				<TD>User Name</TD>
                <TD>Password</TD>
                <TD>Email</TD>
			</TR>
	</HeaderTemplate>
	    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
	<ItemTemplate>
			<TR>
                <TD>
					<asp:Label id=Label9 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "UserID") %> '>
					</asp:Label>
				</TD>
				<TD>
					<asp:Label id=Label3 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "UserName") %> '>
					</asp:Label>
				</TD>
			    <TD>
                    <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Password") %> '> 
                    </asp:Label>
                </TD>
				<TD>
					<asp:Label id=Label2 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Email") %>'>
					</asp:Label>
				</TD>
			</TR>
	</ItemTemplate>
        <SelectedItemStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
    </asp:DataList>
    </h3>
    
        <br /><br /><br />
        <div style='margin-left: 500px'>
            <div id="delete_box_users" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label1" runat="server">User Name</asp:Label>
                <br />
                <asp:Button ID="Button1" text="DELETE" runat="server" OnClick="Delete_Click" />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label5" runat="server">User Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label7" runat="server">Password</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label8" runat="server">E-mail</asp:Label> 
                <br />
                <asp:Button ID="Button3" text="UPDATE" runat="server" OnClick="Update_Click" />
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName">
                </asp:DropDownList>
                <asp:TextBox ID="update_password" runat="server"></asp:TextBox>
                <asp:TextBox ID="update_email" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
        <asp:LoginName ID="LoginName1" runat="server" Visible ="false"/>
    </div>
</form>
</body>
</html>
