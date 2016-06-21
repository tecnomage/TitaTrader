
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- header -->
<head>
<%@include file="/WEB-INF/views/templates/header.jsp"%>
</head>

<body>
<div class="container" />

<style>
body {
	padding-top: 60px;
}

@media ( max-width : 980px) {
	body {
		padding-top: 0;
	}
}
</style>

<div class="starter-template">
	<h1 style="padding-down: 5px;">Seu Home Trader Topado</h1>
	<p class="lead">
		<br>Chora violino, invista em açoes agora, e chore depois!!! <br>
		<img src="${contextPath}assets/img/TitaTrader.jpg" />
	</p>
</div>
</div>
<!-- /.container -->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>
</body>