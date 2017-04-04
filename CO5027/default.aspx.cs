using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            defaultpagecontent();
        }

        /*  provide available item in database using entity framework model */

        private void defaultpagecontent()
        {
            item_table_model itm = new item_table_model();
            List<item_table> item = itm.retrieve_all_item();


            /*  check available items in database */

            if (item != null)
            {
                foreach (item_table items in item)
                {

                    /*  create panel for each item in item_table */
                    Panel itemwithpanel = new Panel();
                    ImageButton defaultdisplay = new ImageButton();
                    Label deafultlblitemname = new Label();
                    Label defaultlblcost = new Label();


                    /*properties for button*/
                    defaultdisplay.ImageUrl = "~/Images/Database/" + items.ItemDisplay;
                    defaultdisplay.CssClass = "dddib";
                    defaultdisplay.PostBackUrl = string.Format("~/Pages/item.aspx?id={0}", items.Code);


                    /*properties for label name*/
                    deafultlblitemname.Text = items.ItemName;
                    deafultlblitemname.CssClass = "dddiln";



                    /*properties for label cost*/
                    defaultlblcost.Text = "$ " + items.ItemCostBND;
                    defaultlblcost.CssClass = "dddilc";



                    itemwithpanel.Controls.Add(defaultdisplay);
                    itemwithpanel.Controls.Add(new Literal { Text = "<br/>" });
                    itemwithpanel.Controls.Add(deafultlblitemname);
                    itemwithpanel.Controls.Add(new Literal { Text = "<br/>" });
                    itemwithpanel.Controls.Add(defaultlblcost);

                    //Add dynamic controls to static control
                    itempanel.Controls.Add(itemwithpanel);
                }
            }
            else
            {
                itempanel.Controls.Add(new Literal { Text = "No items found!" });
            }


            protected void default_searchbox_button_Click(object sender, EventArgs e)
        {

            string itms = default_searchbox_textbox.Text;
            using (SaPEEntitiesRemote itmsearch = new SaPEEntitiesRemote())
            {



                /*var query = (from x in itmsearch.item_table where x.ItemName.Contains("x") select x);*/
                /*var query = (from x in itmsearch.item_table where x.ItemName.IndexOf("x", StringComparison.InvariantCultureIgnoreCase) >= 0 select x);*/
                var query = (from x in itmsearch.item_table where x.ItemName == itms select x);

                default_repeater1.DataSource = query.ToList();
                default_repeater1.DataBind();
            }




        }


    }
    }
}