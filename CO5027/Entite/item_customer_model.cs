using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CO5027.Entite
{
    public class item_customer_model
    {

        public item_customer GetUserInformation(string auqcode)
        {
            SaPEEntitiesRemote db = new SaPEEntitiesRemote();
            var info = (from x in db.item_customer
                        where x.AUQCode == auqcode
                        select x).FirstOrDefault();
            return info;
        }

        public void InsertUserDetail(item_customer customerDetails)
        {
            SaPEEntitiesRemote db = new SaPEEntitiesRemote();
            db.item_customer.Add(customerDetails);
            db.SaveChanges();
        }   

    }
}