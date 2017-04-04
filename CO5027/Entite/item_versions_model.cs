using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CO5027.Entite
{
    public class item_versions_model
    {

        /*begin getting item from table*/
        public item_table retrieve_item(int Code)
        {
            try
            {
                using (SaPEEntitiesRemote db = new SaPEEntitiesRemote())
                {
                    item_table itemtable = db.item_table.Find(Code);
                    return itemtable;



                }
            }
            catch (Exception)
            {
                return null;


            }

        }
        /*end updating item pushcart code similar to item versions*/



        /*begin array list of item from table*/
        public List<item_table> retrieve_all_item()
        {
            try
            {
                using (SaPEEntitiesRemote db = new SaPEEntitiesRemote())
                {
                    List<item_table> itemtable = (from x in db.item_table select x).ToList();
                    return itemtable;


                }
            }
            catch (Exception)
            {
                return null;


            }
        }

        /*end array list of item from table*/


        /*begin array list of item versions from table*/
        public List<item_table> retrieve_item_versions(int Versions)
        {
            try
            {
                using (SaPEEntitiesRemote db = new SaPEEntitiesRemote())
                {
                    List<item_table> itemtable = (from x in db.item_table where x.Versions == Versions select x).ToList();
                    return itemtable;


                }
            }
            catch
            {
                return null;


            }
        }

        /*end array list of item versions from table*/


        /*begin adding item to table*/

        public string add_item(item_table itemtable)
        {
            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                db.item_table.Add(itemtable);

                db.SaveChanges();
                return itemtable.ItemName + " Added Sucessfull";



            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }

        /*end adding item to table*/



        /*begin deleting item to table*/
        public string delete_item(int Code)
        {
            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                item_table itemtable = db.item_table.Find(Code);

                db.item_table.Attach(itemtable);
                db.item_table.Remove(itemtable);

                db.SaveChanges();
                return itemtable.ItemName + " Deleted Sucessfull";
            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }
        /*end deleting item to table*/




        /*begin updating item to table*/
        public string update_item(int Code, item_table itemtable)
        {
            try
            {
                SaPEEntitiesRemote db = new SaPEEntitiesRemote();
                item_table i = db.item_table.Find(Code);

                i.ItemName = itemtable.ItemName;
                i.Versions = itemtable.Versions;
                i.ItemDetails = itemtable.ItemDetails;
                i.ItemCostBND = itemtable.ItemCostBND;
                i.ItemDisplay = itemtable.ItemDisplay;

                db.SaveChanges();
                return "Updated Successfull";


            }
            catch (Exception e)
            {


                return "Something When Wrong" + e;


            }




        }

        /*end updating item to table*/

    }
}