package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUDUsuarios;
import Modelo.Solicitudes;
import Config.Database;
import Intefaces.CRUDUsuarios;
import Modelo.Administradores;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class AdministradoresDAO implements CRUDUsuarios{

    Database db=new Database();
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public boolean add(Administradores ad) {
        String sql="insert into usuarios(DNI,numero,nombre_completo,apellidos,usuario,contra,nivelUsuario)values('"+ad.getDNI()+"','"+ad.getNumero()+"','"+ad.getNombre_compelto()+"','"+ad.getApellidos()+"','"+ad.getUsuario()+"','"+ad.getUsuario()+"','"+ad.getNivelusuario()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
 
 
    
}
