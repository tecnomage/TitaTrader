<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<!-- header -->
<%@include file="/WEB-INF/views/templates/header.jsp"%>

<template:admin>
	<jsp:attribute name="extraStyles">
<link rel="stylesheet"
			href="<c:url value='/assets/css/pagination/jqpagination.css'/>" />
</jsp:attribute>
	<jsp:attribute name="extraScripts">
<script src="<c:url value='/assets/js/jquery.jqpagination.js'/>"></script>
</jsp:attribute>
	<jsp:body>
  <div>
    <div class="container min-container">
      <h2 class="basic-title">Listagem de Açoes</h2>
        <div class="well">
          <table
						class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
	                  	<td>id</td>
		                  	<td>nome</td>
		                  	<td>descrição</td>
							<td>Preço de compra</td>
							<td>Preço desejado</td>
							<td>Observações</td>
							
	                  </tr>
                  </thead>
                  <tbody>
                  <!-- '${paginatedList.currentList}' -->
                  
                  <c:forEach items="${acoes}"
								var='acao'>         		
	                  <tr>
						<td><a href="<c:url value='acao'/>/${acao.id}">${acao.id}</a></td>
		                  	<td>${acao.nome}</td>
		                  	<td>${acao.observacao}</td>
		                  	<td>${acao.preco}</td>
		                  	<td>${acao.preco}</td>
	                    <td>
									<a href="<c:url value='/category/remove'/>/${acao.id}">Remove</a>
									</td>
					  
								</tr>
                  </c:forEach>
                  </tbody>
          </table>
		  <template:paginationComponent paginatedList="${paginatedList}"
						page="${param.page}" action="/category" />
          <a href="${s:mvcUrl('AC#form').build()}"> Cadastro de Acoes
 						<class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span> Add New</a>
        </div>
    </div>
  </div>
</jsp:body>
</template:admin>

	<!-- Footer -->
  <%@include file="/WEB-INF/views/templates/footer.jsp"%>