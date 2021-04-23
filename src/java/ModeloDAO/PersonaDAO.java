
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Config.Database;

public class PersonaDAO implements CRUD{
     Database db=new Database();
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p=new Persona();

    @Override
    public List listar() {
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from alumnomodelo";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
              Persona per=new Persona();
               per.setCorreo_alumno(rs.getString("correo_alumno"));
               per.setCodigo_alumno(rs.getString("codigo_alumno"));
               per.setApellidos(rs.getString("apellidos"));
               per.setNombres(rs.getString("nombres"));
               per.setDni(rs.getString("dni"));
               per.setTelefono(rs.getString("telefono"));
               per.setSede(rs.getString("sede"));
               per.setTipo_programa(rs.getString("tipo_programa"));
               per.setCarrera(rs.getString("carrera"));
               per.setTramite(rs.getString("tramite"));
               per.setDetalle_solicitud(rs.getString("detalle_solicitud"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    

    @Override
    public Persona list(String correo_alumno) {
        String sql="select * from alumnomodelo where correo_alumno="+correo_alumno;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){ 
               p.setCorreo_alumno(rs.getString("correo_alumno"));
               p.setCodigo_alumno(rs.getString("codigo_alumno"));
               p.setApellidos(rs.getString("apellidos"));
               p.setNombres(rs.getString("nombres"));
               p.setDni(rs.getString("dni"));
               p.setTelefono(rs.getString("telefono"));
               p.setSede(rs.getString("sede"));
               p.setTipo_programa(rs.getString("tipo_programa"));
               p.setCarrera(rs.getString("carrera"));
               p.setTramite(rs.getString("tramite"));
               p.setDetalle_solicitud(rs.getString("detalle_solicitud"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }
    
    
    
    public List<Persona> TraerRegistro(String codigo_alumno) {
        List<Persona> datos = new ArrayList<>();
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select * from alumnomodelo where codigo_alumno  like '%"+codigo_alumno+"%'";
        try{
            Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           rs=pst.executeQuery(sql);
           while(rs.next()){
               datos.add(new Persona(rs.getString("correo_alumno"),
                       rs.getString("codigo_alumno"),
                       rs.getString("apellidos"),
                       rs.getString("nombres"),
                       rs.getString("dni"),
                       rs.getString("telefono"),
                       rs.getString("sede"),
                       rs.getString("tipo_programa"),
                       rs.getString("carrera"),
                       rs.getString("tramite"),
                       rs.getString("detalle_solicitud")));
           }
        }catch(ClassNotFoundException | SQLException e){
            
        }
      return  datos;
         
         
//        Persona p=null;
//        Connection conn;
//        PreparedStatement pst;
//        ResultSet rs;
//        String sql = "select * from persona where id=?";
//        try{
//            Class.forName(db.getDriver());
//            conn = DriverManager.getConnection(
//               db.getUrl(),
//               db.getUsuario(),
//               db.getContraseña()
//           );
//           pst=conn.prepareStatement(sql);
//           pst.setString(1,id);
//           rs=pst.executeQuery(sql);
//           if(rs.next()){
//                  p= new Persona(rs.getInt("id"), rs.getString("nombres"),rs.getString("apellidos"), rs.getInt("edad"));           
//           }
//        }catch(ClassNotFoundException | SQLException e){            
//        }
//          return p;
    }
    
    
    
    
    
    
    

    @Override
    public boolean add(Persona per) {
        String sql="insert into alumnomodelo(correo_alumno,codigo_alumno,apellidos,nombres,dni,telefono,sede,tipo_programa,carrera,tramite,detalle_solicitud)values('"+per.getCorreo_alumno()+"','"+per.getCodigo_alumno()+"','"+per.getApellidos()+"','"+per.getNombres()+"','"+per.getDni()+"','"+per.getTelefono()+"','"+per.getSede()+"','"+per.getTipo_programa()+"','"+per.getCarrera()+"','"+per.getTramite()+"','"+per.getDetalle_solicitud()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean eliminar1(Persona per) {
       Connection conn;
       PreparedStatement pst;
       String sql= "delete from alumnomodelo where codigo_alumno=?";
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
            db.getUrl(),
            db.getUsuario(),
            db.getContraseña()            
            );
            pst= conn.prepareStatement(sql);
            pst.setString(2, per.getApellidos());
            conn.close();       
        } catch (ClassNotFoundException | SQLException e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}
