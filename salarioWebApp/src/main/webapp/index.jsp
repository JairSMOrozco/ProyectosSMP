<%--
  Created by IntelliJ IDEA.
  User: Jair SM Orozco
  Date: 07/10/2024
  Time: 08:43 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index.jsp</title>
  </head>
  <body>
    <main>
      <h1>Página de inicio: index.jsp</h1>
      <p> Hola, por favor introduce la siguiente información:</p>
      <form action="paginaDestino.jsp" method="post">
        <table cellspacing="3" cellpadding="3" border="1" >
          <tr>
            <td align="right"> Nombre: </td>
            <td><input type="text" name="nombre"></td>
          </tr>
          <tr>
            <td align="right"> Sueldo por hora: </td>
            <td> <input type="text" name="salarioPorHora"> </td>
          </tr>
          <tr>
            <td align="right"> Horas diarias: </td>
            <td> <input type="text" name="horasTrabajadasDia"> </td>
          </tr>
          <tr>
            <td align="right">Días trabajados:</td>
            <td> <input type="text" name="diasTrabajadosSemana"> </td>
          </tr>
        </table>
        <br>
        <input type="reset" value="Borrar">
        <input type="submit" value="Calcular sueldo semanal">
      </form>
    </main>
  </body>
</html>
