<%@ Page Title="Sign Up | Safety & Protective Equipment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="CO5027.Pages.Authentication.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">

    <div id="signup_content">

        <p class="signup_titlecss">Please Fill in the Sign Up Form</p>

        <hr />

        <div id="signup_leftside_content">

            <table class="signup_labelcss">

                         
                <tr class="signup_labelcss">
                    <td><asp:Label runat="server" Text="Username: -"></asp:Label></td>

                
                               
                </tr>


            </table>


            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="Password: -"></asp:Label></td>

                
                               
                </tr>


            </table>


            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="Confirm Password: -"></asp:Label></td>

                
                                  
                </tr>


            </table>



            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="Surname: -"></asp:Label></td>

                
                                  
                </tr>


            </table>



            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="Forename: -"></asp:Label></td>

                
                                  
                </tr>


            </table>




            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="Address: -"></asp:Label></td>

                
                                  
                </tr>


            </table>



            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="ZipCode: -"></asp:Label></td>

                
                                  
                </tr>


            </table>



            <table class="signup_labelcss">

                         
                <tr>
                    <td><asp:Label runat="server" Text="Email Address: -"></asp:Label></td>

                
                                  
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
                    <td><asp:RequiredFieldValidator ID="RFV_signup_username" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="signup_username"></asp:RequiredFieldValidator></td>              
                </tr>


            </table>


            <table>

                         
                <tr>
                  
                    <td><asp:TextBox ID="signup_password" runat="server" TextMode="Password"></asp:TextBox></td>   
                    <td><asp:RequiredFieldValidator ID="RFV_signup_password" runat="server" ErrorMessage="Please Enter Valid Password" ControlToValidate="signup_password"></asp:RequiredFieldValidator></td>  
                             
                </tr>


            </table>


            <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_password_confirm" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RFV_signup_password_confirm" runat="server" ErrorMessage="Password must be same" ControlToValidate="signup_password_confirm"></asp:RequiredFieldValidator></td>             
                </tr>


            </table>



             <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_surname" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RFV_signup_surname" runat="server" ErrorMessage="Please Enter Your Surname" ControlToValidate="signup_surname"></asp:RequiredFieldValidator></td>             
                </tr>


            </table>



            <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_forename" runat="server"></asp:TextBox></td> 
                    <td><asp:RequiredFieldValidator ID="RFV_signup_forename" runat="server" ErrorMessage="Please Enter Your Forename" ControlToValidate="signup_forename"></asp:RequiredFieldValidator></td>            
                </tr>


            </table>


            <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_address" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RFV_signup_address" runat="server" ErrorMessage="Please Enter Delivery Address" ControlToValidate="signup_address"></asp:RequiredFieldValidator></td>            
                </tr>


            </table>




            <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_zipcode" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RFV_signup_zipcode" runat="server" ErrorMessage="Please Enter Valid Zip Code" ControlToValidate="signup_zipcode"></asp:RequiredFieldValidator></td>             
                </tr>


            </table>



            <table>

                         
                <tr>
                    <td><asp:TextBox ID="signup_email_address" runat="server"></asp:TextBox></td>
                    <td><asp:RegularExpressionValidator ID="REV_signup_email_address" runat="server" ErrorMessage="Please Enter Valid Email Address" ControlToValidate="signup_email_address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                    <td><asp:RequiredFieldValidator ID="RFV_signup_email_address" runat="server" ErrorMessage="Please Enter Valid Email Address" ControlToValidate="signup_email_address"></asp:RequiredFieldValidator></td>             
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
