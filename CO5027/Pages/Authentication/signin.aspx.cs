using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace CO5027.Pages.Authentication
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_button_Click(object sender, EventArgs e)
        {


            /*  similar to signup protocall, default UserStore constructor uses the default connection string named: DefaultConnection   */
            var userStore = new UserStore<IdentityUser>();

            /*  set ConnectionString to SaPERemote from webconfig   */
            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.ConnectionStrings["SaPERemote"].ConnectionString;
            var manager = new UserManager<IdentityUser>(userStore);




            var user = manager.Find(signin_username.Text, signin_password.Text);

            if (user != null)
            {
                /* Using OWIN functionality   */
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                /* Sign In Users    */
                authenticationManager.SignIn(new AuthenticationProperties
                {
                    IsPersistent = false

                }, userIdentity);

               
                Response.Redirect("~/default.aspx");
            }
            else
            {
                signin_literal_error.Text = "Please Enter Valid Username and Password";
            }
        }
    }
}