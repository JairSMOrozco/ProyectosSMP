<%-- 
    Document   : empleadosRegistrados
    Created on : 30 nov. 2024, 08:45:36
    Author     : Jair SM Orozco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados Registrados: empleadosRegistrados.jsp</title>
    </head>
    <body>
        <%@ page import="negocios.Empleado, java.util.ArrayList" %> 
        <h2>Los empleados que están registrados son: </h2> 
        <%
            ArrayList<Empleado> empleados = null;
            empleados =
                    (ArrayList<Empleado>)request.getAttribute("Empleados");
            String numReg= (String) request.getAttribute("contador"); 
            int numRegistros = Integer.parseInt(numReg);
        %> 

        <table border="1"> 
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>ID Empleado</th>
            </tr>
            <% 
                for (Empleado empleado: empleados)
                {
            %>
            <tr valign="top">
                <td><%=empleado.getNombre() %></td>
                <td><%=empleado.getApellidos() %></td>
                <td><%=empleado.getId() %></td>
 
            </tr>
            <% } %> 
            
        </table>
            <p> Numero de registros : <%= empleados.size() %></p>
            <% empleados.clear();%> 
            <br>
            <form action="index.jsp" method="post">
                <input type="submit" value="Regresar">
            </form> 
    </body>
</html>
