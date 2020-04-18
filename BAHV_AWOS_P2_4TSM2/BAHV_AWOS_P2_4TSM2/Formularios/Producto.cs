using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BAHV_AWOS_P2_4TSM2.Formularios
{
    public class Producto
    {
        public string id_producto { get; set; }

        public string nombre { get; set; }

        public string marca { get; set; }

        public string codigo { get; set; }

        public string serie { get; set; }

        public string precio { get; set; }

        public string nproductos { get; set; }

        public string area { get; set; }

        
        public string foto { get; set; }
        public Producto()
        {

        }
        public Producto(string id_producto, string nombre, string marca, string codigo, string serie, string precio, string nproductos, string area, string foto)
        {
            this.id_producto = id_producto;

            this.nombre = nombre;

            this.marca = marca;

            this.codigo = codigo;

            this.serie = serie;

            this.precio = precio;

            this.nproductos = nproductos;

            this.area = area;

            this.foto = foto;

        }
    }

}