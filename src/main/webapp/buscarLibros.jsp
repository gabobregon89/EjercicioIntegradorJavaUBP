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
    <h2>Lista de libros</h2>
    <%
        java.util.List<Libro> listaLibros = (java.util.List) request.getSession().getAttribute("listaLibros");
        for (int i = 0; i < listaLibros.size(); i++) {
    %>
    <table border="2">
        <tr>
            <th style="width: 100px">ISBN</th>
            <th style="width: 100px">Titulo</th>
            <th style="width: 100px">Año de creación</th>
            <th style="width: 100px">Ejemplares</th>
        </tr>
        <tr>
            <td align="center"><%=listaLibros.get(i).getISBN()%></td>
            <td align="center"><%=listaLibros.get(i).getTitulo()%></td>
            <td align="center"><%=listaLibros.get(i).getAnio()%></td>
            <td align="center"><%=listaLibros.get(i).getEjemplares()%></td>
            <td align="center"><%=listaLibros.get(i).getAlta()%></td>
        </tr>
        <br>
    </table>
    <%}%>
    <br>
    <a href="index.jsp">Volver a página principal</a>
</body>
</html>
