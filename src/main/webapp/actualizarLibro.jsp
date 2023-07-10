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
    <title>Actualizado libro</title>
</head>
<body>
    <h1>Actualizando datos del libro</h1>
    <%
        Libro libro = (Libro) request.getSession().getAttribute("libro");
    %>

    <br>
    <form action="SvLibro" method="POST">
        <input type="hidden" name="action" value="actualizar">
        <input type="hidden" name="isbnActualizar" value=<%=libro.getISBN()%>>

        <table border="2">
            <tr>
                <th style="width: 100px">ISBN</th>
                <th style="width: 100px">Titulo</th>
                <th style="width: 100px">Año de creación</th>
                <th style="width: 100px">Ejemplares</th>
            </tr>
            <tr>
                <td align="center"><input type="text" name="isbn" value=<%=libro.getISBN()%>></td>
                <td align="center"><input type="text" name="titulo" value=<%=libro.getTitulo()%>></td>
                <td align="center"><input type="text" name="anio" value=<%=libro.getAnio()%>></td>
                <td align="center"><input type="text" name="ejemplares" value=<%=libro.getEjemplares()%>></td>
            </tr>
        </table>
        <br>
        <button type="submit">Guardar</button>
    </form>

    <br>
    <a href="index.jsp">Volver a página principal</a>
</body>
</html>
