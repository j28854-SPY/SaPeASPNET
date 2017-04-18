using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;

namespace CO5027.Pages.Administer
{
    public partial class item_to_store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                retrieve_preview();
        }






        /*  begin item version part*/

        protected void upload_item_versions_button(object sender, EventArgs e)
        {

            item_versions_model modelivdb = new Entite.item_versions_model();
            item_versions upload = upload_item_versions();

            System.Threading.Thread.Sleep(3000);

            Response.Redirect("~/Pages/Administer/admin.aspx");



            /*item_versions_model modelivdb = new item_versions_model();
            item_versions baru = upload_item_versions();

            upload_item_versions_button_results.Text = modelivdb.add_item(baru);

            System.Threading.Thread.Sleep(3000);

            Response.Redirect("~/Pages/Administer/admin.aspx");*/




        }


        private item_versions upload_item_versions()
        {
            item_versions i = new item_versions();
            i.ItemName = dbitemversionsnametextboxlink.Text;

            return i;


        }

        /*  end item version part*/







        /*  begin item table part*/

        private item_table upload_item_table()
        {


            /*  list the variable id */
            item_table_model modelibdb = new item_table_model();
            item_table itemtable = new item_table();

            /*  specify the data    */
            itemtable.ItemName = dbitemtablenametextboxlink.Text;
            itemtable.Versions = Convert.ToInt32(dbitemtableversionsdropdownlink.SelectedValue);
            itemtable.ItemDetails = dbitemtabledetailstextboxlink.Text;
            itemtable.ItemCostBND = Convert.ToDecimal(dbitemtablepricetextboxlink.Text);
            itemtable.ItemDisplay = dbitemtabledisplaydropdownlink.SelectedValue;


            return itemtable;


        }


        private void retrieve_preview()
        {
            try
            {
                string[] preview = Directory.GetFiles(Server.MapPath("~/Images/"));


                ArrayList preivewlist = new ArrayList();
                foreach (string display in preview)
                {
                    string displayname = display.Substring(display.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    preivewlist.Add(displayname);
                }

                dbitemtabledisplaydropdownlink.DataSource = preivewlist;
                dbitemtabledisplaydropdownlink.AppendDataBoundItems = true;
                dbitemtabledisplaydropdownlink.DataBind();


            }
            catch (Exception e)
            {
                upload_item_table_lbl_results.Text = e.ToString();
            }
        }


        protected void upload_item_table_button_Click(object sender, EventArgs e)
        {
            item_table_model upload = new item_table_model();
            item_table item = upload_item_table();

            upload_item_table_lbl_results.Text = upload.add_item(item);


            System.Threading.Thread.Sleep(3000);

            Response.Redirect("~/Pages/Administer/admin.aspx");




        }


        /*  end item table part*/






        
    }
}