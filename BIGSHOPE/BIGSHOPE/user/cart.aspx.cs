using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.user
{
    public partial class cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack) return;

            if (Session["ItemList"] != null)
            {

                List<int> lst = new List<int>();
                lst = (List<int>)Session["ItemList"];

                string ItemList = "";

                foreach (var item in lst)
                {
                    ItemList += (ItemList == "" ? "" : ",") + item;
                }

                using (var db = new bigshopeEntities())
                {

                    var query = db.addToCart(ItemList); 
                    GV.DataSource = query;
                    GV.DataBind();

                }

            }
            

        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if(e.CommandName == "delete")
            {

                List<int> lst = new List<int>();
                lst = (List<int>)Session["ItemList"];

                lst.Remove(Convert.ToInt32(e.CommandArgument));

                string itemList = "";

                foreach (var item in lst)
                {
                    itemList += (itemList == "" ? "" : ",") + item;
                }

                using (var db = new bigshopeEntities())
                {
                    var query = db.addToCart(itemList);
                    GV.DataSource = query;
                    GV.DataBind();
                }

                Session["ItemList"] = lst;

            }
            

        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btnBackShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("collection.aspx");
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            // Label grndTotal = GV.FindControl("grndTotal") as Label;
            
            // Session["grndTotal"] = grndTotal.Text;
            // Session.Timeout = 720;

            Response.Redirect("checkout.aspx");
        }
        

    }
}