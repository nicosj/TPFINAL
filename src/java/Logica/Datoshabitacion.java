package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Datoshabitacion implements Serializable {
    @Id
    int id;
    @Basic         
    int piso;
    String name;
    String tipo;
    float price;

    public Datoshabitacion() {
    }

    public Datoshabitacion(int id, int piso, String name, String tipo, float price) {
        this.id = id;
        this.piso = piso;
        this.name = name;
        this.tipo = tipo;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPiso() {
        return piso;
    }

    public void setPiso(int piso) {
        this.piso = piso;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

   
    
    
}
