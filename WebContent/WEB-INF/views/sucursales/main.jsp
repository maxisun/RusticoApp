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
    <button onclick="location.href='${pageContext.request.contextPath}/sucursal/nueva'" class="btn btn-default">Registrar Sucursal</button>
	<table id="table" border=1>
		<tr>
			<th>Nombre</th>
		</tr>
		<c:forEach items="${sucursales}" var="sucursales" varStatus="status">
			<tr>
				<td>${sucursales.nombreSucursal}</td>
				<td>
				<form name="verPerfil" action="${pageContext.request.contextPath}/empleado/main" method="post">
            		<input type="hidden" name="id" value=${sucursales.idSucursal}>
            		<input type="Submit" value="Ver Perfil">
				</form>
				</td>
				<td>
				<form name="editarSucursal" action="${pageContext.request.contextPath}/sucursal/ver" method="post">
            		<input type="hidden" name="editId" value=${sucursales.idSucursal}>
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