<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.evidencia.model.Usuario" %>
<html>
<head>
    <title>Lista de Usuarios</title>
</head>
<body>
    <h2>Lista de Usuarios</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
            <th>Acciones</th>
        </tr>
        <%
            List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
            if (usuarios != null) {
                for (Usuario usuario : usuarios) {
        %>
        <tr>
            <td><%= usuario.getId() %></td>
            <td><%= usuario.getNombre() %></td>
            <td><%= usuario.getApellido() %></td>
            <td><%= usuario.getEmail() %></td>
            <td>
                <a href="UsuarioServlet?action=editar&id=<%= usuario.getId() %>">Editar</a> |
                <a href="UsuarioServlet?action=eliminar&id=<%= usuario.getId() %>" onclick="return confirm('¿Estás seguro?');">Eliminar</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <br>
    <a href="editarUsuario.jsp">Agregar Usuario</a>
</body>
</html>
