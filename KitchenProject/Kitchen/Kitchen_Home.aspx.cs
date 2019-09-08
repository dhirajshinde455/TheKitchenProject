using DataAccessLayer2;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kitchen
{
    public partial class Kitchen_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                KitchenProjectEntities db = new KitchenProjectEntities();
                // removing all items cart
                List<cart> carts_all = db.carts.ToList();

                foreach (var item in carts_all)
                {
                    db.carts.Remove(item);
                }
                db.SaveChanges();

                List<Food_Items> users = db.Food_Items.ToList();

                grdFoodItem.DataSource = users;
                grdFoodItem.DataBind();

                foreach (var item in users)
                {
                    ddlFoodItems.Items.Add(item.Food_Name);
                }
                

               }

            }


            
        

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            

            string Food_name = Convert.ToString(ddlFoodItems.SelectedItem);
            int quantity = Convert.ToInt32(ddlQuantity.SelectedValue);
            KitchenProjectEntities db1 = new KitchenProjectEntities();    
            
            List < Food_Items > foodItems = db1.Food_Items.ToList();
            int? price = 0;
            foreach (var item in foodItems)
            {

                if (item.Food_Name == Food_name)
                {
                    price = item.Price * quantity;
                } 

            }



            cart cart_items = new cart() { Food_name = Food_name, quantity = quantity, price=price };


            KitchenProjectEntities db = new KitchenProjectEntities();    
            

            db.carts.Add(cart_items);
            db.SaveChanges();

            List<cart> carts_list = db.carts.ToList();

            grdCart.DataSource = carts_list;
            grdCart.DataBind();
            
            // for tatal Bill
            int? total_Price=0;
            foreach (var item in carts_list)
            {
                total_Price += item.price;
            }

            lblTotalBill.Text = total_Price.ToString();
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PaymentSuccessfull.aspx");
        }
    }
}