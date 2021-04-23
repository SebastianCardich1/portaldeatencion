
package ModeloDAO;

import Modelo.Usuarios;
import Config.Database;
import java.sql.*;
import java.util.*;


public class DAOUsuarios {
    Database db = new Database();
    
    
     public List<Usuarios> accesar(String usuario, String contra) {
       List<Usuarios> datos = new ArrayList<>();
       Connection conn;
       PreparedStatement pst;
       ResultSet rs;
       String sql = "select nombre_completo, nivelUsuario from usuarios "
               + "where usuario='" + usuario + "' and contra='" + contra+
               "'";
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
            db.getUrl(),db.getUsuario(), db.getContraseña());
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                datos.add(new Usuarios(rs.getString("nombre_completo"), 
                                       rs.getInt("nivelUsuario")));
            }
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            
        }
       return datos;
    }
    

    public int contar_num_personajes() throws SQLException{ 
       int n= 0;
       Database db = new Database();
       Connection conn;
       PreparedStatement pst;
       ResultSet rs;
       String sql ="SELECT count(*) FROM usuarios WHERE nivelusuario=1";
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
            db.getUrl(),db.getUsuario(), db.getContraseña());
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                n=rs.getInt(1);
            }
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            
        }
       return n;
        
        
    }
     
    
    public int contar_num_solcitudes() throws SQLException{ 
       int n= 0;
       Database db = new Database();
       Connection conn;
       PreparedStatement pst;
       ResultSet rs;
       String sql ="SELECT count(codigo_alumno) FROM alumnomodelo";
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
            db.getUrl(),db.getUsuario(), db.getContraseña());
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                n=rs.getInt(1);
            }
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            
        }
       return n;
        
        
    }
    
    
      public int contar_num_solcitudes1() throws SQLException{ 
       int n= 0;
       Database db = new Database();
       Connection conn;
       PreparedStatement pst;
       ResultSet rs;
       String sql ="SELECT count(codigo_alumno) FROM solicitudes";
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
            db.getUrl(),db.getUsuario(), db.getContraseña());
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                n=rs.getInt(1);
            }
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            
        }
       return n;
        
        
    }
    
    
}
