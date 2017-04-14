using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;

namespace CO5027.Pages
{
    public partial class item : System.Web.UI.Page
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

    }
}