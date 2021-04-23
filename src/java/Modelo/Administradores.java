
package Modelo;

/**
 *
 * @author SEBASTIAN
 */
public class Administradores {
    
    String idusuario;
    String DNI;
    String numero;
    String nombre_compelto;
    String apellidos;
    String usuario;
    String contra;
    int nivelusuario;

    public Administradores() {
    }

    public Administradores(String idusuario, String DNI, String numero, String nombre_compelto, String apellidos, String usuario, String contra, int nivelusuario) {
        this.idusuario = idusuario;
        this.DNI = DNI;
        this.numero = numero;
        this.nombre_compelto = nombre_compelto;
        this.apellidos = apellidos;
        this.usuario = usuario;
        this.contra = contra;
        this.nivelusuario = nivelusuario;
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getNombre_compelto() {
        return nombre_compelto;
    }

    public void setNombre_compelto(String nombre_compelto) {
        this.nombre_compelto = nombre_compelto;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public int getNivelusuario() {
        return nivelusuario;
    }

    public void setNivelusuario(int nivelusuario) {
        this.nivelusuario = nivelusuario;
    }


    
    
}
