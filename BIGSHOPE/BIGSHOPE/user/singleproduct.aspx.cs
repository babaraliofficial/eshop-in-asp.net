using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.user
{
    public partial class singleproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            using (var db = new bigshopeEntities())
            {
                if(Request.QueryString["prod_id"] != null)
                {
                    int prod_id = Convert.ToInt32(Request.QueryString["prod_id"]);
                    var query = db.showProdDetails(prod_id);
                    RP.DataSource = query;
                    RP.DataBind();

                }
                else
                {
                    Response.Redirect("collection.aspx");
                }
            }
        }
        

        protected void RP_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "add")
            {
                List<int> listItems = new List<int>();
                if (Session["ItemList"] != null)
                {
                    listItems = (List<int>)Session["ItemList"];
                }

                listItems.Add(Convert.ToInt32(e.CommandArgument));
                Session["ItemList"] = listItems;

            }
        }
    }
}