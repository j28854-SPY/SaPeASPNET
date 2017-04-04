<%@ Page Title="Contact | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <!--begin wrapper container-->


    <!--begin contactcontent divider of wrapper-->

    <div id="contactcontent">



    <!--begin contactcontent leftside-->


     <div id="contactleftside">
    <table id="contactleftsidetable">
        <tr>
            <td><asp:Label ID="contactnamelbllink" runat="server" Text="Name: -"></asp:Label></td>
            <td><asp:TextBox ID="contactnametextboxlink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactRFVnamelink" runat="server" ErrorMessage="Enter Name !!" ControlToValidate="contactnametextboxlink"></asp:RequiredFieldValidator>

            </td>

        </tr>

        <tr>
            <td><asp:Label ID="contactemaillbllink" runat="server" Text="Email Address: -"></asp:Label></td>
            <td><asp:TextBox ID="contactemailtextboxlink" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="contactemailREVlink" runat="server" ErrorMessage="Provide Real Email" ControlToValidate="contactemailtextboxlink" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>


        <tr>
            <td><asp:Label ID="contactsubjectlbllink" runat="server" Text="Subject: -"></asp:Label></td>
            <td><asp:TextBox ID="contactsubjecttextboxlink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactsubjectRFVlink" runat="server" ErrorMessage="Enter Subject !!" ControlToValidate="contactsubjecttextboxlink"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td><asp:Label ID="contactmessagelbllink" runat="server" Text="Message: -"></asp:Label></td>
            <td><asp:TextBox ID="contactmessagetextboxlink" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactmessageRFVlink" runat="server" ErrorMessage="Enter Message !!" ControlToValidate="contactmessagetextboxlink"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Button ID="contactsendlink" runat="server" Text="Send Message" OnClick="contactsendlink_Click" /></td>

            <td><asp:Label ID="contactresultlbllink" runat="server"></asp:Label>
            </td>
        </tr>
    </table> 
    </div>   

    <!--end contactcontent leftside-->






    <!--begin contactcontent rightside-->

    <div id="contactrightside">


        <div id="map">

             <asp:ImageMap ID="staticmap" runat="server" ImageUrl="https://maps.googleapis.com/maps/api/staticmap?center=4.885,114.931&zoom=15&size=610x450&maptype=roadmap&markers=color:blue%7Clabel:S%7C4.885,114.931&markers=color:green%7Clabel:G%7C4.888,114.939&key=AIzaSyBJHM3DIGFZwsTyeDUM3rLogk9ewg2Q04I">

            </asp:ImageMap>

        </div>


    </div>

    <!--end contactcontent rightside-->


        <div id="contactbelowcontent">


            <asp:Label ID="contactbelowcontentlabel" runat="server" Text="Our Shop Location" Width="100%" CssClass="contactbelowcontentlabel"></asp:Label>


        </div>





    </div>

    <!--end contactcontent divider of wrapper-->

    <!--end wrapper container-->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
