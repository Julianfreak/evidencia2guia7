<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${empty usuario ? 'Nuevo Usuario' : 'Editar Usuario'}</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.mi
n.css">
</head>
<body>
<div class="container mt-4">
<h1>${empty usuario ? 'Nuevo Usuario' : 'Editar Usuario'}</h1>
<form method="post"
action="${pageContext.request.contextPath}/usuario">
<input type="hidden" name="accion" value="${empty usuario ?
'insertar' : 'actualizar'}">
<c:if test="${not empty usuario}">
<input type="hidden" name="id" value="${usuario.id}">
</c:if>
<div class="form-group">
<label for="nombre">Nombre:</label>
<input type="text" class="form-control" id="nombre"
name="nombre" value="${usuario.nombre}" required>
</div>
<div class="form-group">
<label for="apellido">Apellido:</label>
<input type="text" class="form-control" id="apellido"
name="apellido" value="${usuario.apellido}" required>
</div>
<div class="form-group">
<label for="email">Email:</label>
<input type="email" class="form-control" id="email"
name="email" value="${usuario.email}" required>
</div>
<div class="form-group">
<label for="password">Contraseña:</label>
<input type="password" class="form-control" id="password"
name="password" ${empty usuario ? 'required' : ''} placeholder="${not
empty usuario ? 'Dejar en blanco para mantener la actual' : ''}"></div>
<button type="submit" class="btn btn-
primary">Guardar</button>
<a
href="${pageContext.request.contextPath}/usuario?accion=listar"
class="btn btn-secondary">Cancelar</a>
</form>
</div>
<script src="https://code.jquery.com/jquery-
3.5.1.slim.min.js"></script>
<script
src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js
"></script>
<script
src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.
js"></script>
</body>
</html>
