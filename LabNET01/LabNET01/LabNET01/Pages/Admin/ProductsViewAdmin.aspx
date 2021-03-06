﻿<%@ Page Title="Products Manage" Language="C#" MasterPageFile="../Site1.Master"  AutoEventWireup="true" CodeBehind="ProductsViewAdmin.aspx" Inherits="LabNET01.Pages.Admin.ProductsViewAdmin.aspx" %>

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
    

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" 
                    DeleteCommand="DELETE FROM [Products] WHERE [Id] = @DeleteId" 
                    InsertCommand="INSERT INTO [Products] ([Name], [Price], [Quantity], [Weight], [Producer]) VALUES (@Name, @Price, @Quantity, @Weight, @Producer)" 
                    SelectCommand="SELECT * FROM [Products]" 
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Quantity] = @Quantity, [Weight] = @Weight, [Producer] = @Producer WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:ControlParameter Name="DeleteId" ControlId="DropDownList1" PropertyName="SelectedValue" />
                    </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox3"  Name="Name" Type="String" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox4"  Name="Price" Type="Double" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox5"  Name="Quantity" Type="Int32" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox6"  Name="Weight" Type="Int32" PropertyName="Text"/>
                            <asp:ControlParameter ControlID="TextBox7"  Name="Producer" Type="String" PropertyName="Text"/>
                        </InsertParameters>
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
            <div id="delete_box" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label1" runat="server">ID</asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Delete" runat="server" Text="DELETE" OnClick="DeleteButton_Click" />
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
                </asp:DropDownList>
                <br /> <br />
            </div>
            <div id="insert_box" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label2" runat="server">Name</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label3" runat="server">Price</asp:Label> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label6" runat="server">Quantity</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label5" runat="server">Weight</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label4" runat="server">Producer</asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Insert" runat="server" Text="INSERT" OnClick="InsertButton_Click" />
                &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                &nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br /> <br />
            </div>
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
        </div>

        <br /> <br /> <br /> <br /> <br />
    </asp:Content>


