package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import negocios.Empleado;
import negocios.LeeEmpleados;
/**
 *
 * @author Jair SM Orozco
 */

@WebServlet(name = "muestraRegistros",
 urlPatterns = {"/muestraRegistros"})
public class muestraRegistros extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            ArrayList <Empleado> empleados = new ArrayList<Empleado>();
            int cont=0;
            String contador;
 
             ServletContext sc = this.getServletContext();
            		String path = sc.getRealPath("/WEB-INF/registros.txt");

          	       if(path==null)
                		path=sc.getRealPath("/");

            		path = path.replace("\\", "\\\\");
            
            empleados = LeeEmpleados.leeEmpleados(path);

            // Resetea la variable estática
            LeeEmpleados.clearContador();
            cont = LeeEmpleados.getContador();
            contador= String.valueOf(cont);
            
            request.setAttribute("Empleados",empleados);
            request.setAttribute("contador", contador);
            request.getRequestDispatcher("/empleadosRegistrados.jsp").forward(request, response);
 
 
        } finally { 
            out.close();
        }        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
