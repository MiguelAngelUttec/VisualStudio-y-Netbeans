using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BAHV_AWOS_P2_4TSM2.Formularios
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id_alimento = "";
            if (!string.IsNullOrEmpty(Request.Form["id_alimento"]))
            {
                id_alimento = Request.Form["id_alimento"];
                this.txtid.Text = id_alimento;// textbox
                Producto alimento = Gestionproducto.busca2(id_alimento);
                if (alimento != null)
                {
                    textnombre.Text = alimento.nombre;
                    textproteinas.Text = alimento.marca;
                    texthidratos.Text = alimento.codigo;
                    textgrasas.Text = alimento.serie;
                    textvitaminas.Text = alimento.precio;
                    textminerales.Text = alimento.nproductos;
                    textfibra.Text = alimento.area;
                }

            }

        }//load


        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Conexion.probarConexion() != null)
            {
                Response.Write("Echo");
            }
            else
            {

                Response.Write("Error");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Producto g = new Producto();
            g.nombre = textnombre.Text;
            g.marca = textproteinas.Text;
            g.codigo = texthidratos.Text;
            g.serie = textgrasas.Text;
            g.precio = textvitaminas.Text;
            g.nproductos = textminerales.Text;
            g.area = textfibra.Text;
            g.foto = textfoto.Text;
            string c = Gestionproducto.altaProducto(g);
            Response.Write("<script>alert('" + c + "');</script>");
            Response.Redirect("Lista.aspx");
        }

        protected void Alta2_Click(object sender, EventArgs e)
        {
            Producto g = new Producto();
            g.nombre = textnombre.Text;
            g.marca = textproteinas.Text;
            g.codigo = texthidratos.Text;
            g.serie = textgrasas.Text;
            g.precio = textvitaminas.Text;
            g.nproductos = textminerales.Text;
            g.area = textfibra.Text;
            g.foto = textfoto.Text;
            string c = Gestionproducto.altaProducto(g);
            Response.Write("<script>alert('" + c + "');</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            Gestionproducto.eliminar(txtid.Text);
            Response.Redirect("Lista.aspx");
        }




        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lista.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Producto g = new Producto();
            g.id_producto = txtid.Text;
            g.nombre = textnombre.Text;
            g.marca = textproteinas.Text;
            g.codigo = texthidratos.Text;
            g.serie = textgrasas.Text;
            g.precio = textvitaminas.Text;
            g.nproductos = textminerales.Text;
            g.area = textfibra.Text;
            g.foto = textfoto.Text;
            string c = Gestionproducto.modProducto(g);
            Response.Redirect("Lista.aspx");
        }
    }
}