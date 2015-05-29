<%@ Page Title="Products Manage" Language="C#" MasterPageFile="../Site1.Master" AutoEventWireup="true" CodeBehind="ProductsViewLogged.aspx.cs" Inherits="LabNET01.Pages.Usr.WebForm6" %>

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
        </asp:Content>



