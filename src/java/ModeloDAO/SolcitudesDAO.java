
package ModeloDAO;


import Config.Conexion;
import Intefaces.CRUDSolicitud;
import Modelo.Solicitudes;
import Config.Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class SolcitudesDAO implements CRUDSolicitud{

    Database db=new Database();
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
 
    @Override
    public boolean add(Solicitudes sol) {
         String sql="insert into solicitudes(codigo_alumno,nombres,apellidos,correo_alumno,carrera,tramite,nombre_completo, resolutivo)values('"+sol.getCodigo_alumno()+"','"+sol.getNombre()+"','"+sol.getApellidos()+"','"+sol.getCorreo_alumno()+"','"+sol.getCarrera()+"','"+sol.getTramite()+"','"+sol.getNombre()+"','"+sol.getResolutivo()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public Solicitudes list(String correo_alumno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     public List<Solicitudes> TraerRegistro(String codigo_alumno) {
        List<Solicitudes> datos = new ArrayList<>();
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select * from solicitudes codigo_alumno  like '%"+codigo_alumno+"%'";
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
               datos.add(new Solicitudes(rs.getString("codigo_alumno"),
                       rs.getString("nombres"),
                       rs.getString("apellidos"),
                       rs.getString("correo_alumno"),
                       rs.getString("carrera"),
                       rs.getString("tramite"),
                       rs.getString("nombre_completo"),
                       rs.getString("resolutivo")));
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
    public List listar() {
                ArrayList<Solicitudes>list=new ArrayList<>();
        String sql="select * from solicitudes";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
               Solicitudes sol =new Solicitudes();
               sol.setCodigo_alumno(rs.getString("codigo_alumno"));
               sol.setNombre(rs.getString("nombres"));
               sol.setApellidos(rs.getString("apellidos"));
               sol.setCorreo_alumno(rs.getString("correo_alumno"));
               sol.setCarrera(rs.getString("carrera"));
               sol.setTramite(rs.getString("tramite"));
               sol.setTrabajador(rs.getString("nombre_completo"));
                sol.setFecha(rs.getString("fecha"));
               list.add(sol);
            }
        } catch (Exception e) {
        }
        return list;
    }
     
     
     
    
}
