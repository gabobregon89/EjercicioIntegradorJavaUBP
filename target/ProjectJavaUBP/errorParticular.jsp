<%@ page import="models.Libro" %><%--
  Created by IntelliJ IDEA.
  User: Dicsys
  Date: 09/07/2023
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <%
        Libro libro = (Libro) request.getSession().getAttribute("libro");
        if (libro.getISBN() == null) {
    %>
    <h1>Error al intentar buscar un libro, sin ingresar un nº de ISBN</h1>
    <br>
    <%}%>
    <a href="index.jsp">Volver a página principal</a>
</body>
</html>
