<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;
              charset=UTF-8">
  <title>Index JSP</title>
</head>
<body>
<h1> SOLUCIÓN UNA ECUACIÓN DE 2° GRADO</h1>

<table cellspacing="3" cellpadding="3" border="1">
  <tr>
    <td>Proporcionar los coeficientes de la ec. de segundo grado de la forma: </td>
  </tr>
  <tr>
    <td>
      <img src="assets/formaEcuacion.PNG" >
    </td>
  </tr>
  <tr>
    <td>La solución se obtiene  con la fórmula: </td>
  </tr>
  <tr>
    <td>
      <img src="assets/formulaEcuacion.PNG" width="200px" heigth="200px" >
    </td>
  </tr>
</table>

<form action="paginaRegistro.jsp" method="post">
  <table cellspacing="3" cellpadding="3" border="1" >
    <tr>
      <td align="right"> a: </td>
      <td><input type="text" name="coeficienteA"></td>
    </tr>
    <tr>
      <td align="right"> b: </td>
      <td> <input type="text" name="coeficienteB"> </td>
    </tr>
    <tr>
      <td align="right"> c: </td>
      <td><input type="text" name="coeficienteC"></td>
    </tr>
    <tr>
      <td align="right">
        <input type="reset" value="Borrar">
      </td>
      <td>
        <input type="submit" value="Resolver">
      </td>
    </tr>
  </table>
</form>
</body>
</html>