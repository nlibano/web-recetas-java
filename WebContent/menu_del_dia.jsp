<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Marmitako Rico Rico</title>
</head>
<body>
<a href="index.jsp"> Volver Inicio</a>
<%
	Receta marmitako = new Receta("marmitako");
%>
<h1>Menu del día</h1>
<h2>1 Marmitako</h2>
<img alt="" src="<%=marmitako.getImagen()%>">
<h2>2 Solomillo</h2>

<h3>postre goxua</h3>

<p>pan y vino incluidos. 10€</p>

</body>
</html>