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
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp" />
	<c:set var="titulo" value="Cadastro de personagens"/>
	<c:set var="rota" value="/forca/incluir"/>
	<c:set var="metodo" value="post"/>
	<c:set var="botao" value="Cadastrar"/>
	
	<c:if test="${not empty forca}">
		<c:set var="titulo" value="Consulta de personagem"/>
		<c:set var="rota" value="/voltar"/>
		<c:set var="metodo" value="get"/>
		<c:set var="botao" value="Voltar"/>
	</c:if>
	
	<div class="container">
		<h2>${titulo}</h2>

		<form action="${rota}" method="${metodo}">
		<div style="float:left" margin="auto">
			<div class="form-group">
				<label>Nome:</label> <input type="text"
					class="form-control" value="${forca.nome}" placeholder="Nome"
					name="nome" width="30%">
			</div>
			<div class="form-group">
				<label for="idade">Idade</label> <input type="text"
					class="form-control" value="${forca.idade}" id="idade" placeholder="Idade"
					name="idade" width="30%">
			</div>
			<div class="form-group">
				<label>Planeta:</label> <input type="text"
					class="form-control" value="${forca.planeta}" placeholder="Planeta"
					name="planeta" width="30%">
			</div>
			<div class="form-group">
				<label for="categoria">Categoria: </label> <input type="number"
					class="form-control" min="0" max="4" value="${forca.categoria}" id="categoria" placeholder="categoria 1-4"
					name="categoria" width="30%">
			</div>
		</div>
			
		<div style="float:left; margin="auto;">
			<p>Escolha seu lado:</p>
			<p>Qual frase define mais seu dia de código</p>
  			<input type="radio" id="light" name="1" value="30">
  			<label for="light">"Seus olhos podem traír você, não confie neles."</label><br>
  			<input type="radio" id="dark" name="1" value="60">
  			<label for="dark">"Eu acho sua falta de fé (no código) perturbadora"</label><br> 
  			<br> 
  			
  			<p>Qual o tema da(s) sua(s) IDEs?</p>
  			<input type="radio" id="dark" name="2" value="60">
  			<label for="dark">Não confio em ninguém com IDE clara</label><br>
  			<input type="radio" id="light" name="2" value="30">
  			<label for="light">Light e/ou colorida! O dia tem de começar bem</label><br>
  			<br> 
  			
  			<p>Café com ou sem açúcar?</p>
  			<input type="radio" id="light" name="3" value="30">
  			<label for="light">COM</label><br>
  			<input type="radio" id="dark" name="3" value="60">
  			<label for="dark">sem</label><br>
  			<br> 
  			
  			
  			
		</div>
		
		<div style="float:left; margin="auto;">
		<button type="submit" class="btn btn-default">${botao}</button>
		</div>	
		
		</form>
		
		
	</div>

</body>
</html>