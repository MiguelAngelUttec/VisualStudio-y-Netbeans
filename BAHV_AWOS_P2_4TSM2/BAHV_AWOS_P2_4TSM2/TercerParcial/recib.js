function inicializar() {
    var xmlhttp;
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var jsonResponse = xmlhttp.responseText;
            var objeto_json = JSON.parse(jsonResponse);
            productonum = objeto_json.producto;
            var modelList = document.getElementById("producto");//id del combo priemera practica

            //  alert(cancionesnum.length); compruebas cuantas canciones tienes
            /*  for (var i=0; i<cancionesnum.length; i++){
                  
                  var opt = objeto_json.canciones[i].titulo;
                  var option = document.createElement("option");
               //   var aur  = objeto_json.canciones[i].artista;
                 // var input = document.createElement("input");
                  
                  
                  option.text = opt;
                  modelList.add(option);
                //  input.text = aur;
                  //modelList.add(input);
              }//for */

            for (var i = 0; i < productonum.length; i++) {

                var option = document.createElement("option");
                option.value = objeto_json.producto[i].id_producto;
                option.text = objeto_json.producto[i].nombre;

                modelList.add(option);
            }
        }//if
    }//onread
    xmlhttp.open("GET", "ProductoServlet"); //dinamico nombre de servlet ?id_cancion="+str"
    xmlhttp.send();

}//inicializar

function mostrar(str) {
    var nombre = document.getElementById("nombre");
    var foto = document.getElementById("foto");

    if (parseInt(str) === 0) {
        alert("elige una cancion".toUpperCase());
        artista.value = "";
    } else {

        var xmlhttp;
        xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var jsonResponse = xmlhttp.responseText;
                var objeto_json = JSON.parse(jsonResponse);
                nombre.value = objeto_json.producto[0].nombre;
                foto.src = objeto_json.producto[0].foto;

            }//if
        };//onrread
        xmlhttp.open("GET", "ProductoServid?id_producto=" + str);
        xmlhttp.send();
    }//else
}//mostrar
window.addEventListener("load", inicializar, false)