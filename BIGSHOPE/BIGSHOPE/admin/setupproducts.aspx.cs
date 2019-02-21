using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BIGSHOPE.admin
{
    public partial class setupproducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            if(Request.QueryString["prod_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int prod_id = Convert.ToInt32(Request.QueryString["prod_id"]);
                    tblProduct p = db.tblProducts.FirstOrDefault(v => v.prod_id == prod_id);
                    tbName.Text = p.prod_name;
                    tbDesc.Text = p.prod_desc;
                    tbPrice.Text = Convert.ToString(p.prod_price);
                    tbQty.Text = Convert.ToString(p.prod_qnty);
                    tbRAM.Text = p.prod_ram;
                    
                }
            }
            using (var db = new bigshopeEntities())
            {
                var query_brnd = db.showBrands();
                slctBrand.DataSource = query_brnd;
                slctBrand.DataValueField = "brnd_id";
                slctBrand.DataTextField = "brnd_name";
                slctBrand.DataBind();
                slctBrand.Items.Insert(0, new ListItem("-- Select a brand --", "0"));

                var query_proc = db.showProcessor();
                slctProc.DataSource = query_proc;
                slctProc.DataValueField = "proc_id";
                slctProc.DataTextField = "proc_name";
                slctProc.DataBind();
                slctProc.Items.Insert(0, new ListItem("-- Select a processor --", "0"));

                var query_gen = db.showGen();
                slctGen.DataSource = query_gen;
                slctGen.DataValueField = "gen_id";
                slctGen.DataTextField = "gen_name";
                slctGen.DataBind();
                slctGen.Items.Insert(0, new ListItem("-- Select a generation --", "0"));

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (var db = new bigshopeEntities())
            {
                if (Request.QueryString["prod_id"] != null)
                {
                    int prod_id = Convert.ToInt32(Request.QueryString["prod_id"]);
                    tblProduct p = db.tblProducts.FirstOrDefault(v => v.prod_id == prod_id);
                    p.prod_name = tbName.Text;
                    p.prod_desc = tbDesc.Text;
                    p.prod_price = Convert.ToInt32(tbPrice.Text);
                    p.prod_qnty = Convert.ToInt32(tbQty.Text);
                    p.prod_ram = tbRAM.Text;
                    
                    db.SaveChanges();
                    Response.Redirect("productrecord.aspx");

                }
                else
                {
                    //Forign Keys
                    int brnd_key = Convert.ToInt32(slctBrand.SelectedValue);
                    int proc_key = Convert.ToInt32(slctProc.SelectedValue);
                    int gen_key = Convert.ToInt32(slctGen.SelectedValue);

                    String img = fileImage.FileName.ToString();
                    int prod_qnty = Convert.ToInt32(tbQty.Text);

                    string folderPath = Server.MapPath("Files/");

                    //Check whether Directory (Folder) exists.
                    if (Directory.Exists(folderPath) != true)
                    {
                        //If Directory (Folder) does not exists Create it.
                        Directory.CreateDirectory(folderPath + fileImage.FileName);
                    }

                    //Save the File to the Directory (Folder).
                    fileImage.SaveAs(folderPath + Path.GetFileName(fileImage.FileName));

                    db.addProducts(tbName.Text, tbDesc.Text, tbPrice.Text, img, prod_qnty, tbRAM.Text, brnd_key, proc_key, gen_key);

                    lblStatus.Text = "Product added successfully!";
                    tbName.Text = "";
                    tbDesc.Text = "";
                    tbPrice.Text = "";
                    tbQty.Text = "";
                    tbRAM.Text = "";

                    db.SaveChanges();
                }
                
            }
        }

        protected void slctBrand_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void slctProc_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void slctGen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}