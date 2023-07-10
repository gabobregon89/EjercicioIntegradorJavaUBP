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
    <title>Búsqueda por ISBN</title>
</head>
<body>
    <h1>Resultado de búsqueda por ISBN</h1>
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
    <%
        if (libro.getAlta()) {
    %>
    <br>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="eliminar">
        <input type="hidden" name="isbnEliminar" value=<%=libro.getISBN()%>>
        <button type="submit">Eliminar</button>
    </form>
    <br>
    <%
        } else {
    %>
    <br>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="activar">
        <input type="hidden" name="isbnActivar" value=<%=libro.getISBN()%>>
        <button type="submit">Activar</button>
    </form>
    <br>
    <%}%>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="editar">
        <input type="hidden" name="isbnActualizar" value=<%=libro.getISBN()%>>
        <button type="submit">Actualizar</button>
    </form>
    <br>
    <a href="index.jsp">Volver a página principal</a>
</body>
</html>
