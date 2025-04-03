<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Gestión de Usuarios</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.mi
n.css">
</head>
<body>
<div class="container mt-5">
<div class="jumbotron">
<h1 class="display-4">Sistema de Gestión de Usuarios</h1>
<p class="lead">Este sistema permite administrar usuarios
mediante operaciones CRUD.</p>
<hr class="my-4">
<p>Acceda al módulo de usuarios para comenzar.</p><a class="btn btn-primary btn-lg"
href="${pageContext.request.contextPath}/usuario?accion=listar"
role="button">
Gestionar Usuarios
</a>
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
