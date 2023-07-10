<%@ page import="models.Libro" %><%--
  Created by IntelliJ IDEA.
  User: Dicsys
  Date: 09/07/2023
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <%
        java.util.List<Libro> listaLibros = (java.util.List) request.getSession().getAttribute("listaLibros");
        if (listaLibros == null) {
    %>
    <h1>No hay libros cargados aun, en la base de datos</h1>
    <br>
    <%}%>
    <a href="index.jsp">Volver a página principal</a>
</body>
</html>
