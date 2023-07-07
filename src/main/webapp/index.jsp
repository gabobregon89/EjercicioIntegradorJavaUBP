<%--
  Created by IntelliJ IDEA.
  User: Dicsys
  Date: 05/07/2023
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sistema General de Libros</title>
</head>
<body>
    <h1>Administración de Libreria</h1>
    <br>
    <h2>Cargar un libro</h2>
    <form action="SvLibro" method="POST">
        <input type="hidden" name="action" value="crear">
        <label>ISBN: <input type="text" name="isbn"></label>
        <label>Titulo: <input type="text" name="titulo"></label>
        <label>Año: <input type="text" name="anio"></label>
        <label>Ejemplares: <input type="text" name="ejemplares"></label>
        <button type="submit">Enviar</button>
    </form>
    <br>
    <br>
    <h2>Buscar un libro</h2>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="todos">
        <button type="submit">Mostrar todos</button>
    </form>
</body>
</html>
