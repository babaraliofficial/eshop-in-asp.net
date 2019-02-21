using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.user
{
    public partial class collection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack) return;

            if (Request.QueryString["brnd_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int brnd_id = Convert.ToInt32(Request.QueryString["brnd_id"]);
                    var qryBrnd = db.showProdByBrnds(brnd_id);
                    RP.DataSource = qryBrnd;
                    RP.DataBind();
                }
            }

            else if (Request.QueryString["proc_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int proc_id = Convert.ToInt32(Request.QueryString["proc_id"]);
                    var qryProc = db.showProdByProc(proc_id);
                    RP.DataSource = qryProc;
                    RP.DataBind();
                }
            }

            else if (Request.QueryString["gen_id"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    int gen_id = Convert.ToInt32(Request.QueryString["gen_id"]);
                    var qryGen = db.showProdByProc(gen_id);
                    RP.DataSource = qryGen;
                    RP.DataBind();
                }
            }

            else if (Request.QueryString["search"] != null)
            {
                using (var db = new bigshopeEntities())
                {
                    var qrySrch = db.searchProducts(Request.QueryString["search"].ToString());
                    RP.DataSource = qrySrch;
                    RP.DataBind();
                }
            }

            else
            {
                using (var db = new bigshopeEntities())
                {
                    var query = db.showProducts();
                    RP.DataSource = query;
                    RP.DataBind();

                    var queryBrnd = db.showBrands();
                    DLBrnd.DataSource = queryBrnd;
                    DLBrnd.DataBind();

                    var quryProc = db.showProcessor();
                    DLProc.DataSource = quryProc;
                    DLProc.DataBind();

                    var qryGen = db.showGen();
                    DLGen.DataSource = qryGen;
                    DLGen.DataBind();

                }
            }
            
        }

        protected void RP_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
            if(e.CommandName == "add")
            {
                List<int> listItems = new List<int>();
                if(Session["ItemList"] != null)
                {
                    listItems = (List<int>) Session["ItemList"];
                }

                listItems.Add(Convert.ToInt32(e.CommandArgument));
                Session["ItemList"] = listItems;
                
            }

        }
    }
}