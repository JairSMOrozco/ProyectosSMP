<%-- 
    Document   : muestraDatos
    Created on : 30 nov. 2024, 08:46:20
    Author     : Jair SM Orozco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Muestra Datos: muestraDatos.jsp</title>
    </head>
    <body>
        <%@ page import="negocios.Empleado" %>
        <%
            Empleado empleado = (Empleado)request.getAttribute("atribEmpleado"); 
        %>
 
        <h3> MuestraDatos.jsp</h3>
 
        <p> Se guardaron los siguientes datos: </p>
 
        <table cellspacing="3" cellpadding="3" border="1" >
            <tr>
                <td align="right"> Nombre: </td>
                <td> <%= empleado.getNombre() %> </td> 
            </tr> 
            <tr>
                <td align="right"> Apellidos: </td> 
                <td> <%= empleado.getApellidos() %> </td> 
            </tr>
            <tr>
                <td align="right"> ID Empleado: </td> 
                <td> <%= empleado.getId() %> </td> 
            </tr> 
        </table>
 
            <form action="index.jsp" method="post">
                <input type="submit" value="Regresar">
            </form>
    </body>
</html>
