<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="CO5027.Pages.Authentication.signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


   <div id="signup_content">

        <p class="signup_titlecss">Please Fill in the Sign In Form</p>

        <hr />

        <div id="signin_leftside_content">

            <table>

                         
                <tr>
                    <td><asp:Label runat="server" Text="Username: -"></asp:Label></td>

                
                               
                </tr>


            </table>


            <table>

                         
                <tr>
                    <td><asp:Label runat="server" Text="Password: -"></asp:Label></td>

                
                               
                </tr>


            </table>


         



            <table>

                         
                <tr>
                    <td><asp:Button ID="signin_button" runat="server" Text="Sig In with SaPE Account" OnClick="signin_button_Click" /></td>                    
                </tr>


            </table>

        </div>



        <div id="signin_leftside2_content">


             <table>

                         
                <tr>
                    <td><asp:TextBox ID="signin_username" runat="server"></asp:TextBox></td>              
                </tr>


            </table>


            <table>

                         
                <tr>
                  
                    <td><asp:TextBox ID="signin_password" runat="server" TextMode="Password"></asp:TextBox></td>   
                
                             
                </tr>


            </table>


            <table>

                         
                <tr>
                    <td><asp:Literal ID="signin_literal_error" runat="server"></asp:Literal></td>    
                </tr>


            </table>


        </div>


     </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
