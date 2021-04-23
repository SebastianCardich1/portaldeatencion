
package Modelo;

public class Persona {
    String correo_alumno;
    String codigo_alumno;
    String apellidos;
    String nombres;
    String dni;
    String telefono;
    String sede;
    String tipo_programa;
    String carrera;
    String tramite;
    String detalle_solicitud;
    

    public Persona() {
    }

    public Persona(String correo_alumno, String codigo_alumno, String apellidos, String nombres, String dni, String telefono, String sede, String tipo_programa, String carrera, String tramite, String detalle_solicitud) {
        this.correo_alumno = correo_alumno;
        this.codigo_alumno = codigo_alumno;
        this.apellidos = apellidos;
        this.nombres = nombres;
        this.dni = dni;
        this.telefono = telefono;
        this.sede = sede;
        this.tipo_programa = tipo_programa;
        this.carrera = carrera;
        this.tramite = tramite;
        this.detalle_solicitud = detalle_solicitud;
    }

    public String getCorreo_alumno() {
        return correo_alumno;
    }

    public void setCorreo_alumno(String correo_alumno) {
        this.correo_alumno = correo_alumno;
    }

    public String getCodigo_alumno() {
        return codigo_alumno;
    }

    public void setCodigo_alumno(String codigo_alumno) {
        this.codigo_alumno = codigo_alumno;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getSede() {
        return sede;
    }

    public void setSede(String sede) {
        this.sede = sede;
    }

    public String getTipo_programa() {
        return tipo_programa;
    }

    public void setTipo_programa(String tipo_programa) {
        this.tipo_programa = tipo_programa;
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

    public String getDetalle_solicitud() {
        return detalle_solicitud;
    }

    public void setDetalle_solicitud(String detalle_solicitud) {
        this.detalle_solicitud = detalle_solicitud;
    }
    

    
}
