using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;
using Microsoft.AspNet.Identity;

namespace CO5027.Pages.Administer
{
    public partial class item_click : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            itempagecontent();
        }


        private void itempagecontent()
        {
            /*  provide available item in database using entity framework model */

            if (!string.IsNullOrWhiteSpace(Request.QueryString["Code"]))
            {
                int Code = Convert.ToInt32(Request.QueryString["Code"]);
                item_table_model model = new item_table_model();
                item_table item = model.retrieve_item(Code);


                /*  dropdownlist option up to 5 */

                int[] itemtopushcart = Enumerable.Range(1, 5).ToArray();
                itempgddl.DataSource = itemtopushcart;
                itempgddl.AppendDataBoundItems = true;
                itempgddl.DataBind();


                /*  similar to default page using code to provide details in item page */

                itempgpic.ImageUrl = "~/Images/" + item.ItemDisplay;
                itempgpic.AlternateText = "itempicpage";

                itempglabel.Text = item.ItemName;
                itempginfolabel.Text = item.ItemDetails;
                itempgcostlabel.Text = "Cost BND: $ " + item.ItemCostBND;

                itempgindata.Text = "Item Version Code: -           " + item.Code.ToString();




            }
        }

        /*  begin add push to cart */


        protected void itempgaddbutton_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrWhiteSpace(Request.QueryString["Code"]))
            {

                /*  needed for inserting data to user account   */

                string usercode = Context.User.Identity.GetUserId();
                if (usercode != null)
                {
                    int itemcode = Convert.ToInt32(Request.QueryString["Code"]);
                    int total = Convert.ToInt32(itempgddl.SelectedValue);

                    item_pushcart pushcarted = new item_pushcart
                    {

                        UserCode = usercode,
                        PushCart = true,
                        ItemCode = itemcode,
                        BuyDate = DateTime.Now,
                        Total = total

                    };

                    /*  add result when button pressed  */

                    item_pushcart_model tpm_ic_model = new item_pushcart_model();
                    itempgresult.Text = tpm_ic_model.add_item(pushcarted);
                }


                else
                {

                    itempgresult.Text = "Please Sign In to add items to cart";

                }

            }




            }




        }
}