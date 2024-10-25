<%--
  Created by IntelliJ IDEA.
  User: Jair
  Date: 24/10/2024
  Time: 06:19 p. m.
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
<%@ page import="datos.EscribeArchivo, negocios.Empleado" %>
<%
    // Obtención de los parámetros de la petición
    String nombres = request.getParameter("nombre");
    String apellidos = request.getParameter("apellido");
    String idEmpleado = request.getParameter("id");

    Empleado nuevoEmpleado = new Empleado(nombres, apellidos,
            Integer.parseInt(idEmpleado));
    ServletContext sc = this.getServletContext();
    String path = sc.getRealPath("/WEB-INF/registros.txt");

    if(path==null)
        path=sc.getRealPath("/");

    path = path.replace("\\", "\\\\");
    System.out.println("paginaRegistro.jsp: "+path);
    // Guardar en archivo
    EscribeArchivo.add(nuevoEmpleado, path);
%>
<h2>Tu registro se hizo con éxito</h2>

<form action="index.jsp" method="post">
    <input type="submit" value="Nuevo Registro">
</form>
</body>
</html>

