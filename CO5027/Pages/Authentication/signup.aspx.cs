using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace CO5027.Pages.Authentication
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_button_Click(object sender, EventArgs e)
        {


            /*  default UserStore constructor uses the default connection string named: DefaultConnection   */
            var userStore = new UserStore<IdentityUser>();

            /*  set ConnectionString to SaPERemote from webconfig   */
            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.ConnectionStrings["SaPERemote"].ConnectionString;
            var manager = new UserManager<IdentityUser>(userStore);

            
            /*  add new user and try to store in DB.    */


            var user = new IdentityUser { UserName = signup_username.Text };

            if (signup_password.Text == signup_password_confirm.Text)
            {
                try
                {
                    IdentityResult result = manager.Create(user, signup_password.Text);
                    if (result.Succeeded)
                    {



                         item_customer customerDetails = new item_customer
                         {
                             AUQCode = user.Id,
                             Surname = signup_surname.Text,
                             Forename = signup_forename.Text,
                             Address = signup_address.Text,
                             ZipCode = Convert.ToInt32(signup_zipcode.Text),
                             EmailAddress = signup_email_address.Text

                         };

                         item_customer_model model = new item_customer_model();
                         model.InsertUserDetail(customerDetails);



                        /*  Store user in Sql Database   */
                        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                        var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                        /*  If login is right succeedeed, it will redirect to the default page authentication through owin */
                        authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                        Response.Redirect("~/default.aspx");
                    }
                    else
                    {
                        signup_literal_error.Text = result.Errors.FirstOrDefault();
                    }
                }
                catch (Exception ex)
                {
                    signup_literal_error.Text = ex.ToString();
                }
            }
            else
            {
                signup_literal_error.Text = "Password enter does not match!";
            }


        }
    }
}