<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- a tag s é usada para nao quebrar o form durante o deply -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/resourcers/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min">

<style type="text/css">
body {
	padding: 60px;
}
</style>

<!--<script src="resources/js/bootstrap.min.js"></script>-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Livros da casa do Código</title>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Casa do Código</a>
				<ul>
			<li><a href="${s:mvcUrl('PC#listar').build() }">Listagem de	Produtos</a></li>
			<li> <a href="${s:mvcUrl('PC#form').build() }">Cadastro de Produtos</a></li>
			</ul>
		</div>
	</div>
	</nav>



	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST"
		commandName="produto" enctype="multipart/form-data">
		<div class="form-group">
			<label>Título</label>
			<form:errors path="titulo" />
			<form:input type="text" path="titulo" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label>Descrição</label>
			<form:errors path="descricao" />
			<form:textarea rows="10" cols="20" path="descricao"
				cssClass="form-control" />

		</div>

		<div class="form-group">
			<label>Paginas</label>
			<form:input type="text" path="paginas" cssClass="form-control" />
			<form:errors path="paginas" />
		</div>

		<div class="form-group">
			<label>Data de lançamento</label>
			<form:input path="dataLancamento" cssClass="form-control" />
			<form:errors path="dataLancamento" />
		</div>

		<!-- esse tipos vem de produto controller -->
		<!-- o binding é feito pelo modelAndView -->
		<!-- o foreach tem essa Varstatus que permite manter um índice -->
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label>
				<!--aqui é feito o BINDING com a classe produto  -->
				<!--  que tem a List<preco> preços -->
				<input type="text" name="precos[${status.index}].valor">
				<!--  valor do preço -->
				<!--seta o preço com base no private TipoPreco tipo; no índice certo -->
				<input type="hidden" name="precos[${status.index}].tipoPreco"
					value="${tipoPreco}">
				<!-- tipo do preço; Ebook,impresso,combo -->
		</c:forEach>

		<div>
			<label>Súmario</label> <input type="file" name="sumario"
				class="form-control" />

		</div>

		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form:form>
	</div>
</body>
</html>