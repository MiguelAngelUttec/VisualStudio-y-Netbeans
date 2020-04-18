/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

/**
 *
 * @author lagui
 */
public class Productos {
    
    private String id_producto;
    private String nombre;
    private String marca;
    private String codigo;
    private String serie;
    private String precio;
    private String nproductos;
    private String area;
    private String foto;
    
    public Productos(){}

    public Productos(String id_producto, String nombre, String marca, String codigo, String serie, String precio, String nproducto, String area, String foto) {
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

    public Productos(String id_producto, String nombre) {
        this.id_producto = id_producto;
        this.nombre = nombre;
    }

    public String getId_producto() {
        return id_producto;
    }

    public void setId_producto(String id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getNproductos() {
        return nproductos;
    }

    public void setNproductos(String nproductos) {
        this.nproductos = nproductos;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
}
