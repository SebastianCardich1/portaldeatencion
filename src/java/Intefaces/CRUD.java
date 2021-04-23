
package Intefaces;

import Modelo.Persona;
import java.util.List;


public interface CRUD {
    public List listar();
    public Persona list(String correo_alumno);
    public boolean add(Persona per);
    public boolean edit(Persona per);
    public boolean eliminar(int id);
}
