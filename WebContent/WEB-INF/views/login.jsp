<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
<title>Login</title>
</head>
<body >
	
	<div class="simple-login-container">
		<h2>Login</h2>
			<form id="holi" >
	
			
			<div class="row">
				<div class="col-md-12 form-group">
					<input id="1" type="email" placeholder="Username" class="form-control" name="username" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<input id="2" type="password" placeholder="Password" class="form-control" name="password" />
					
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 form-group">
					<input type="submit" class="btn btn-block btn-login" value="Iniciar Sesi&oacute;n">
				</div>
			</div>
			</form>
	</div>
	<script type='text/javascript'>
		$(document).ready(function(){
		  $('#1').val('');
		  $('#2').val('');
		});
    </script>
    
   	<script type='text/javascript'>
	   	$("#holi").on('submit', function (e) {
			e.preventDefault();
			$.ajax(
				{
					url: "${pageContext.request.contextPath}/login",
					data:  $("#holi").serialize(),
					type: 'POST',
					success: function (result) {

						location.href = "${pageContext.request.contextPath}/sucursal/main"
						//$( location ).attr("href", "${pageContext.request.contextPath}/sucursal/main");
					},
					error: function (xhr) {
						swal("Usuario o contraseña inválido, por favor intente nuevamente", {
				 	    	icon: "error",
		 		   		});
					}
				});
		});
    </script>
    
<!--


	<table id="table" border=1>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<!-- <th>Contrase&ntilde;a</th> 
			<th>Horario Entrada</th>
		</tr>
		<c:forEach items="${sucursal}" var="sucursal" varStatus="status">
			<tr>
				<td>${sucursal.idSucursal}</td>
				<td>${sucursal.nombreSucursal}</td>
				
			<c:forEach items="${sucursal.empleados}" var="empleado" varStatus="status">
				<td>${empleado.nombreEmpleado}</td>
			</c:forEach>
			</tr>
		</c:forEach>
	</table>-->
	
	
			<!--  	<form:form id="holi" action="${pageContext.request.contextPath}/login" method="POST" modelAttribute="loginDTO">
	
			<!--<form:label path = "username">Nombre: </form:label>
			<div class="row">
				<div class="col-md-12 form-group">
					<form:input id="1" type="email" placeholder="Username" class="form-control" name="username" path="username"/>
					<form:errors path="username"  cssStyle="color:red;"></form:errors>
				</div>
			</div>
			<!--<label>Contrase&ntilde;a: </label>
			<div class="row">
				<div class="col-md-12 form-group">
					<form:input id="2" type="password" placeholder="Password" class="form-control" name="password" path="password"/>
					<form:errors path="password" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 form-group">
					<input type="submit" class="btn btn-block btn-login" value="Iniciar Sesi&oacute;n">
				</div>
			</div>
			</form:form>
			-->
</body>
</html>