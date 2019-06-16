<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
<title>Editar Empleado</title>
</head>
<body>
<div class="simple-login-container">
	<h2>Editar Empleado</h2>
	<form:form id="holi" action="${pageContext.request.contextPath}/empleado/editar" method="POST" modelAttribute="editarEmpDTO">
		<form:input type="hidden" name="id" path="idEmpleado"/>
		<input type="hidden" name="empId" value="${IdPadre}"/>
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "nombreEmpleado">Nombre: </form:label>
					<form:input type="text" class="form-control" name="nombre" path="nombreEmpleado"/>
					<form:errors path="nombreEmpleado"  cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "edadEmpleado">Edad: </form:label>
					<form:input type="number" class="form-control" name="ubicacion" path="edadEmpleado"/>
					<form:errors path="edadEmpleado" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "generoEmpleado">Masculino: </form:label>
					<form:radiobutton path="generoEmpleado" name="gender" value="m"/>
					<form:label path = "generoEmpleado">Femenino: </form:label>
					<form:radiobutton path="generoEmpleado" name="gender" value="f"/>
					<form:errors path="generoEmpleado" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "estadoEmpleado">Activo: </form:label>
					<form:radiobutton path="estadoEmpleado" name="estado" value="Activo"/>
					<form:label path = "estadoEmpleado">Inactivo: </form:label>
					<form:radiobutton path="estadoEmpleado" name="estado" value="Inactivo"/>
					<form:errors path="estadoEmpleado" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 form-group">
				<input id="enviar" type = "submit" value="Guardar Cambios" class="btn btn-block btn-login">
					<!--button id="enviar" onclick="acceptTransaction()" class="btn btn-block btn-login">Guardar Cambios</button> -->
				</div>
			</div>
		</form:form>
</div>
</body>
</html>