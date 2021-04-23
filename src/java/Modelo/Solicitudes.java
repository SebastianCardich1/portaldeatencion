
package Modelo;


public class Solicitudes {
    String codigo_alumno;
    String nombre;
    String apellidos;
    String correo_alumno;
    String  carrera;
    String tramite;
    String trabajador;
    String fecha;
    String resolutivo;

    public Solicitudes() {
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Solicitudes(String codigo_alumno, String nombre, String apellidos, String correo_alumno, String carrera, String tramite, String trabajador, String resolutivo) {
        this.codigo_alumno = codigo_alumno;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.correo_alumno = correo_alumno;
        this.carrera = carrera;
        this.tramite = tramite;
        this.trabajador = trabajador;
        this.trabajador = resolutivo;
    }

    public String getResolutivo() {
        return resolutivo;
    }

    public void setResolutivo(String resolutivo) {
        this.resolutivo = resolutivo;
    }

    public String getCodigo_alumno() {
        return codigo_alumno;
    }

    public void setCodigo_alumno(String codigo_alumno) {
        this.codigo_alumno = codigo_alumno;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCorreo_alumno() {
        return correo_alumno;
    }

    public void setCorreo_alumno(String correo_alumno) {
        this.correo_alumno = correo_alumno;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getTramite() {
        return tramite;
    }

    public void setTramite(String tramite) {
        this.tramite = tramite;
    }

    public String getTrabajador() {
        return trabajador;
    }

    public void setTrabajador(String trabajador) {
        this.trabajador = trabajador;
    }

   
    
    
    
}
