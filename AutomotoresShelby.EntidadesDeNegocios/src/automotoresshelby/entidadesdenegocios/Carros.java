/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package automotoresshelby.entidadesdenegocios;

//@author OA

public class Carros {
    private int id;
    private String marca;
    private String color;
    private String modelo;
    private String año;
    private String precio;
    private int top_aux;

    public Carros() {
    }

    public Carros(int id, String marca, String color, String modelo, String año, String precio, int top_aux) {
        this.id = id;
        this.marca = marca;
        this.color = color;
        this.modelo = modelo;
        this.año = año;
        this.precio = precio;
        this.top_aux = top_aux;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getAño() {
        return año;
    }

    public void setAño(String año) {
        this.año = año;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public int getTop_aux() {
        return top_aux;
    }

    public void setTop_aux(int top_aux) {
        this.top_aux = top_aux;
    }
    
}
