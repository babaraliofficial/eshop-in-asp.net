using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class manage_orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new bigshopeEntities())
            {
                var query = db.getOrder();
                GV.DataSource = query;
                GV.DataBind();
            }
        }


        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}