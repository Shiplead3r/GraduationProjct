using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GraduationProjct
{
    public partial class WUCLogin : System.Web.UI.UserControl
    {
        private ShopContext db = new ShopContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //   var select = from st in db.Members where st.UserName == txtUsername.Text && st.Password == txtPassword.Text select st;
            var select = db.Members.SingleOrDefault<Member>(x=>x.UserName == txtUsername.Text && x.Password == txtPassword.Text);

            if (select !=null)
            {
                HttpCookie c = new HttpCookie("login");
                c.Values.Add("User", txtUsername.Text);
               
                Response.Cookies.Add(c);
                if (RememberMe.Checked)
                {
                    c.Expires = DateTime.Now.AddYears(2);
                    Response.Cookies.Add(c);
                    if (txtUsername.Text.ToLower() == "admin")
                    {
                        Response.Redirect("~/products.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/productview.aspx");
                    }
                }
                else
                {
                    if (txtUsername.Text.ToLower() == "admin")
                    {
                        Response.Redirect("~/products.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/productview.aspx");
                    }
                }


            }
            else
            {
                lblMsg.Text = "invaled User Name and Password";
            }
        }
    }
}