using BAHV_AWOS_P2_4TSM2.Formularios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAHV_AWOS_P2_4TSM2.Tercer_Parcial
{
    public partial class vistaAlimento : System.Web.UI.Page
    {
        string html = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Gestionproducto.consulta().Rows.Count > 0)
            {
                html += "<center>";
                html += "<table>";
                html += "<thead><tr><th>Nombre</th><th>Marca</th><th>Codigo</th><th>Serie</th><th>Precio</th><tH>No_Productos</th><th>Area</th><th>Foto</th></thead>";
                html += "<tbody>";
                foreach (DataRow dbRow in Gestionproducto.consulta().Rows)
                {
                    html += "<form action='altaProducto.aspx' method='post'>";
                    html += "<tr>";
                    html += "<td>" + dbRow["nombre"].ToString();
                    html += "<input  type='hidden' name='id_producto' value='" + dbRow["id_producto"].ToString() + "'>" + "</td>";
                    html += "<td>" + dbRow["marca"].ToString() + "</td>";
                    html += "<td>" + dbRow["codigo"].ToString() + "</td>";
                    html += "<td>" + dbRow["serie"].ToString() + "</td>";
                    html += "<td>" + dbRow["precio"].ToString() + "</td>";
                    html += "<td>" + dbRow["nproductos"].ToString() + "</td>";
                    html += "<td>" + dbRow["area"].ToString() + "</td>";
                    html += "<td>" + "<img width='80' height='80' src = " + dbRow["foto"].ToString() + ">" + "</td>";
                    html += "<td><input class='btn' type='submit' value='Ver Detalles'></td>";
                    html += "</tr>";
                    html += "</form>";
                }//for
                html += "</tbody>";
                html += "</table>";
                html += "</center>";
            }//if

            else
            {
                html += "<table>";
                html += "<tr><td><marquee>No hay alimentos registrados </marquee></tr></td>";
                html += "</table>";
            }//else
            Literal1.Text = html;
        }
    }
}