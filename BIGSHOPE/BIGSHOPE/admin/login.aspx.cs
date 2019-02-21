using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            if (Session["username"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            using (var db = new bigshopeEntities())
            {
                var query = db.adminLogin(tbEmail.Text, tbPassword.Text).ToList();

                if (query.Count > 0)
                {
                    Session["username"] = query[0].adminName;
                    Session.Timeout = 720;

                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    lblStatus.Text = "Invalid username or password";
                }
            }
        }

        protected void cbRemember_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}