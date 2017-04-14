<%@ Page Title="Home | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CO5027._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <div id="default_content">


        <div id="default_searchbox1">


            <asp:Label ID="default_searchbox_label" runat="server" Text="Welcome to Safety & Protective Equipment E-Commerce" CssClass="default_searchbox_label" Width="100%"></asp:Label>
            <asp:TextBox ID="default_searchbox_textbox" runat="server" CssClass="default_searchbox_textbox" OnTextChanged="default_searchbox_textbox_TextChanged" ToolTip="Search For Item Equipment"></asp:TextBox>
            <asp:Button ID="default_searchbox_button" runat="server" Text="Search For Item Equipment" OnClick="default_searchbox_button_Click" CssClass="default_searchbox_button" />


            

            <asp:Repeater ID="default_repeater1" runat="server">



                <HeaderTemplate>


                    <table id="default_table1">

                

            


                </HeaderTemplate>

                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ItemName") %></td>
                        <!-- <td><img src="/Images/ <%# Eval("ItemName") %>" width="70" height:"70" /></td>-->                        
                    </tr>

                </ItemTemplate>

                <FooterTemplate>

                    </table>
                </FooterTemplate>


            
            </asp:Repeater>



        </div>
            




        <div id="default_image_content">

            <asp:Image ID="default_image1" runat="server" ImageUrl="~/Images/coveralls_banner.jpg" alt="defaultbanner"/>

        </div>



        <div id="default_available_label">
            <asp:Label ID="default_available_label_text" runat="server" Text="See Below For Available Equipment" Width="100%" CssClass="default_available_label_text"></asp:Label>
        </div>
        
        <hr />



        <div id="default_item_panel1" class="default_item_panel1">

            <asp:Panel ID="itempanel" runat="server">


       
                



            </asp:Panel>

         </div>
  
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
