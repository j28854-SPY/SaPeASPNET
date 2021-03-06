﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CO5027.Entite;
using Microsoft.AspNet.Identity;

namespace CO5027
{  
    public partial class transcription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  check if the user is login  */
            string customer_carted_id = User.Identity.GetUserId();

            /*  display the items carted    */
            list_paid_item(customer_carted_id);
        }









        private void list_paid_item(string customer_carted_id)
        {
            item_pushcart_model pcModel = new item_pushcart_model();
            double must_paid = 0;

            /*  carted item displayed in table  */
            List<item_pushcart> paid_list = pcModel.carted_item(customer_carted_id);
            generate_carted_table(paid_list, out must_paid);

            /*  calculations made for total must paid   */
            double total_overall = must_paid + 9.75;

            literal_total_item.Text = "BND " + must_paid;
            literal_overall.Text = "BND " + total_overall;

            /*  Add paypal button to checkout */
            string paypal = paypal_generated_event(must_paid);
            literal_paypal_checkout.Text = paypal;
        }









        private string paypal_generated_event(double must_paid)
        {
            /*  list object for paypal  */
            string paypal = string.Format(
                @"<script async='async' src='https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=testlcbcompsci@gmail.com' 
                data-button='buynow' 
                data-name='Safety & Protective Equipments Purchases' 
                data-quantity=1
                data-amount='{0}' 
                data-tax='{0}'
                data-shipping='9.75'
                data-callback='http://localhost:56577/Pages/Authentication/ppco.aspx'
                data-sendback='http://localhost:56577/Pages/Authentication/ppco.aspx'
                data-env='sandbox'>
             </script>", must_paid, (must_paid));

            return paypal;
        }







        protected void transacation_delete(object sender, EventArgs e)
        {
            LinkButton highlighted_transacation = (LinkButton)sender;
            string relation = highlighted_transacation.ID.Replace("del", "");
            int pushcart_code = Convert.ToInt32(relation);

            var pc_model = new item_pushcart_model();
            pc_model.delete_item(pushcart_code);

            Response.Redirect("~/transcription.aspx");
        }










        private void itempgddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*  fetch item changed's ID */
            DropDownList selectedList = (DropDownList)sender;
            int pushcart_code = Convert.ToInt32(selectedList.ID);
            int total = Convert.ToInt32(selectedList.SelectedValue);

            /*  updates the item    */
            item_pushcart_model pcModel = new item_pushcart_model();
            pcModel.update_amount(pushcart_code, total);


            Response.Redirect("~/transcription.aspx");
        }

       







        private void generate_carted_table(IEnumerable<item_pushcart> paid_list, out double must_paid)
        {
            must_paid = new double();
            item_table_model model = new item_table_model();

            foreach (item_pushcart carted in paid_list)
            {
                /*  auto create elements with SaPEEntities*/
                item_table item = model.retrieve_item(carted.ItemCode);




                ImageButton btnDisplay = new ImageButton
                {
                    ImageUrl = string.Format("~/Images/{0}", item.ItemDisplay),
                    AlternateText = "ServerPic",
                    PostBackUrl = string.Format("~/Pages/Administer/item_click.aspx?Code={0}", item.Code)
                };





                LinkButton click_delete = new LinkButton
                {
                    PostBackUrl = string.Format("~/transcription.aspx?Code={0}", carted.Code),
                    Text = "Delete Carted Item",
                    ID = "del" + carted.Code,
                };





                click_delete.Click += transacation_delete;

                /*  option out list quantity to 1-5 */
                int[] itemtopushcart = Enumerable.Range(1, 5).ToArray();
                DropDownList itempgddl = new DropDownList
                {
                    DataSource = itemtopushcart,
                    AppendDataBoundItems = true,
                    AutoPostBack = true,
                    ID = carted.Code.ToString()
                };




                itempgddl.DataBind();
                itempgddl.SelectedValue = carted.Total.ToString();
                itempgddl.SelectedIndexChanged += itempgddl_SelectedIndexChanged;





                /*  table for carted details */
                Table table = new Table { CssClass = "pushcart_table" };
                TableRow row1 = new TableRow();
                TableRow row2 = new TableRow();




                TableCell cell1_1 = new TableCell { RowSpan = 2, Width = 50 };
                TableCell cell1_2 = new TableCell
                {
                    Text = string.Format("<h4>{0}</h4><br />{1}<br/>In Stock",
                    item.ItemName, "Item No:" + item.Code),
                    HorizontalAlign = HorizontalAlign.Left,
                    Width = 180,
                };






                TableCell cell1_3 = new TableCell { Text = "Per Price<hr/>" };
                TableCell cell1_4 = new TableCell { Text = "Quantity<hr/>" };
                TableCell cell1_5 = new TableCell { Text = "Item Total<hr/>" };
                TableCell cell1_6 = new TableCell();

                TableCell cell2_1 = new TableCell();
                TableCell cell2_2 = new TableCell { Text = "BND " + item.ItemCostBND };
                TableCell cell2_3 = new TableCell();
                TableCell cell2_4 = new TableCell { Text = "BND " + Math.Round((carted.Total * (double)item.ItemCostBND), 2) };
                TableCell cell2_5 = new TableCell();



                /*  table functions */
                cell1_1.Controls.Add(btnDisplay);
                cell1_6.Controls.Add(click_delete);
                cell2_3.Controls.Add(itempgddl);

                /*  add rows if added new carted    */
                row1.Cells.Add(cell1_1);
                row1.Cells.Add(cell1_2);
                row1.Cells.Add(cell1_3);
                row1.Cells.Add(cell1_4);
                row1.Cells.Add(cell1_5);
                row1.Cells.Add(cell1_6);

                row2.Cells.Add(cell2_1);
                row2.Cells.Add(cell2_2);
                row2.Cells.Add(cell2_3);
                row2.Cells.Add(cell2_4);
                row2.Cells.Add(cell2_5);
                table.Rows.Add(row1);
                table.Rows.Add(row2);
                transcription_page_panel.Controls.Add(table);


                must_paid += (carted.Total * (double)item.ItemCostBND);
            }

            
            Session[User.Identity.GetUserId()] = paid_list;
        }

        
    }
}