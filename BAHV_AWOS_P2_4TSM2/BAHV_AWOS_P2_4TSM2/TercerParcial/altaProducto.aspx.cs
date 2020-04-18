using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAHV_AWOS_P2_4TSM2.Formularios;

namespace BAHV_AWOS_P2_4TSM2.Tercer_Parcial
{
    public partial class altaAlimento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*String id_alimento = Request.Form["id_alimento"];
            txtId.Text = id_alimento;
            List<Alimento> alimento = Gestionalimento.buscador(id_alimento);
            foreach (Alimento a in alimento)
            {

                textn.Text = a.nombre;
                textp.Text = a.proteinas;
                texth.Text = a.hidratos;
                textg.Text = a.grasas;
                textv.Text = a.vitaminas;
                textm.Text = a.minerales;
                textf.Text = a.fibra;
                }*/

            string id_producto = "";
            if (!string.IsNullOrEmpty(Request.Form["id_producto"]))
            {
                id_producto = Request.Form["id_producto"];
                this.txtId.Text = id_producto;//caja de texto
                Producto alimento = Gestionproducto.busca2(id_producto);
                if (alimento != null)
                {
                    textn.Text = alimento.nombre;
                    textp.Text = alimento.marca;
                    texth.Text = alimento.codigo;
                    textg.Text = alimento.serie;
                    textv.Text = alimento.precio;
                    textm.Text = alimento.nproductos;
                    textf.Text = alimento.area;
                    textfoto.Text = alimento.foto;
                }

            }


            /*
               String id_alimento = Request.Form["id_alimento"];
               txtId.Text = id_alimento;
               Alimento alimento = Gestionalimento.busca2(id_alimento);
                   textn.Text = alimento.nombre;
                   textp.Text = alimento.proteinas;
                   texth.Text = alimento.hidratos;
                   textg.Text = alimento.grasas;
                   textv.Text = alimento.vitaminas;
                   textm.Text = alimento.minerales;
                   textf.Text = alimento.fibra;
                   textfoto.Text = alimento.foto;
                   */

        }//load


        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Conexion.probarConexion() != null)
            {
                Response.Write("Sio");
            }
            else
            {

                Response.Write("no funca");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Producto a = new Producto();
            a.nombre = textn.Text;
            a.marca = textp.Text;
            a.codigo = texth.Text;
            a.serie = textg.Text;
            a.precio = textv.Text;
            a.nproductos = textm.Text;
            a.area = textf.Text;
            a.foto = textfoto.Text;
            string c = Gestionproducto.altaProducto(a);
            Response.Write("<script>alert('" + c + "');</script>");
            Response.Redirect("menu.aspx");
        }

        protected void Alta2_Click(object sender, EventArgs e)
        {
            Producto a = new Producto();
            a.nombre = textn.Text;
            a.marca = textp.Text;
            a.codigo = texth.Text;
            a.serie = textg.Text;
            a.precio = textv.Text;
            a.nproductos = textm.Text;
            a.area = textf.Text;
            a.foto = textfoto.Text;
            string c = Gestionproducto.altaProducto(a);//altaaa
            Response.Write("<script>alert('" + c + "');</script>");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Producto a = new Producto();
            a.id_producto = txtId.Text;
            a.nombre = textn.Text;
            a.marca = textp.Text;
            a.codigo = texth.Text;
            a.serie = textg.Text;
            a.precio = textv.Text;
            a.nproductos = textm.Text;
            a.area = textf.Text;
            a.foto = textfoto.Text;
            string c = Gestionproducto.modProducto(a);
            //  Response.Write(a.id_alimento);
            Response.Redirect("vistaProducto.aspx");
            //    Response.Write("<script>alert('" + c + "');</script>");

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("vistaProducto.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }
    }
}