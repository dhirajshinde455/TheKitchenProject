using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer2;
using System.Data;
using System.Data.Entity;
namespace Kitchen
{
    public partial class LiginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                
        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            KitchenProjectEntities db = new KitchenProjectEntities();
            
            
            List<User_Credentials> users = db.User_Credentials.ToList();
            
            
            
            foreach (var item in users)
            {
                if (item.Username == txtUsername.Text && item.User_password == txtPassword.Text)
                {
                    Response.Redirect("~/Kitchen_Home.aspx");
                }
                else
                {
                    Response.Write("Please Authonticate Correct");
                }
            }

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            KitchenProjectEntities db1 = new KitchenProjectEntities();

            List<Admin_Credentials> admins = db1.Admin_Credentials.ToList();

            foreach (var item in admins)
            {
                if (item.AdminUsername == txtUsername.Text && item.Admin_password == txtPassword.Text)
                {
                    Response.Redirect("~/AddFoodItems.aspx");
                }

            }
        }
    }
}