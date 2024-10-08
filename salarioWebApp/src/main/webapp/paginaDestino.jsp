<%@ page import="com.jairorozco.salariowebapp.Sueldo" %><%--
  Created by IntelliJ IDEA.
  User: Jair SM Orozco
  Date: 07/10/2024
  Time: 08:44 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Página destino JSP</title>
</head>
<body>
    <%
        //Extracción de parámetros
        String nombre = request.getParameter("nombre");
        String salarioPorHora = request.getParameter("salarioPorHora");
        String horasTrabajadasDia = request.getParameter("horasTrabajadasDia");
        String diasTrabajadosSemana = request.getParameter("diasTrabajadosSemana");

        //Variable para guardar resultado
        double salarioSemanal;

        //Creación de instancia
        Sueldo sueldo = new Sueldo(nombre, salarioPorHora, horasTrabajadasDia, diasTrabajadosSemana);

        //Llamada a la función de calculo
        sueldo.salaryCalculator();

        //Guardar resultado
        salarioSemanal = sueldo.getsalarioSemanal();
    %>
    <h1>Página de resultados: páginaDestino.jsp</h1>
    <p> Hola <%= nombre%> </p>
    <table cellspacing="3" cellpadding="3" border="1" >
        <tr>
            <td align="right">Tu sueldo semanal es: </td>
            <td> <%= salarioSemanal%> pesos </td>
        </tr>
    </table>

    <form action="index.jsp" method="post">
        <input type="submit" value="Regresar">
    </form>

</body>
</html>
