<%@ Page Title="Transcription | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="transcription.aspx.cs" Inherits="CO5027.transcription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <div id="transcription_page_content">



        <asp:Panel ID="transcription_page_panel" runat="server">
    </asp:Panel>
        <table>
            <tr>
                <td>
                    <b>Total Item(s) Cost: </b>
                </td>
                <td>
                    <asp:Literal ID="literal_total_item" runat="server" Text=""></asp:Literal>
                </td>
            </tr>

           
            <tr>
                <td>
                    <b>Delivery Charge: </b>
                </td>
                <td>
                    BND 9.75
                </td>
            </tr>


            <tr>
                <td>
                    <b>Overall Cost: </b>
                </td>
                <td>
                    <asp:Literal ID="literal_overall" runat="server" Text=""></asp:Literal>
                </td>
            </tr>


            <tr>
                <td>                
                    <asp:LinkButton ID="literal_paypal_checkout" Text="" runat="server" />
                </td>
            </tr>

        </table>



    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
