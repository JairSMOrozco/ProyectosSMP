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
  <title>Formulario WebApp</title>
</head>
<body>
  <main>
    <h1>Solicitud</h1>
    <p>Después de introducir tus datos oprime el botón "enviar"</p>

    <form action="paginaDestino.jsp" method="post" accept-charset="UTF-8">
      <table cellspacing="3" cellpadding="3" border="1">
        <tr>
          <td>
            <label for="nombre">
              <span>Nombre: </span>
            </label>
          </td>
          <td>
            <input type="text" id="nombre" name="nombre">
          </td>
        </tr>
        <tr>
          <td>
            <label for="apellido">
              <span>Apellido: </span>
            </label>

          </td>
          <td>
            <input type="text" id="apellido" name="apellido">
          </td>
        </tr>
        <tr>
          <td>
            <label for="correo">
              <span>Correo: </span>
            </label>
          </td>
          <td>
            <input type="email" id="correo" name="correo">
          </td>
        </tr>
      </table>

      <section>
        <span>Eres: </span>
        <label for="hombre">
          <input id="hombre" type="radio" name="genero" value="masculino"> Hombre
        </label>
        <label for="mujer">
          <input id="mujer" type="radio" name="genero" value="femenino"> Mujer
        </label>
      </section>

      <section>
        <p>Selecciona lo que sabes:</p>
        <label for="java">
          <input id="java" type="checkbox" name="lenguajes" value="Java"> Java
        </label>
        <label for="c/c++">
          <input id="c/c++" type="checkbox" name="lenguajes" value="C/C++"> C/C++
        </label>
        <label for="basic">
          <input id="basic" type="checkbox" name="lenguajes" value="Basic"> Basic
        </label>
        <label for="html">
          <input id="html" type="checkbox" name="lenguajes" value="HTML"> HTML
        </label>
      </section>

      <section>
        <div>
          <p>Selecciona los idiomas que comprendes</p>
          <select id="idiomas" name="idiomas" multiple size="4">
            <option value="Spanish" selected>Español</option>
            <option value="English">Inglés</option>
            <option value="French">Francés</option>
            <option value="German">Alemán</option>
          </select>
        </div>
        <div>
          <label for="comentarios">Comentarios adicionales</label>
          <br>
          <textarea id="comentarios" name="comentarios" rows="5"></textarea>
        </div>
      </section>

      <input type="reset" value="Borrar">
      <input type="submit">
    </form>
  </main>
</body>
</html>