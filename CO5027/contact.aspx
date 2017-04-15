<%@ Page Title="Contact | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <!--begin wrapper container-->


    <!--begin contactcontent divider of wrapper-->

    <div id="contactcontent">



        <asp:Label ID="contactlbltitle" runat="server" Text="Contact Our Shop" CssClass="admin_label_class" Width="100%"></asp:Label>

       
        <hr />
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

             <asp:ImageMap ID="staticmap" runat="server" ImageUrl="https://maps.googleapis.com/maps/api/staticmap?center=4.885,114.931&zoom=15&size=610x450&maptype=roadmap&markers=color:blue%7Clabel:S%7C4.885,114.931&markers=color:green%7Clabel:G%7C4.888,114.939&key=AIzaSyBJHM3DIGFZwsTyeDUM3rLogk9ewg2Q04I" AlternateText="staticpic">

            </asp:ImageMap>

        </div>

        
    </div>
        
    <!--end contactcontent rightside-->
       

        <div id="contactbelowcontent">
            <hr />

            <asp:Label ID="contactbelowcontentlabel" runat="server" Text="Our Shop Location" Width="100%" CssClass="contactbelowcontentlabel"></asp:Label>


        </div>


        <asp:Label ID="contactlbladdress1" runat="server" Text="And" CssClass="admin_label_class" Width="100%"></asp:Label>
        <asp:Label ID="contactlbladdress2" runat="server" Text="Our Address" CssClass="admin_label_class" Width="100%"></asp:Label>

        <hr />



        <div id="contactaddressdivmain">



            <div id="contactaddressdiv0">

                <asp:Label ID="contactadd0" runat="server" Text="Address" CssClass="contactaddfltitlecss"></asp:Label>

            </div>


            <div id="contactaddressdiv1">

                <asp:Label ID="contactadd1" runat="server" Text="Plaza Abdul Razak" CssClass="contactaddflcss"></asp:Label>

            </div>


            <div id="contactaddressdiv2">

                <asp:Label ID="contactadd2" runat="server" Text="Jalan Laksamana Abdul Razak," CssClass="contactaddflcss"></asp:Label>

            </div>


            <div id="contactaddressdiv3">

                <asp:Label ID="contactadd3" runat="server" Text="Bandar Seri Begawan," CssClass="contactaddflcss"></asp:Label>

            </div>


            <div id="contactaddressdiv4">

                <asp:Label ID="contactadd4" runat="server" Text="Negara Brunei Darussalam" CssClass="contactaddflcss"></asp:Label>

            </div>



        </div>




        <div id="contacttelephonedivmain">


            <div id="contacttelediv0">

                <asp:Label ID="contacttele0" runat="server" Text="Telephone Number" CssClass="contacttelefrtitlecss"></asp:Label>

            </div>


             <div id="contacttelediv1">

                <asp:Label ID="contacttele1" runat="server" Text="" CssClass="contacttelefrcss"></asp:Label>

            </div>


            <div id="contacttelediv2">

                <asp:Label ID="contacttele2" runat="server" Text="Phone:+673 223 8816" CssClass="contacttelefrcss"></asp:Label>

            </div>


            <div id="contacttelediv3">

                <asp:Label ID="contacttele3" runat="server" Text="" CssClass="contacttelefrcss"></asp:Label>

            </div>


            <div id="contacttelediv4">

                <asp:Label ID="contacttele4" runat="server" Text="Plaza Abdul Razak" CssClass="contacttelefrcss"></asp:Label>

            </div>


        </div>


    </div>

    <!--end contactcontent divider of wrapper-->

    <!--end wrapper container-->
    


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
