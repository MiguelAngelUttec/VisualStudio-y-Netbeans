using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BAHV_AWOS_P2_4TSM2.Formularios
{
    public partial class Formulario : System.Web.UI.Page
    {
        string html = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Producto> alimento = Gestionproducto.consulta2();
            html += "<section class='contenido'>";
            foreach (Producto g in alimento)
            {
                html += "<div class= 'div'>";
                html += "<h2 class='h2'>" + "Producto Registrado" + "</h2>";
                html += "<ul>";
                html += "<a href='Principal.aspx'>" + "<li>" + g.nombre + "</li>" + "</a>";
                html += "<li>" + g.marca + "</li>";
                html += "<li>" + g.codigo + "</li>";
                html += "<li>" + g.serie + "</li>";
                html += "<li>" + g.precio + "</li>";
                html += "<li>" + g.nproductos + "</li>";
                html += "<li>" + g.area + "</li>";
                html += "</ul>";
                html += "</div>";
            }//for
            html += "</section>";
            Literal.Text = html;
            
        }
    }
}