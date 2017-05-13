using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;
using Microsoft.Owin.Security;

namespace CO5027
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var user = Context.User.Identity;

            if (user.IsAuthenticated)
            {

                rank_user.Text = Context.User.Identity.Name;

                hyper_signin_page.Visible = false;
                hyper_signup_page.Visible = false;

                rank_user.Visible = true;
                lkbtn_signout.Visible = true;

                /* item_pushcart_model model = new item_pushcart_model();
                string userId = HttpContext.Current.User.Identity.GetUserId();
                rank_user.Text = string.Format("{0} ({1})", Context.User.Identity.Name, model.GetAmountOfOrders(userId));
                */
            }
            else
            {
                hyper_signin_page.Visible = true;
                hyper_signup_page.Visible = true;

                rank_user.Visible = false;
                lkbtn_signout.Visible = false;
            }

        }

        protected void lbtn_signout_Click(object sender, EventArgs e)
        {
            IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/default.aspx");
        }
    }
}