<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos.css">
    <title>Formulario WebApp</title>
</head>
<body>
    <header>
    </header>
    <main>
        <h1>Solicitud</h1>
        <p>Después de introducir tus datos oprime el botón "enviar"</p>

        <form action="">
            <table class="tabla">
                <tr>
                    <td>
                        <label for="nombre">
                            <span>Nombre: </span>
                        </label>
                    </td>
                    <td>
                        <input type="text" id="nombre">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="apellidos">
                            <span>Apellidos: </span>
                        </label>

                    </td>
                    <td>
                        <input type="text" id="apellidos">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="correo">
                            <span>Correo: </span>
                        </label>
                    </td>
                    <td>
                        <input type="email" id="correo">
                    </td>
                </tr>
            </table>

            <section class="sectionGenero">
                <span>Eres: </span>
                <label for="hombre">
                    <input id="hombre" type="radio" name="genero" value="hombre"> Hombre
                </label>
                <label for="mujer">
                    <input id="mujer" type="radio" name="genero" value="mujer"> Mujer
                </label>
            </section>

            <section class="sectionLenguaje">
                <p>Selecciona lo que sabes:</p>
                <label for="java">
                    <input id="java" type="checkbox" name="lenguajes" value="java"> Java
                </label>
                <label for="c/c++">
                    <input id="c/c++" type="checkbox" name="lenguajes" value="c/c++"> C/C++
                </label>
                <label for="basic">
                    <input id="basic" type="checkbox" name="lenguajes" value="basic"> Basic
                </label>
                <label for="html">
                    <input id="html" type="checkbox" name="lenguajes" value="html"> HTML
                </label>
            </section>

            <section class="idiomasComentarios">
                <div class="sectionIdiomas">
                    <p>Selecciona los idiomas que comprendes</p>
                    <select id="idiomas" name="idiomas" multiple size="4">
                        <option value="español" selected>Español</option>
                        <option value="inglés">Inglés</option>
                        <option value="francés">Francés</option>
                        <option value="alemán">Alemán</option>
                    </select>
                </div>
                <div class="sectionComentarios">
                    <label for="comentarios">Comentarios adicionales</label>
                    <br>
                    <textarea id="comentarios" name="comentarios" rows="5"></textarea>
                </div>
            </section>

            <input class="resetButton" type="reset" value="Borrar">
            <input class="submitButton" type="submit">
        </form>
    </main>
    <footer>
    </footer>
</body>
</html>