/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.ArrayList;

/**
 *
 * @author lagui
 */
@WebServlet(name = "ProductosServlet", urlPatterns = {"/ProductosServlet"})
public class ProductosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductosServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductosServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        GestionProductos llena = new GestionProductos();
        ArrayList <Productos>productos= llena.listadotodo();
        PrintWriter out = response.getWriter();
        //for (Empleado e : emp) {
          //  out.println("Nombre " + e.getNombre());
        //}
        
        Gson gson = new GsonBuilder().create();  
        JsonArray jarray = gson.toJsonTree(productos).getAsJsonArray(); //construyir arreglos como en el json
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("productos", jarray);

        out.print(jsonObject.toString());
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        GestionProductos gestiont = new GestionProductos();
     String id_producto    =request.getParameter("txtid_producto");   
     String nombre      =request.getParameter("txtnombre");
     String marca       =request.getParameter("txtmarca");
     String codigo         =request.getParameter("txtcodigo");
     String serie    =request.getParameter("txtserie");
     String precio       =request.getParameter("txtprecio");
     String nproductos        =request.getParameter("txtnproductos");
     String area       =request.getParameter("txtarea");
     String foto       =request.getParameter("txtfoto");
     String btE         =request.getParameter("btE");
     
     Productos productos = new Productos(id_producto, nombre, marca, codigo, serie, precio, nproductos, area, foto);
     PrintWriter out =response.getWriter();
     
     if(btE.equals("Alta")){
        if(gestiont.altapro(productos)){
            
           // response.sendRedirect("muestraTenis.jsp");
           response.sendRedirect("https://localhost:44302/TercerParcial/menu.aspx");
        }//ifgat
        
        else
            out.println("estoy mal");
    }//if alta
      if(btE.equals("Ver")){
         productos = gestiont.mostrarproductos(id_producto);
         request.setAttribute("productos", productos);
         request.getRequestDispatcher
        ("modyborraproductos.jsp").forward
        (request, response);
     }//ver 
       if(btE.equals("Eliminar")){
         gestiont.eliminarpro(id_producto);
        response.sendRedirect("https://localhost:44302/TercerParcial/borrar.aspx");
     }
        if(btE.equals("Modificar")){
      productos.setId_producto(id_producto);
        if(gestiont.modificarpro(productos)){
            
            response.sendRedirect("muestraProducto.jsp");
        }//ifgat
        
        else
            out.println("estoy mal");
    }//if alta
    }
     
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
