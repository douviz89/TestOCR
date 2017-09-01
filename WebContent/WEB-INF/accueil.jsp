<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Accueil</title>
</head>
<body>
	<p>
		<%@ include file="menu.jsp"%>
	</p>
	<p>Bonjour ${ sessionScope.login }</p>
	<p>Vous êtes à l'accueil du site.</p>
</body>
</html>