<%@ Page Title="Item Details | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="CO5027.Pages.item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <table class="itempgtable">

        <tr>
            <td><asp:Image ID="itempgpic" runat="server" CssClass="itempgpiccss" /></td>
            
            <td><h3><asp:Label ID="itempglabel" runat="server" CssClass="itempglabelcss"></asp:Label></h3></td>
        </tr>

        <tr>
            <td><asp:Label runat="server" ID="itempginfolabel" CssClass="itempginfolabelcss"></asp:Label></td>           
        </tr>

        <tr>
            <td><asp:Label runat="server" ID="itempgcostlabel" CssClass="itempgcostcss"></asp:Label></td>
            <td><asp:DropDownList runat="server" ID="itempgddl"></asp:DropDownList></td>
            <td><asp:Button runat="server" Text="Add To PushCart" ID="itempgcostbutton"></asp:Button></td>
            <td><asp:Label runat="server" ID="itempgcostresult"></asp:Label></td>
        </tr>

        <tr>
            <td><h1><asp:Label runat="server" ID="itempgcode"></asp:Label></h1></td>
        </tr>

        <tr>
            <td><asp:Label runat="server" ID="itempgindata" CssClass="itempgindatacss" Text="In Store Now BOi"></asp:Label></td>
        </tr>


    </table>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
