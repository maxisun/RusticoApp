<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Main</title>
</head>
<body>
	<script type='text/javascript'>
			var url = "${pageContext.request.contextPath}/empleado/main"
		 	var path = window.location.pathname;		
			if(path != url){
				location.href = "${pageContext.request.contextPath}/empleado/main?id=${sucursal.idSucursal}"
			}
    </script>
	<table id="table" border=1>
		<tr>
			<th>Nombre</th>
			<th>Ubicaci&oacute;n</th>
			<th>Horario Entrada</th>
			<th>Horario Salida</th>
			<th>Numero de Mesas</th>
			<th>Gerente Encargado</th>
		</tr>
			<tr>
			<td>${sucursal.nombreSucursal}</td>
			<td>${sucursal.ubicacionSucursal}</td>
			<td>${sucursal.horarioEntradaDelegate}</td>
			<td>${sucursal.horarioSalidaDelegate}</td>
			<td>${sucursal.numeroMesas}</td>
			<td>${sucursal.nombreGerente}</td>
		</tr>
	</table>
	<br>
	<button onclick="location.href='${pageContext.request.contextPath}/empleado/nuevo?id=${sucursal.idSucursal}'" class="btn btn-default">Registrar Empleado</button>
	<br>
		<table id="table" border=1>
		<tr>
			<th>Nombre</th>
			<th>Edad</th>
			<th>Genero</th>
			<th>Estado</th>
		</tr>
		<c:forEach items="${sucursal.empleados}" var="empleados" varStatus="status">
		<tr>
			<td>${empleados.nombreEmpleado}</td>
			<td>${empleados.edadEmpleado}</td>
			<td>${empleados.generoEmpleadoDelegate}</td>
			<td>${empleados.estadoEmpleadoDelegate}</td>
			<td>
				<form name="editarSucursal" action="${pageContext.request.contextPath}/empleado/ver" method="post">
            		<input type="hidden" name="empId2" value=${empleados.idEmpleado}>
            		<input type="hidden" name="sucId2" value=${empleados.sucursal.idSucursal}>
            		<input type="Submit" value="Editar">
				</form>
			</td>
			<td>
				<form action="${pageContext.request.contextPath}/empleado/eliminar" method="post"> 
            		<input type="hidden" name="empId" value=${empleados.idEmpleado}>
            		<input type="hidden" name="sucId" value=${empleados.sucursal.idSucursal}>
            		<input type="submit" value="Eliminar">
				</form>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>