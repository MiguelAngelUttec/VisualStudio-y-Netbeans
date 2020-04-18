using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAHV_AWOS_P2_4TSM2.Tercer_Parcial
{
    public partial class java : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("borrar.aspx");

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }
    }
}