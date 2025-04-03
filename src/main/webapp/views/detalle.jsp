<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle de Usuario</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.mi
n.css">
</head>
<body>
<div class="container mt-4">
<h1>Detalle de Usuario</h1>
<div class="card">
<div class="card-header">
Usuario ID: ${usuario.id}
</div>
<div class="card-body">
<h5 class="card-title">${usuario.nombre}
${usuario.apellido}</h5>
<p class="card-text"><strong>Email:</strong>
${usuario.email}</p></div>
<div class="card-footer">
<a
href="${pageContext.request.contextPath}/usuario?accion=editar&id=${usuar
io.id}" class="btn btn-warning">Editar</a>
<a
href="${pageContext.request.contextPath}/usuario?accion=listar"
class="btn btn-secondary">Volver a la lista</a>
</div>
</div>
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
