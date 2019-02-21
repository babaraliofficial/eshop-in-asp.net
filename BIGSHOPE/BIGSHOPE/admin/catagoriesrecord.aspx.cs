using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class catagoriesrecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillCatagories();
        }
        private void FillCatagories()
        {
            using (var db = new bigshopeEntities())
            {
                var query_brnd = db.showBrands();
                GV_Brnds.DataSource = query_brnd;
                GV_Brnds.DataBind();

                var query_proc = db.showProcessor();
                GV_Proc.DataSource = query_proc;
                GV_Proc.DataBind();

                var query_gen = db.showGen();
                GV_Gen.DataSource = query_gen;
                GV_Gen.DataBind();

            }
        }

        protected void btnAddBrnd_Click(object sender, EventArgs e)
        {
            Response.Redirect("setupbrands.aspx");
        }

        protected void btnAddProc_Click(object sender, EventArgs e)
        {
            Response.Redirect("setupproc.aspx");
        }

        protected void btnAddGen_Click(object sender, EventArgs e)
        {
            Response.Redirect("setupgen.aspx");
        }
        
        protected void GV_Brnds_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("setupbrands.aspx?brnd_id=" + e.CommandArgument);
            }
            else if (e.CommandName == "delete")
            {

                using (var db = new bigshopeEntities())
                {
                    int brnd_id = Convert.ToInt32(e.CommandArgument);
                    db.deleteBrnd(brnd_id);
                    FillCatagories();
                }

            }
        }

        protected void GV_Brnds_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_Brnds_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_Proc_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("setupproc.aspx?proc_id=" + e.CommandArgument);
            }
            else if (e.CommandName == "delete")
            {

                using (var db = new bigshopeEntities())
                {
                    int proc_id = Convert.ToInt32(e.CommandArgument);
                    db.deleteProc(proc_id);
                    FillCatagories();
                }

            }
        }

        protected void GV_Proc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_Proc_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_Gen_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("setupgen.aspx?gen_id=" + e.CommandArgument);
            }
            else if (e.CommandName == "delete")
            {

                using (var db = new bigshopeEntities())
                {
                    int gen_id = Convert.ToInt32(e.CommandArgument);
                    db.deleteGen(gen_id);
                    FillCatagories();
                }

            }
        }

        protected void GV_Gen_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_Gen_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}