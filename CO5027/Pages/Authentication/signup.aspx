<%@ Page Title="Sign Up | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="CO5027.Pages.Authentication.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">

    <div id="signup_content">

        <p class="signup_titlecss">Please Fill in the Sign Up Form</p>

        <hr />

        <div id="signup_leftside_content">

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
                    <td><asp:Label runat="server" Text="Confirm Password: -"></asp:Label></td>

                
                                  
                </tr>


            </table>



            <table>

                         
                <tr>
                    <td><asp:Button ID="signup_button" runat="server" Text="Apply for SaPE Account" OnClick="signup_button_Click" /></td>                    
                </tr>


            </table>

        </div>



        <div id="signup_leftside2_content">


             <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_username" runat="server"></asp:TextBox></td>              
                </tr>


            </table>


            <table>

                         
                <tr>
                  
                    <td><asp:TextBox ID="signup_password" runat="server"></asp:TextBox></td>   
                
                             
                </tr>


            </table>


            <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_password_confirm" runat="server"></asp:TextBox></td>           
                </tr>


            </table>



            <table>

                         
                <tr>
                    <td><asp:Literal ID="signup_literal_error" runat="server"></asp:Literal></td>    
                </tr>


            </table>


        </div>


     </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
