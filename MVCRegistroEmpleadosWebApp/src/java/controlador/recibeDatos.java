package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import negocios.*;

/**
 *
 * @author Jair SM Orozco
 */

@WebServlet(name = "recibeDatos", urlPatterns = {"/recibeDatos"})
public class recibeDatos extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
 		throws ServletException, IOException {
 		response.setContentType("text/html;charset=UTF-8");
 		PrintWriter out = response.getWriter();
 		try {
 			String nombre= request.getParameter("nombre");
 			String apellido= request.getParameter("apellido");
 			int empleadoId = Integer.parseInt(request.getParameter("id"));
 
 			Empleado empleado = new Empleado(nombre,apellido,empleadoId);
                        ServletContext sc = this.getServletContext();
            		String path = sc.getRealPath("/WEB-INF/registros.txt");

          	       if(path==null)
                		path=sc.getRealPath("/");

            		path = path.replace("\\", "\\\\");
            		//System.out.println("paginaRegistro.jsp: "+path);
            		// Guardar en archivo
            		EscribeArchivo.add(empleado, path);

 			request.setAttribute("atribEmpleado", empleado);
 			request.getRequestDispatcher("/muestraDatos.jsp").forward(request, response);
 		    } finally { 
 			out.close(); }
 	}
 	
@Override
 	protected void doPost(HttpServletRequest request, HttpServletResponse response)
 		throws ServletException, IOException {
 			processRequest(request, response);
 		}
}

