<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table id="table" border=1>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<!-- <th>Contrase&ntilde;a</th> --><th>Horario Entrada</th>
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
	</table>
</body>
</html>