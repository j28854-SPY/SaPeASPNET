<%@ Page Title="Item Details | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="CO5027.Pages.item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">

    <div id="itempagecontent">



      
                <div id="itempgdiv1"><asp:Image ID="itempgpic" runat="server" CssClass="itempgpiccss" /></div>
            
                <div id="itempgdiv2"><h3><asp:Label ID="itempglabel" runat="server" CssClass="itempglabelcss"></asp:Label></h3></div>
           

         
                <div id="itempgdiv3"><asp:Label runat="server" ID="itempginfolabel" CssClass="itempginfolabelcss"></asp:Label></div>           


         
                <div id="itempgdiv4"><asp:Label runat="server" ID="itempgcostlabel" CssClass="itempgcostcss"></asp:Label></div>
                <div id="itempgdiv7"><asp:Label runat="server" ID="itempgcostresult" CssClass="itempgcostresultcss"></asp:Label></div>
                <div id="itempgdiv9"><asp:Label runat="server" ID="itempgindata" CssClass="itempgindatacss" Text="In Store Now BOi"></asp:Label></div>
                <div id="itempgdiv8"><h1><asp:Label runat="server" ID="itempgcode"></asp:Label></h1></div>
                <div id="itempgdiv5"><asp:DropDownList runat="server" ID="itempgddl" CssClass="itempgddlcss"></asp:DropDownList></div>
                <div id="itempgdiv6"><asp:Button runat="server" Text="Add To PushCart" ID="itempgcostbutton" CssClass="itempgcostbuttoncss"></asp:Button></div>
                
      

     
                
    

     
                



    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
