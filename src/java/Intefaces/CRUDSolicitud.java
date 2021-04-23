
package Intefaces;


import java.util.List;
import Modelo.Solicitudes;

public interface CRUDSolicitud {
    public boolean add(Solicitudes sol);
    public Solicitudes list(String correo_alumno);
    public List listar();
}
