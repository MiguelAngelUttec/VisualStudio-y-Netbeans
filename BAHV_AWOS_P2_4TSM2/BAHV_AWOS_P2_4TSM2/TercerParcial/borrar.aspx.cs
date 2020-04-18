using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAHV_AWOS_P2_4TSM2.Formularios;

namespace BAHV_AWOS_P2_4TSM2.Tercer_Parcial
{
    public partial class borrar : System.Web.UI.Page
    {
        public string RequestURI { get; private set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string html = "";
            string resultado = string.Empty;
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("https://localhost:44302/Formularios/jsonmostrar.aspx");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = new HttpResponseMessage();
            response = client.GetAsync(RequestURI).Result;
            if (response.IsSuccessStatusCode)
            {
                resultado = response.Content.ReadAsStringAsync().Result;
                List<Producto> jsonClientes = JsonConvert.DeserializeObject<List<Producto>>(resultado);
                foreach (Producto a in jsonClientes)
                {
                    html += "<center>";
                    html += "<div class='lol'>";
                    html += "<h1>Eliminar Producto con Java</h1>";
                    html += "</div>";
                    html += "<form action='http://localhost:8080/HEHI_AWOS_P3_4TSM2/ProductosServlet' method='post'>";
                    html += "<center>";
                  
                    html += "<h2>" + a.nombre + "</h2>" + "<h2>" + "<img width='80' height='80' src = " + a.foto + ">" + "</h2>";
                    html += "<input type='hidden' name='txtid_producto'  value='" + a.id_producto + "'>";
                    html += "<a href='menu.aspx'>" + "<input type='submit' class='butt' name='btE' value='Eliminar'>" + "</a>";
                    html += "<a href='java.aspx'>" + "<input type='button' class='butt' value='Volver'>" + "</a>";
                    html += "<br>";
                    html += "<hr>";
                    html += "</center>";
                    html +=    " </form>";
          
                    html += "</center>";
                }
                Literal1.Text = html;
            }
            else
            {
                resultado = response.IsSuccessStatusCode.ToString();
            }
        }
    }
}