using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GraduationProjct
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies.Get("login") != null)
            {
                Response.Redirect("/productview.aspx");
            }
            else
            {
                Response.Redirect("/login.aspx");
            }
        }
    }
}