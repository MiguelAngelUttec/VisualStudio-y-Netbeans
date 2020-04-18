using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAHV_AWOS_P2_4TSM2.TercerParcial
{
    public partial class Tabla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string URL = "http://localhost:8080/HEHI_AWOS_P3_4TSM2/ProductosServlet";
            //
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
            request.ContentType = "aplication/json; charset=uff-8";
            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            using (Stream responseStream = response.GetResponseStream())

            {
                StreamReader reader = new StreamReader(responseStream);
                // Response.Write(reader.ReadToEnd());
            }


        }

    }
}