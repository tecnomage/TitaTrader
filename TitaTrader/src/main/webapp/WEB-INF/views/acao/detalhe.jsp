<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
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
		<h2>Edi��o da a��o</h2>

                                          
		<form:form  action="/home" method="POST"
			commandName="acao" class="form-horizontal">
			
			<input type="hidden" name="id" value="${acao.id}" />

			<div class="form-group">
				<label class="control-label col-sm-2" for="nome">Nome:</label>

				<div class="col-sm-5">
					<input type="text" name="nome" class="form-control"
						cssClass="form-control"  />
					<form:errors path="nome" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="observacao">Observa��es:</label>
				<div class="col-sm-5">
					<input type="text" name="observacao" class="form-control"
						 />
				<form:errors path="observacao" />		
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Pre�o de
					Compra:</label>
					<div class="col-sm-5">
					<input type="number" class="form-control" name="preco"
						 />
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
					<button type="submit" class="btn btn-danger btn-md">Atualizar</button>
				</div>
			</div>
		</form:form>
	</div>
	<div class="checkbox">
		<label> <input type="checkbox" value="ativa"> A��o
			ativa
		</label>
	</div>
	<div class="checkbox disabled">
		<label> <input type="checkbox" value="" disabled>
			Option two is disabled
		</label>
	</div>
</body>

<!-- footer -->
<%@include file="/WEB-INF/views/templates/footer.jsp"%>
</html>
