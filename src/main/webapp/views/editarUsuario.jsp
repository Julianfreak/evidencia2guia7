<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.evidencia.model.Usuario" %>
<html>
<head>
    <title>Editar Usuario</title>
</head>
<body>
    <h2>Formulario de Usuario</h2>
    <form action="UsuarioServlet" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") != null ? request.getParameter("id") : "" %>">
        <input type="hidden" name="action" value="<%= request.getParameter("id") != null ? "actualizar" : "crear" %>">

        <label>Nombre:</label>
        <input type="text" name="nombre" value="<%= request.getAttribute("usuario") != null ? ((Usuario) request.getAttribute("usuario")).getNombre() : "" %>" required><br>

        <label>Apellido:</label>
        <input type="text" name="apellido" value="<%= request.getAttribute("usuario") != null ? ((Usuario) request.getAttribute("usuario")).getApellido() : "" %>" required><br>

        <label>Email:</label>
        <input type="email" name="email" value="<%= request.getAttribute("usuario") != null ? ((Usuario) request.getAttribute("usuario")).getEmail() : "" %>" required><br>

        <label>Contraseña:</label>
        <input type="password" name="password" required><br>

        <input type="submit" value="Guardar">
    </form>
    <br>
    <a href="UsuarioServlet">Regresar</a>
</body>
</html>
