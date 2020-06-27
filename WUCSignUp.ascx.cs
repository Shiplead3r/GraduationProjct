using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GraduationProjct
{
    public partial class WUCSignUp : System.Web.UI.UserControl
    {
        private ShopContext db = new ShopContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var user = db.Members.SingleOrDefault<Member>(x => x.UserName == txtUserName.Text);   
            if(user == null)
            {
                Member member = new Member
                {
                    UserName = txtUserName.Text,
                    Password = txtPassword.Text,
                    Phone = txtPhone.Text,
                    Address = txtAddress.Text,
                    Gender = RadioButtonList1.SelectedValue,
                    Email = txtEmail.Text,
                    Name = txtName.Text
                };
                db.Members.Add(member);
                try
                {
                    if (db.SaveChanges() == 1)
                    {
                        LabelMsg.Text = "User addedd successfully";
                    }
                    else
                    {

                    }
                }
                catch(Exception ex)
                {
                    LabelMsg.Text = ex.Message;
                }
                
            }
            else
            {
                LabelMsg.Text = "Username already in the database";
            }
         
        }
    }
}