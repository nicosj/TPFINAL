
package Logica;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class Habitacion  implements Serializable  {
    
   @Id
   @GeneratedValue(strategy= GenerationType.AUTO)
    long id;
   @OneToOne
     Datoshabitacion datoa;
    @OneToOne
    Login empleado;
     @OneToOne
     Cliente cliente;
   @Temporal(TemporalType.DATE)
    Date entrada;
    @Temporal(TemporalType.DATE)
    Date salida;   
    @Temporal(TemporalType.DATE)
    Date registro;
    float total;

    public Habitacion() {
    }

    public Habitacion(long id, Datoshabitacion datoa, Login empleado, Cliente cliente, Date entrada, Date salida, Date registro, float total) {
        this.id = id;
        this.datoa = datoa;
        this.empleado = empleado;
        this.cliente = cliente;
        this.entrada = entrada;
        this.salida = salida;
        this.registro = registro;
        this.total = total;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Datoshabitacion getDatoa() {
        return datoa;
    }

    public void setDatoa(Datoshabitacion datoa) {
        this.datoa = datoa;
    }

    public Login getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Login empleado) {
        this.empleado = empleado;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Date getEntrada() {
        return entrada;
    }

    public void setEntrada(Date entrada) {
        this.entrada = entrada;
    }

    public Date getSalida() {
        return salida;
    }

    public void setSalida(Date salida) {
        this.salida = salida;
    }

    public Date getRegistro() {
        return registro;
    }

    public void setRegistro(Date registro) {
        this.registro = registro;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    
}