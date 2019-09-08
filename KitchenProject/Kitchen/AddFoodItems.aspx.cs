using DataAccessLayer2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kitchen
{
    public partial class AddFoodItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            KitchenProjectEntities db = new KitchenProjectEntities();

            List<Food_Items> users = db.Food_Items.ToList();

            grdFoodItem.DataSource = users;
            grdFoodItem.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(txtId.Text); 
            string Food_name = txtName.Text;
            string Ingrediants = txtIngrediants.Text;
            string SplNotes = txtSplNotes.Text;
            string Catagory = txtCatageory.Text;
            int Price = Convert.ToInt32(txtPrice.Text);

            
            Food_Items foods = new Food_Items(){ id=Id, Food_Name= Food_name , Ingrediants=Ingrediants , Special_Notes=SplNotes, Catageory=Catagory, Price=Price };

            KitchenProjectEntities db = new KitchenProjectEntities();

            db.Food_Items.Add(foods);

            db.SaveChanges();

            List<Food_Items> users = db.Food_Items.ToList();

            grdFoodItem.DataSource = users;
            grdFoodItem.DataBind();
        }
    }
}