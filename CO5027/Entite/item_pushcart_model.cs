using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CO5027.Entite
{
    public class item_pushcart_model
    {

        /*  begin preview list carted item in transcript page */



        /*  begin all list carted item in transcript page */

        public List<item_pushcart> carted_item(string customer_carted_id)
        {
            SaPEEntitiesRemote cartedDB = new SaPEEntitiesRemote();
            List<item_pushcart> carted = (from x in cartedDB.item_pushcart
                                          where x.UserCode == customer_carted_id
                                          && x.PushCart
                                          orderby x.BuyDate descending
                                          select x).ToList();
            return carted;
        }


        /*  end all list carted item in transcript page */



        /*  begin all list total carted item in transcript page */

        public int total_item_carted(string customer_carted_id)
        {
            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                int total = (from x in db.item_pushcart
                              where x.UserCode == customer_carted_id
                              && x.PushCart
                              select x.Total).Sum();

                return total;
            }
            catch
            {
                return 0;
            }
        }


        /*  end all list total carted item in transcript page */


        /*  begin to update all list total carted item in transcript page */

        public void update_amount(int Code, int amount)
        {
            SaPEEntitiesRemote cartedDB = new SaPEEntitiesRemote();
            item_pushcart bi = cartedDB.item_pushcart.Find(Code);
            bi.Total = amount;

            cartedDB.SaveChanges();
        }



        /*  end to update all list total carted item in transcript page */




        /*  begin show paid update all list total carted item in transcript page */

        public void paid_carted(List<item_pushcart> customer_cart)
        {
            SaPEEntitiesRemote transcription = new SaPEEntitiesRemote();

            if (customer_cart != null)
            {
                foreach (item_pushcart carted in customer_cart)
                {
                    item_pushcart previous_carted = transcription.item_pushcart.Find(carted.Code);
                    previous_carted.BuyDate = DateTime.Now;
                    previous_carted.PushCart = false;
                }
                transcription.SaveChanges();
            }
        }


        /*  end show paid update all list total carted item in transcript page */



        /*  end preview list carted item in transcript page */


        /*begin adding item pushcart code similar to item versions*/

        public string add_item(item_pushcart itempushcart)
        {



            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                db.item_pushcart.Add(itempushcart);

                db.SaveChanges();
                return itempushcart.BuyDate + " Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end adding item pushcart code similar to item versions*/


        /*begin deleting item pushcart code similar to item versions*/

        public string delete_item(int Code)
        {



            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                item_pushcart itempushcart = db.item_pushcart.Find(Code);

                db.item_pushcart.Attach(itempushcart);
                db.item_pushcart.Remove(itempushcart);

                db.SaveChanges();
                return itempushcart.BuyDate + " Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end deleting item pushcart code similar to item versions*/



        /*begin updating item pushcart code similar to item versions*/
        public string update_item(int Code, item_pushcart itempushcart)
        {



            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                item_pushcart i = db.item_pushcart.Find(Code);

                i.UserCode = itempushcart.UserCode;
                i.PushCart = itempushcart.PushCart;
                i.ItemCode = itempushcart.ItemCode;
                i.BuyDate = itempushcart.BuyDate;
                i.Total = itempushcart.Total;

                db.SaveChanges();
                return "Updated Successfull";


            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;

            }




        }

        /*end updating item pushcart code similar to item versions*/

    }
}