using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;
using Microsoft.AspNet.Identity;

namespace CO5027.Pages.Authentication
{
    public partial class ppco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<item_pushcart> carted = (List<item_pushcart>)Session[User.Identity.GetUserId()];

            item_pushcart_model pcModel = new item_pushcart_model();
            pcModel.paid_carted(carted);

            Session[User.Identity.GetUserId()] = null;
        }
    }
}