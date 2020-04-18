using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAHV_AWOS_P2_4TSM2.Formularios
{
    public partial class jsonmostrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Gestionproducto gs = new Gestionproducto();

            string jsonS = gs.GetCliente();
            Response.Write(jsonS);
        }
    }
}