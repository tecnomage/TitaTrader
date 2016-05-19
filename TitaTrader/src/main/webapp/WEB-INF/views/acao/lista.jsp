<!-- header -->
            <%@include file="/WEB-INF/views/templates/header.jsp"%>
           
<body>
	<nav class="navbar navbar-inverse navbar-link navbar-fixed-top">
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
			<ul class="navbar-brand">
			<li><a href="${s:mvcUrl('AC#listar').build()}">Listagem de
					Produtos</a></li>
			<li><a href="${s:mvcUrl('AC#form').build()}">Cadastro de
					Produtos</a></li>
		</ul>	
		<!--<ul class="nav navbar-nav navbar-right"   > 
			<li> <a href="#">
                <security:authentication  property="principal.username"  />
                </a></li>
		
		</ul>-->
		</div>
		
	</div>
	</nav>

	<div>${sucesso}</div>
	<div class="container">
		<table class="table table-striped table-hover">
			<tr>
				<th>Título</th>
				<th>Descriçao</th>
				<th>páginas</th>
				<th>Detalhe</th>
			</tr>
			<!-- foreach para imprimir a listagem de produtos -->
			<c:forEach items="${produtos}" var="produto">
				<tr>
					<td>${produto.titulo}</td>
					<td>${produto.descricao}</td>
					<td>${produto.paginas}</td>
					<td><a
						href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build()}">${produto.titulo}</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>