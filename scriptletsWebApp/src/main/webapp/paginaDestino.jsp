<%--
  Created by IntelliJ IDEA.
  User: Jair SM Orozco
  Date: 02/10/2024
--%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página destino</title>
  </head>
  <body>
    <%
      String nombre = request.getParameter("nombre");
      String apellido = request.getParameter("apellido");
      String correo = request.getParameter("correo");
      String genero = request.getParameter("genero");
      String[] lenguajes = request.getParameterValues("lenguajes");
      String[] idiomas = request.getParameterValues("idiomas");
      String comentarios = request.getParameter("comentarios");
    %>

    <h1>Solicitud recibida</h1>
    <h2>Tus datos son: </h2>
    <table cellspacing="3" cellpadding="3" border="1">
      <tr>
        <td>
          <span>Te llamas: </span>
        </td>
        <td>
          <%=nombre%>
        </td>
      </tr>
      <tr>
        <td>
          <span>Apellido: </span>
        </td>
        <td>
          <%=apellido%>
        </td>
      </tr>
      <tr>
        <td>
            <span>Tu correo es: </span>
        </td>
        <td>
          <%=correo%>
        </td>
      </tr>
      <tr>
        <td>
          <span>Eres: </span>
        </td>
        <td>
          <%=genero%>
        </td>
      </tr>
    </table>

    <section >
      <p>Manejas los siguientes lenguajes de programación: </p>
      <p>
        <%
          for(String lenguaje: lenguajes){
        %>
        <%=lenguaje%>
        <%
          }
        %>
      </p>
    </section>

    <section >
      <p>Los idiomas que comprendes son: </p>
      <p>
        <%
          for(int i = 0; i < idiomas.length; i++){
        %>
        <%=idiomas[i]%>
        <%
          }
        %>
      </p>
    </section>

    <section >
      <p>Comentarios adicionales: </p>
      <p>
        <%=comentarios%>
      </p>
    </section>

    <form action="index.jsp" method="post">
      <input type="submit" value="Regresar">
    </form>

  </body>
</html>
