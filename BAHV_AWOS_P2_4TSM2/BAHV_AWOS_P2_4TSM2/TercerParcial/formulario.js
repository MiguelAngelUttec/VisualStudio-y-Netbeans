function inicializar() {

    var xmlhttp;
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var jsonResponse = xmlhttp.responseText;
            var objeto_json = JSON.parse(jsonResponse);
            var productonum = objeto_json.productos;
            var tabla = document.getElementById("productos");


            for (var i = 0; i < productonum.length; i++) {

                var fila = document.createElement("tr");
                var c1 = document.createElement("th");
                var c1 = document.createElement("th");
                var t1 = document.createTextNode(objeto_json.productos[i].nombre);
                c1.appendChild(t1);
                fila.appendChild(c1);


                var c2 = document.createElement("th");
                var t2 = document.createTextNode(objeto_json.productos[i].marca);
                c2.appendChild(t2);
                fila.appendChild(c2);

                var c3 = document.createElement("th");
                var t3 = document.createTextNode(objeto_json.productos[i].codigo);
                c3.appendChild(t3);
                fila.appendChild(c3);

                var c4 = document.createElement("th");
                var t4 = document.createTextNode(objeto_json.productos[i].serie);
                c4.appendChild(t4);
                fila.appendChild(c4);


                var c5 = document.createElement("th");
                var t5 = document.createTextNode(objeto_json.productos[i].precio);
                c5.appendChild(t5);
                fila.appendChild(c5);

                var c6 = document.createElement("th");
                var t6 = document.createTextNode(objeto_json.productos[i].nproductos);
                c6.appendChild(t6);
                fila.appendChild(c6);

                var c7 = document.createElement("th");
                var t7 = document.createTextNode(objeto_json.productos[i].area);
                c7.appendChild(t7);
                fila.appendChild(c7);

                var c8 = document.createElement("th");
                var t8 = document.createElement("img");
                t8.src = objeto_json.productos[i].foto;
                c8.appendChild(t8);
                fila.appendChild(c8);
                tabla.appendChild(fila);
                tabla.appendChild(fila);
            }
        }//if 
    }//onread
    xmlhttp.open("GET", "trabajo.aspx"); //dinamico nombre de servlet
    xmlhttp.send();
}//inicio
window.addEventListener("load", inicializar, false);