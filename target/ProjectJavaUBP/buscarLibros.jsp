<%@ page import="models.Libro" %><%--
  Created by IntelliJ IDEA.
  User: Dicsys
  Date: 05/07/2023
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buscando libros</title>
</head>
<body>
    <h1>Buscador de libros</h1>
    <br>
    <h2>Mostrar todos</h2>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="todos">
        <button type="submit">Buscar</button>
    </form>
    <h2>Lista de libros</h2>
    <%
        java.util.List<Libro> listaLibros = (java.util.List) request.getSession().getAttribute("listaLibros");

        for (Libro libro : listaLibros) {

    %>
    <h3>
        ISBN:
        <%=libro.getISBN()%>
    </h3>
    <h3>
        Titulo:
        <%=libro.getTitulo()%>
    </h3>
    <h3>
        Año de creación:
        <%=libro.getAnio()%>
    </h3>
    <h3>
        Ejemplares:
        <%=libro.getEjemplares()%>
    </h3>
    <%}%>
</body>
</html>
