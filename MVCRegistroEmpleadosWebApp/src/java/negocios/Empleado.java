package negocios;

/**
 *
 * @author Jair SM Orozco
 */
public class Empleado {

    private String nombre;
    private String apellidos;
    private int id;

    public Empleado(String name, String last_name, int empleadoId) {
        this.nombre = name;
        this.apellidos = last_name;
        this.id = empleadoId;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public int getId() {
        return id;
    }

    public String toString() {
        return (nombre + " " + apellidos + " ID empleado: " + id);
    }
}
