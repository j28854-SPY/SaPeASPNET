<%@ Page Title="Admin | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="CO5027.Pages.Administer.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <div id="admin_gridview1">


        <asp:Label ID="admin_lbl_itemtable" runat="server" Text="Table of Item in Sql Server Database" Width="100%" CssClass="admin_label_class"></asp:Label>

        <hr />
       

        <asp:GridView ID="admin_gv_itemtable" runat="server" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="admin_item_table" CssClass="admin_gv_mta_class" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                <asp:BoundField DataField="Versions" HeaderText="Versions" SortExpression="Versions" />
                <asp:BoundField DataField="ItemDetails" HeaderText="ItemDetails" SortExpression="ItemDetails" />
                <asp:BoundField DataField="ItemCostBND" HeaderText="ItemCostBND" SortExpression="ItemCostBND" />
                <asp:BoundField DataField="ItemDisplay" HeaderText="ItemDisplay" SortExpression="ItemDisplay" />
                <asp:BoundField DataField="Code" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="Code" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>

     

        <asp:SqlDataSource ID="admin_item_table" runat="server" ConnectionString="<%$ ConnectionStrings:SaPERemote %>" SelectCommand="SELECT * FROM [item_table]" DeleteCommand="DELETE FROM [item_table] WHERE [Code] = @Code" InsertCommand="INSERT INTO [item_table] ([ItemName], [Versions], [ItemDetails], [ItemCostBND], [ItemDisplay]) VALUES (@ItemName, @Versions, @ItemDetails, @ItemCostBND, @ItemDisplay)" UpdateCommand="UPDATE [item_table] SET [ItemName] = @ItemName, [Versions] = @Versions, [ItemDetails] = @ItemDetails, [ItemCostBND] = @ItemCostBND, [ItemDisplay] = @ItemDisplay WHERE [Code] = @Code">
            <DeleteParameters>
                <asp:Parameter Name="Code" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ItemName" Type="String" />
                <asp:Parameter Name="Versions" Type="Int32" />
                <asp:Parameter Name="ItemDetails" Type="String" />
                <asp:Parameter Name="ItemCostBND" Type="Decimal" />
                <asp:Parameter Name="ItemDisplay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ItemName" Type="String" />
                <asp:Parameter Name="Versions" Type="Int32" />
                <asp:Parameter Name="ItemDetails" Type="String" />
                <asp:Parameter Name="ItemCostBND" Type="Decimal" />
                <asp:Parameter Name="ItemDisplay" Type="String" />
                <asp:Parameter Name="Code" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

     

    </div>




    <div id="admin_gridview2">

        <asp:Label ID="admin_lbl_itemversions" class="admin_label_class1" runat="server" Text="Table of Item Versions in Sql Server Database" Width="100%"></asp:Label>

        <hr />

        <asp:GridView ID="admin_gv_itemversion" runat="server" CssClass="admin_gv_mta_class" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Code" DataSourceID="admin_item_versions" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                <asp:BoundField DataField="Code" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="Code" />
                <asp:BoundField DataField="ItemDisplay" HeaderText="ItemDisplay" SortExpression="ItemDisplay" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
       

        <asp:SqlDataSource ID="admin_item_versions" runat="server" ConnectionString="<%$ ConnectionStrings:SaPERemote %>" DeleteCommand="DELETE FROM [item_versions] WHERE [Code] = @Code" InsertCommand="INSERT INTO [item_versions] ([ItemName], [ItemDisplay]) VALUES (@ItemName, @ItemDisplay)" SelectCommand="SELECT * FROM [item_versions]" UpdateCommand="UPDATE [item_versions] SET [ItemName] = @ItemName, [ItemDisplay] = @ItemDisplay WHERE [Code] = @Code">
            <DeleteParameters>
                <asp:Parameter Name="Code" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ItemName" Type="String" />
                <asp:Parameter Name="ItemDisplay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ItemName" Type="String" />
                <asp:Parameter Name="ItemDisplay" Type="String" />
                <asp:Parameter Name="Code" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       

    </div>



    <asp:LinkButton ID="upload_item_data_page" runat="server" PostBackUrl="~/Pages/item_upload.aspx">Upload here :) </asp:LinkButton>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
