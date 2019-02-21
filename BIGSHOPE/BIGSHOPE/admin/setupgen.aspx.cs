using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class setupgen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["gen_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int gen_id = Convert.ToInt32(Request.QueryString["gen_id"]);
                    tblGen g = db.tblGens.FirstOrDefault(v => v.gen_id == gen_id);
                    tbName.Text = g.gen_name;
                    tbDesc.Text = g.gen_desc;

                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (var db = new bigshopeEntities())
            {
                if (Request.QueryString["gen_id"] != null)
                {
                    int gen_id = Convert.ToInt32(Request.QueryString["gen_id"]);
                    tblGen g = db.tblGens.FirstOrDefault(v => v.gen_id == gen_id);
                    g.gen_name = tbName.Text;
                    g.gen_desc = tbDesc.Text;
                    db.SaveChanges();

                    lblStatus.Text = "Generation updated successfully!";
                    Response.Redirect("catagoriesrecord.aspx");


                }
                else
                {
                    db.addGenration(tbName.Text, tbDesc.Text);
                    db.SaveChanges();
                    tbName.Text = "";
                    tbDesc.Text = "";
                    lblStatus.Text = "New gen added successfully!";
                }
            }
        }
    }
}