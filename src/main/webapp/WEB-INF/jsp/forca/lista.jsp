<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>White/Dark side</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<c:if test="${not empty mensagem}">
			
			<div class="alert alert-danger">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">x</a>
				<strong>Feito!</strong> ${mensagem}
			</div>
		</c:if>
		<h3>
			<a href="/forca">Incluir novo personagem</a>
		</h3>
		<c:if test="${not empty personagens}">
			<h2>Lista de personagens: ${personagens.size()}</h2>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>Idade</th>
						<th>Planeta</th>
						<th>Categoria</th>
						<th>Lado</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="personagens" items="${personagens}">
						<tr>
							<td>${personagens.id}</td>
							<td>${personagens.nome}</td>
							<td>${personagens.idade}</td>
							<td>${personagens.planeta}</td>
							<td>${personagens.categoria}</td>
							<td>${personagens.lightSide}</td>
							<td><a href="/forca/${personagens.id}/excluir">excluir</a></td>
							<td><a href="/forca/${personagens.id}/consultar">detalhar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<c:if test="${empty personagens}">
			<h2>Não existem personagens cadastrados</h2>
		</c:if>

	</div>

</body>
</html>