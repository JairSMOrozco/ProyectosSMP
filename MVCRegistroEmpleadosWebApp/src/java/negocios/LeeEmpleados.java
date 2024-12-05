package negocios;

/**
 *
 * @author Jair SM Orozco
 */

import java.io.*;
import java.util.ArrayList;

public class LeeEmpleados {
    private static int contador = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
 
    static ArrayList <Empleado> empleados =new ArrayList<Empleado>();
    
    public static ArrayList <Empleado> leeEmpleados(String path){
        
        try { 
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea=null;
            String [] tokensLinea = null;
            
            String nombre;
            String apellido;
            int id;            
            Empleado empleado;
            //Para iniciar la  recuperación de la informacion que hemos alamcenado en el archivo
            //inicamos la lectura desde la primer linea del archivo:
            linea = br.readLine();
            //Como la primer linea del archivo esta en blanco, debemos omitirla en la lectura de 
            //los datos a recuperar del archivo y empezamos a leer desde la segunda linea:
            linea = br.readLine();
            
            while( linea!=null){
                tokensLinea = linea.split(",");
                nombre =tokensLinea[0];
                apellido =tokensLinea[1];
                id = Integer.parseInt(tokensLinea[2]);
                
                empleado = new Empleado(nombre,apellido,id);
                empleados.add(empleado);
                contador++;
                linea=br.readLine();
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{ 
                if( null != fr ) 
                    fr.close(); 
            }catch (Exception e2){
                e2.printStackTrace();}
        } 
        return empleados;
 }
    
    public static int getContador(){
        return contador;
    }
 
    public static void clearContador(){
        contador=0;
    } 
}