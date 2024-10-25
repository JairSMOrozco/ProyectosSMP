package datos;

import java.io.*;
import negocios.Empleado;

public class EscribeArchivo {
    //Método
    public static void add(Empleado emp, String path) throws IOException {
        File archivo;
        FileWriter escribeArch = null;
        PrintWriter imprimeArch = null;

        try{
            archivo = new File(path);
            escribeArch = new FileWriter(archivo, true);
            imprimeArch = new PrintWriter(escribeArch);
            imprimeArch.println(emp.getNombre() + "," + emp.getApellidos() + "," + emp.getId());
        } catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                if(imprimeArch != null){
                    imprimeArch.close();
                }
            }catch (Exception e2){
                e2.printStackTrace();
            }
        }
    }
}
