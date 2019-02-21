using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.user
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] != null)
            {
                Response.Redirect("profile.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var db = new bigshopeEntities())
            {
                var query = db.loginCustomer(tbUser.Text, EncDec.Encrypt(tbPassword.Text)).ToList();

                if (query.Count > 0)
                {
                    Session["customer_id"] = query[0].customer_id;
                    Session["email"] = query[0].customer_email;
                    Session.Timeout = 720;

                    Response.Redirect("profile.aspx");

                }
                else
                {
                    lblLoginStatus.Text = "Invalid username or password";
                }
            }
        }
    }
}