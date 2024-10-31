<%--
  Created by IntelliJ IDEA.
  User: jairorozco
  Date: 31/10/24
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type"
        content="text/html; charset=UTF-8">
  <title>Página de Registro</title>
</head>
<body>
<%@ page import="datos.EscribeArchivo, negocio.CalculoEcuacion" %>
<%
  // Obtención de los parámetros de la petición
  String coeficienteA = request.getParameter("coeficienteA");
  String coeficienteB = request.getParameter("coeficienteB");
  String coeficienteC = request.getParameter("coeficienteC");

  //Creo mi objeto empleado y se inicializa con los valores pasados por el formulario
  Empleado nuevoEmpleado = new Empleado(nombres, apellidos, Integer.parseInt(idEmpleado));

  //Uso de servletContext para sacar la ruta absoluta del archivo de persistencia
  ServletContext sc = this.getServletContext();
  String path = sc.getRealPath("/WEB-INF/registros.txt");

  if(path == null)
    path = sc.getRealPath("/");

  //Haciendo compatible el formato de la ruta sistemas Windows
  path = path.replace("\\", "\\\\");

  System.out.println("paginaRegistro.jsp: " + path);

  // Guardar en archivo
  //Como el método es estático se puedo solo llamar a la clase seguido del método
  //no es necesario crear una instancia de EscribeArchivo
  EscribeArchivo.add(nuevoEmpleado, path);

%>
<h2>Tu registro se hizo con éxito</h2>

<form action="index.jsp" method="post">
  <input type="submit" value="Nuevo Registro">
</form>
</body>
</html>
