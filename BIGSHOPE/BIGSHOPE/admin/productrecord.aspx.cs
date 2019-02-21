using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class productrecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillProducts();
        }
        private void FillProducts()
        {
            using (var db = new bigshopeEntities())
            {
                var query = db.showProducts();
                GV.DataSource = query;
                GV.DataBind();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("setupproducts.aspx");
        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "edit")
            {
                Response.Redirect("setupproducts.aspx?prod_id=" + e.CommandArgument);
            }
            else if (e.CommandName == "delete")
            {

                using (var db= new bigshopeEntities())
                {
                    int prod_id = Convert.ToInt32(e.CommandArgument);
                    db.deleteProduct(prod_id);
                    db.SaveChanges();
                    FillProducts();

                }

            }
        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}