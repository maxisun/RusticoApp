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
			var url = "${pageContext.request.contextPath}/sucursal/main"
		 	var path = window.location.pathname;		
			if(path != url){
				location.href = "${pageContext.request.contextPath}/sucursal/main"
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
		<c:forEach items="${sucursales}" var="sucursales" varStatus="status">
			<tr>
				<td>${sucursales.nombreSucursal}</td>
				<td>${sucursales.ubicacionSucursal}</td>
				<td>${sucursales.horarioEntradaDelegate}</td>
				<td>${sucursales.horarioSalidaDelegate}</td>
				<td>${sucursales.numeroMesas}</td>
				<td>${sucursales.nombreGerente}</td>
				<td>
				<form name="verPerfil" action="${pageContext.request.contextPath}/sucursal/perfil" method="post">
            		<input type="hidden" name="id" value=${sucursales.idSucursal}>
            		<input type="Submit" value="Ver Perfil">
				</form>
				</td>
				<td>
				<form name="editarSucursal" action="${pageContext.request.contextPath}/sucursal/editar" method="post">
            		<input type="hidden" name="ids" value=${sucursales.idSucursal}>
            		<input type="Submit" value="Editar">
				</form>
				</td>
				<td>
				<form action="${pageContext.request.contextPath}/sucursal/eliminar" method="post"> 
            		<input type="hidden" name="valorId" value=${sucursales.idSucursal}>
            		<input type="submit" class="delete_button" value="Eliminar">
				</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>