using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.admin
{
    public partial class setupcatagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["brnd_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int brnd_id = Convert.ToInt32(Request.QueryString["brnd_id"]);
                    tblBrand b = db.tblBrands.FirstOrDefault(v => v.brnd_id == brnd_id);
                    tbName.Text = b.brnd_name;
                    tbDesc.Text = b.brnd_desc;
                   
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (var db = new bigshopeEntities())
            {
                if(Request.QueryString["brnd_id"] != null)
                {
                    int brnd_id = Convert.ToInt32(Request.QueryString["brnd_id"]);
                    tblBrand b = db.tblBrands.FirstOrDefault(v => v.brnd_id == brnd_id);
                    b.brnd_name = tbName.Text;
                    b.brnd_desc = tbDesc.Text;
                    db.SaveChanges();

                    lblStatus.Text = "Brands updated successfully!";
                    Response.Redirect("catagoriesrecord.aspx");


                }
                else
                {
                    db.addBrands(tbName.Text, tbDesc.Text);
                    db.SaveChanges();
                    tbName.Text = "";
                    tbDesc.Text = "";
                    lblStatus.Text = "Brand added successfully!";
                }
            }
        }
    }
}