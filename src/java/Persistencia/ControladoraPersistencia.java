
package Persistencia;


import Logica.Cliente;
import Logica.Datoshabitacion;
import Logica.Empleado;
import Logica.Habitacion;
import Logica.Login;
import Logica.Persona;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
  
    ClienteJpaController cliJPA= new ClienteJpaController();
     DatoshabitacionJpaController dahJPA= new DatoshabitacionJpaController();     
     EmpleadoJpaController apuJPA = new EmpleadoJpaController();
     HabitacionJpaController habJPA =new HabitacionJpaController();
     LoginJpaController logJPA= new LoginJpaController();
     PersonaJpaController perJPA= new PersonaJpaController();
     
   
    public void crearCliente(Cliente cli){
                cliJPA.create(cli);
    }
      public void borrarCliente(long id) throws NonexistentEntityException{
             
                cliJPA.destroy(id);
             
             
    }
      
       
        public void modificapersona(Cliente cli) throws Exception{
                cliJPA.edit(cli);
        }
   
    public void crearDatoshabitacion(Datoshabitacion dat){
        try {
            dahJPA.create(dat);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
  
    public void crearHabitacion(Habitacion hab){
     habJPA.create(hab);
     
    }
   
    public void crearLogin(Login log){
        logJPA.create(log);
    }
    public List<Habitacion> traerhabitacion(){
            return habJPA.findHabitacionEntities();
    }
    public List<Login> traerpersonas(){
        return logJPA.findLoginEntities();
    }
    
      public List<Cliente> traerclientes(){
        return cliJPA.findClienteEntities();
    }
       public List<Cliente> traerdni(){
        return cliJPA.findClienteEntities();
    }
      
        public List<Datoshabitacion> traertraerdatoshab(){
        return dahJPA.findDatoshabitacionEntities();
    }
          public Datoshabitacion traertraerdatoshabid(int tipo){
        return dahJPA.findDatoshabitacion(tipo);
    }

     public Cliente buscarCliente(long id){
                return cliJPA.findCliente(id);
         }
       public Datoshabitacion buscarhab(int id){
                return dahJPA.findDatoshabitacion(id);
         }
         public Login buscaremp(long id){
                return logJPA.findLogin(id);
         }

}

