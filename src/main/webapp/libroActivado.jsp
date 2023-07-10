<%@ page import="models.Libro" %><%--
  Created by IntelliJ IDEA.
  User: Dicsys
  Date: 07/07/2023
  Time: 0:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Libro activado</title>
</head>
<body>
    <h1>Este libro se ha activado correctamente</h1>
    <%
        Libro libro = (Libro) request.getSession().getAttribute("libro");
    %>
    <table border="2">
        <tr>
            <th style="width: 100px">ISBN</th>
            <th style="width: 100px">Titulo</th>
            <th style="width: 100px">Año de creación</th>
            <th style="width: 100px">Ejemplares</th>
            <th style="width: 100px">Alta</th>
        </tr>
        <tr>
            <td align="center"><%=libro.getISBN()%></td>
            <td align="center"><%=libro.getTitulo()%></td>
            <td align="center"><%=libro.getAnio()%></td>
            <td align="center"><%=libro.getEjemplares()%></td>
            <td align="center"><%=libro.getAlta()%></td>
        </tr>
    </table>
    <br>
    <br>
    <a href="index.jsp">Volver a página principal</a>
</body>
</html>
