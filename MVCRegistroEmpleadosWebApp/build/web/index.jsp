<%-- 
    Document   : index
    Created on : 30 nov. 2024, 08:45:55
    Author     : Jair SM Orozco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Index: index.jsp </title>
    </head>
    <body>
        <%@ page import="controlador.recibeDatos" %> 
        <h2>Hola! Proporciona los datos del empleado: </h2>
        <form action="recibeDatos" method="POST">
            <table cellspacing="3" cellpadding="3" border="1" >             
                <tr>
                    <td align="right"> Nombre: </td>
                    <td><input type="text" name="nombre"></td> 
                </tr> 
                <tr>
                    <td align="right"> Apellido </td> 
                    <td> <input type="text" name="apellido"> </td> 
                </tr>
                <tr>
                    <td align="right"> ID Empleado: </td> 
                    <td> <input type="text" name="id"> </td> 
                </tr> 
            </table>
            
            <input type="reset" value="Borrar">
            <input type="submit" value="Registrar">
        </form>
        
         <%@ page import="controlador.muestraRegistros" %> 
        <form action="muestraRegistros" method="POST">
            <input type="submit" value="Ver Registros">
        </form>
    </body>
</html>
