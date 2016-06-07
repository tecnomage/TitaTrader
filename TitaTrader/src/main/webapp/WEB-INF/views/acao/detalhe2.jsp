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

<!-- header -->
<%@include file="/WEB-INF/views/templates/header.jsp"%>
</head>

<body>
	<div class="container">
		<h2>Cadastro de Ações</h2>


		<form:form action="${s:mvcUrl('AC#atualizar').build()}" method="POST"
			commandName="acao" class="form-horizontal">

			<input type="hidden" name="id" value="${acao.id}" />
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="nome">Nome:</label>

				<div class="col-sm-5">
					<input type="text" name="nome" value="${acao.nome}" class="form-control"
						cssClass="form-control"  />
					<form:errors path="nome" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="observacao">Observações:</label>
				<div class="col-sm-5">
					<input type="text" name="observacao" class="form-control"
						value="${acao.observacao}"/>
				<form:errors path="observacao" />		
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Preço de
					Compra:</label>
					<div class="col-sm-5">
					<input type="number" class="form-control" name="preco"
						value="${acao.preco}"/>
						<form:errors path="preco" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label><input type="checkbox"> Remember me</label>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Cadastrar</button>
				</div>
			</div>
		</form:form>
	</div>
	<div class="checkbox">
		<label> <input type="checkbox" value="ativa"> Ação
			ativa
		</label>
	</div>
	<div class="checkbox disabled">
		<label> <input type="checkbox" value="" disabled>
			Option two is disabled
		</label>
	</div>
</body>


<!--<script src="resources/js/bootstrap.min.js"></script>-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- footer -->
<%@include file="/WEB-INF/views/templates/footer.jsp"%>
</html>