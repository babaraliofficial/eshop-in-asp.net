using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class ourclients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillClients();
        }
        private void FillClients()
        {
            using (var db = new bigshopeEntities()) 
            {
                var query = db.showCustomers();
                GV.DataSource = query;
                GV.DataBind();
            }
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "delete")
            {
                using (var db = new bigshopeEntities())
                {
                    int client_id = Convert.ToInt32(e.CommandArgument);
                    db.deleteCustomer(client_id);
                    db.SaveChanges();
                    FillClients();
                }
            }
        }
    }
}