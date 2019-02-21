using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIGSHOPE.user
{
    public partial class UserPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            using(var db = new bigshopeEntities())
            {
                var query = db.showBrands();
                DLBrnd.DataSource = query;
                DLBrnd.DataBind();

                var qury = db.showProcessor();
                DLProc.DataSource = qury;
                DLProc.DataBind();

                var qry = db.showGen();
                DLGen.DataSource = qry;
                DLGen.DataBind();

            }
            
        }
        

    }
}