
package Logica;

import Persistencia.ControladoraPersistencia;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.ArrayList;

import java.util.Date;
import java.util.List;

public class Controladora {
    
    ControladoraPersistencia conPe= new ControladoraPersistencia();
    



    public void crearCliente(String dni, String name, String surname, String nacimiento, String direccion,String profesioni){  
     Cliente cli= new Cliente();
  
      cli.setDni(dni);
   cli.setName(name);
   cli.setSurname(surname);
   cli.setNacimiento(nacimiento);
    cli.setDireccion(direccion);
  
     
     cli.setProfesion(profesioni);
     conPe.crearCliente(cli);
    }
   
    public void crearDatoshabitacion( int numero, int piso, String name, String tipo, float price){
    Datoshabitacion dah= new Datoshabitacion();
    dah.setId(numero);
    dah.setName(name);
    dah.setPiso(piso);
    dah.setTipo(tipo);
    dah.setPrice(price);
    conPe.crearDatoshabitacion(dah);
    
    }
/*   public void crearEmpleado(String dni, String name, String surname, String nacimiento, String direccion, String cargo){
   Empleado emp = new Empleado();
   emp.setDni(dni);
   emp.setName(name);
   emp.setSurname(surname);
   emp.setNacimiento(nacimiento);
  emp.setDireccion(direccion);
   emp.setCargo(cargo);
  
        conPe.crearEmpleado(emp);
    } */
    public void crearHabitacion( Datoshabitacion datoa, Login empleado, Cliente cliente, Date entrada, Date salida, Date registro,float total){
   Habitacion hab = new Habitacion();
   hab.setDatoa(datoa);
     hab.setEmpleado(empleado);
    hab.setCliente(cliente);
   hab.setEntrada(entrada);
    hab.setSalida(salida);
    hab.setRegistro(registro);
    hab.setTotal(total);
    conPe.crearHabitacion(hab);
    }
   
    public void crearLogin(String dni, String name, String surname, String nacimiento, String direccion, String cargo,String usuario, String password){
    Login log = new Login();
   
    log.setDni(dni);
   log.setName(name);
   log.setSurname(surname);
  log.setNacimiento(nacimiento);
  log.setDireccion(direccion);
   log.setCargo(cargo);
    log.setUsuario(usuario);
   log.setPassword(password);
   conPe.crearLogin(log);
    }
    /////trae los datos de los
    public List<Login> traerpersonas(){
            return conPe.traerpersonas();
    }
    public List<Cliente> traerclientes(){
            return conPe.traerclientes();
    }
    
    //habitacion
    public List<Habitacion> traerhabitacion(){
        return conPe.traerhabitacion();
    }
     public List<Datoshabitacion> traertraerdatoshab(){
        return conPe.traertraerdatoshab();
    }
        public List <Habitacion> muestradia(Date dia){
            
         List<Habitacion> fin =conPe.traerhabitacion();
         List<Habitacion> otra= new ArrayList<Habitacion>();
         int i=1;
               if(fin != null){
            for(Habitacion dato : fin){
                    if(dato.getEntrada().equals(dia)){
                      otra.add(dato);
                      
                    }
                }
                 return otra;
               }
            
           return otra;
    }   
      public List <Habitacion> buscaporid(long id){
         List<Habitacion> fin =conPe.traerhabitacion();
         Login at=conPe.buscaremp(id);
          List<Habitacion> otra= new ArrayList<Habitacion>();
               if(fin != null){
            for(Habitacion dato : fin){
                    if(  dato.getEmpleado().equals(at) ){
                             otra.add(dato);
                    }
                }
                 return otra;
               }
            
           return otra=null;
    }
     
     //borra clientes
    public void  borrarCliente(long id) throws NonexistentEntityException{
            conPe.borrarCliente(id);
    }
    public Cliente  buscaCliente(long id){
            return conPe.buscarCliente(id);
    }
   public Login  buscaemp(long id){
            return conPe.buscaremp(id);
    }
       
       public Datoshabitacion buscahab(int id){
            return conPe.buscarhab(id);
    }
       public void modificapersona(Cliente cli) throws Exception{
            conPe.modificapersona(cli);
       }
      

    
     public Cliente traerdni(String dni){
         List<Cliente> cli =conPe.traerclientes();
          if(cli != null){
            for(Cliente dato : cli){
                    if(dato.getDni().equals(dni) ){
                            return dato;
                    }
                }
        }
            return null;
    }
     public Login traeMang(String manag){
         List<Login> log =conPe.traerpersonas();
          if(log != null){
            for(Login dato : log){
                    if(dato.getUsuario().equals(manag) ){
                            return dato;
                    }
                }
        }
            return null;
    }
     
   public Datoshabitacion traertraerdatoshabid(int tipo){
         Datoshabitacion dah =conPe.traertraerdatoshabid(tipo);
          return dah;
    }
    
     public boolean verificaUsuario(String usuario, String pass){
        List<Login> listaUsuarios=conPe.traerpersonas();
        if(listaUsuarios != null){
            for(Login log : listaUsuarios){
                    if(log.getUsuario().equals(usuario) && log.getPassword().equals(pass)){
                            return true;
                    }
                }
        }
        return false;
    }
    
}
