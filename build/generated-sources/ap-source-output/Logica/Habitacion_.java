package Logica;

import Logica.Cliente;
import Logica.Datoshabitacion;
import Logica.Login;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-08-09T20:00:55")
@StaticMetamodel(Habitacion.class)
public class Habitacion_ { 

    public static volatile SingularAttribute<Habitacion, Cliente> cliente;
    public static volatile SingularAttribute<Habitacion, Float> total;
    public static volatile SingularAttribute<Habitacion, Login> empleado;
    public static volatile SingularAttribute<Habitacion, Date> entrada;
    public static volatile SingularAttribute<Habitacion, Datoshabitacion> datoa;
    public static volatile SingularAttribute<Habitacion, Long> id;
    public static volatile SingularAttribute<Habitacion, Date> salida;
    public static volatile SingularAttribute<Habitacion, Date> registro;

}