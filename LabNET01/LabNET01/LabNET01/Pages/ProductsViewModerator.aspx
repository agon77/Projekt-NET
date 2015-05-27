<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsViewModerator.aspx.cs" Inherits="LabNET01.Pages.WebForm5" %>

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
    <h2 align="center">Products Table</h2>
    <h4 align="center">View for moderators</h4>
        <h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="63px" Width="280px" BorderColor="Black" BorderStyle="Double" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                        <asp:BoundField DataField="Producer" HeaderText="Producer" SortExpression="Producer" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            </h3>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" 
                    SelectCommand="SELECT * FROM [Products]" 
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Quantity] = @Quantity, [Weight] = @Weight, [Producer] = @Producer WHERE [Id] = @Id">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox1"  Name="Name" Type="String" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox8"  Name="Price" Type="Double" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox9"  Name="Quantity" Type="Int32" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox10"  Name="Weight" Type="String" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox11"  Name="Producer" Type="String" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="DropDownList2" Name="Id" Type="Int32" PropertyName="SelectedValue" />
                        </UpdateParameters>
            </asp:SqlDataSource>

            <br />
            <br />
            <br />
            <br />
        <div style='margin-left: 500px'>
            <div id="update_box" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label7" runat="server">ID</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label8" runat="server">Name</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label11" runat="server">Price</asp:Label> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label10" runat="server">Quantity</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label9" runat="server">Weight</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label12" runat="server">Producer</asp:Label>         
                <br />   
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Update" runat="server" Text="UPDATE" OnClick="UpdateButton_Click" /> 
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
                </asp:DropDownList>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </div>
             <br /> <br /> <br /> <br />
    </form>
</body>
</html>
