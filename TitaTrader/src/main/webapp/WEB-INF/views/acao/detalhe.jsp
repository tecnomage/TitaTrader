<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<!-- header -->
<%@include file="/WEB-INF/views/templates/header.jsp"%>
<body>
	<div class="container">
		<h2>Edi��o da a��o</h2>


		<form:form action="" method="POST"
			commandName="acao" class="form-horizontal">

			<div class="form-group">
				<label class="control-label col-sm-2" for="nome">Nome:</label>

				<div class="col-sm-5">
					<input type="text" name="nome" class="form-control"
						cssClass="form-control" placeholder="{}" />
					<form:errors path="nome" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="observacao">Observa��es:</label>
				<div class="col-sm-5">
					<input type="text" name="observacao" class="form-control"
						placeholder="Observa��es" />
				<form:errors path="observacao" />		
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Pre�o de
					Compra:</label>
					<div class="col-sm-5">
					<input type="number" class="form-control" name="preco"
						placeholder="Informe o pre�o de compra"/>
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
