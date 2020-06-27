using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GraduationProjct
{
    public partial class WUCProducts : System.Web.UI.UserControl
    {
        private ShopContext db = new ShopContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies.Get("login") != null)
            {
                if (Request.Cookies["login"]["User"] == "admin")
                {

                    gdvProduct.DataSource = db.Products.ToList();
                    gdvProduct.DataBind();
                    btnInsert.Visible = true;
                    btnUpdate.Visible = false;
                    btnDelete.Visible = false;
                }
                else
                {
                    Response.Redirect("/productview.aspx");

                }

            }
            else
            {
                Response.Redirect("/login.aspx");
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Product p = new Product()
            {
                Name = txtProductName.Text,
                Price = Convert.ToDecimal(txtProductPrice.Text),
                Description = txtDescription.Text,
                CategoryId = Convert.ToInt32(DropDownList1.SelectedValue),
                Quantity = Convert.ToInt32(txtQuantity.Text)
            };
            db.Products.Add(p);
            db.SaveChanges();
            if (productImage.HasFile)
            {
                productImage.SaveAs(Server.MapPath("imagepro") + "\\" + DropDownList1.SelectedValue.Trim() + "-" + txtProductName.Text.Trim() + ".jpg");
                lblMsg.Text = "Data Has Been Added";
                imgProduct.ImageUrl = "~\\imagepro\\" + DropDownList1.SelectedValue.Trim() + "-" + txtProductName.Text.Trim() + ".jpg";
            }
            gdvProduct.DataSource = db.Products.ToList();
            gdvProduct.DataBind();
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
           
            gdvProduct.DataSource = db.Products.ToList();
            gdvProduct.DataBind();
            txtProductName.Text = "";
            txtProductPrice.Text = "";
            txtDescription.Text = "";
            txtQuantity.Text = "";
            lblMsg.Text = "";
            imgProduct.ImageUrl = "";
            btnInsert.Visible = true;
            btnUpdate.Visible = false;
            btnDelete.Visible = false;
            gdvProduct.SelectedIndex = -1;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var br = db.Products.Find(Convert.ToInt32(gdvProduct.SelectedRow.Cells[1].Text.ToString()));
            db.Products.Remove(br);
            db.SaveChanges();
            lblMsg.Text = "Data has Been Deleted";
            gdvProduct.DataSource = db.Products.ToList();
            gdvProduct.DataBind();
            txtProductName.Text = "";
            txtProductPrice.Text = "";
            txtDescription.Text = "";
            txtQuantity.Text = "";
            lblMsg.Text = "";
            imgProduct.ImageUrl = "";
            btnInsert.Visible = true;
            btnUpdate.Visible = false;
            btnDelete.Visible = false;
            gdvProduct.SelectedIndex = -1;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //var pr = db.product.Find(Convert.ToInt32(Gdvproduct.SelectedRow.Cells[1].Text.ToString()));
            //pr.productname = txtproductname.Text;
            //pr.price = Convert.ToDecimal(txtprice.Text);
            //pr.description = txtdescription.Text;
            //pr.categoryno = Convert.ToInt32(ddlcategory.SelectedValue);
            //pr.brandno = Convert.ToInt32(ddlbrand.SelectedValue);
            //pr.quantity = Convert.ToInt32(txtquantity.Text);
            //db.SaveChanges();

            //if (fup.HasFile)
            //{
            //    fup.SaveAs(Server.MapPath("imagepro") + "\\" + ddlcategory.SelectedValue.Trim() + "-" + txtproductid.Text.Trim() + ".jpg");
            //    lblmsg.Text = "Data Has Been Added";
            //    imgproduct.ImageUrl = "~\\imagepro\\" + ddlcategory.SelectedValue.Trim() + "-" + txtproductid.Text.Trim() + ".jpg";
            //}
            //lblmsg.Text = "data has been updated";
            //Gdvproduct.DataSource = db.product.ToList();
            //Gdvproduct.DataBind();
            //txtproductname.Text = "";
            //txtprice.Text = "";
            //txtdescription.Text = "";
            //txtquantity.Text = "";
            //lblmsg.Text = "";
            //imgproduct.ImageUrl = "";
            //btninsert.Visible = true;
            //btnUpdate.Visible = false;
            //btndelete.Visible = false;
            //Gdvproduct.SelectedIndex = -1;
        }

        protected void gdvProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtProductName.Text = gdvProduct.SelectedRow.Cells[2].Text.ToString();
            txtProductPrice.Text = gdvProduct.SelectedRow.Cells[3].Text.ToString();
            txtDescription.Text = gdvProduct.SelectedRow.Cells[5].Text.ToString();
            txtQuantity.Text = gdvProduct.SelectedRow.Cells[4].Text.ToString();

            imgProduct.ImageUrl = "~\\imagepro\\" + DropDownList1.SelectedValue.Trim() + "-" + txtProductName.Text.Trim() + ".jpg";
            btnInsert.Visible = false;
            btnDelete.Visible = true;
            btnUpdate.Visible = true;
        }
    }
}