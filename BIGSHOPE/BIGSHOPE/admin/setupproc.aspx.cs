using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class setupproc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["proc_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int proc_id = Convert.ToInt32(Request.QueryString["proc_id"]);
                    tblProcessor p = db.tblProcessors.FirstOrDefault(v => v.proc_id == proc_id);
                    tbName.Text = p.proc_name;
                    tbDesc.Text = p.proc_desc;

                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (var db = new bigshopeEntities())
            {
                if (Request.QueryString["proc_id"] != null)
                {
                    int proc_id = Convert.ToInt32(Request.QueryString["proc_id"]);
                    tblProcessor p = db.tblProcessors.FirstOrDefault(v => v.proc_id == proc_id);
                    p.proc_name = tbName.Text;
                    p.proc_desc = tbDesc.Text;
                    db.SaveChanges();

                    lblStatus.Text = "Processor updated successfully!";
                    Response.Redirect("catagoriesrecord.aspx");


                }
                else
                {
                    db.addProc(tbName.Text, tbDesc.Text);
                    db.SaveChanges();
                    tbName.Text = "";
                    tbDesc.Text = "";
                    lblStatus.Text = "New processor added successfully!";
                }
            }
        }
    }
}