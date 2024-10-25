<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;
              charset=UTF-8">
  <title>index JSP</title>
</head>
<body>
<h1> Página de inicio: index.jsp</h1>
<p> Hola, por favor introduce la siguiente información: </p>
<form action="paginaRegistro.jsp" method="post">
  <table cellspacing="3" cellpadding="3" border="1" >
    <tr>
      <td align="right"> Nombre: </td>
      <td><input type="text" name="nombre"></td>
    </tr>
    <tr>
      <td align="right"> Apellido: </td>
      <td> <input type="text" name="apellido"> </td>
    </tr>
    <tr>
      <td align="right">ID Empleado: </td>
      <td><input type="text" name="id"></td>
    </tr>
  </table>
  <br>
  <br>
  <form action="paginaRegistro.jsp" method="post">
    <input type="submit" value="Guardar Registro">
  </form>
</form>
</body>
</html>
