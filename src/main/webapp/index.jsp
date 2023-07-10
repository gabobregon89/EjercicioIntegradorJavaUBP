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
    <h2>Ver todos los libro</h2>
    <h3>Si quieres ver todos los libros que hay disponibles, ingresa aqui</h3>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="todos">
        <button type="submit">Mostrar todos</button>
    </form>
    <br>
    <br>
    <h2>Buscar un libro por ISBN</h2>
    <h3>Si quieres ver los detalles de un libro en particular, ingresa aqui su ISBN, además podrás eliminarlo, activarlo y editarlo</h3>
    <form action="SvLibro" method="GET">
        <input type="hidden" name="action" value="porISBN">
        <label><input type="text" name="isbn"></label>
        <button type="submit">Buscar por ISBN</button>
    </form>
    <br>
    <br>
</body>
</html>
