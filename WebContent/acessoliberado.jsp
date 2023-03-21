<jsp:useBean id="calcula" class="beans.BeanCurso" type="beans.BeanCurso"
	scope="page" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acesso Permitido</title>
<link rel="stylesheet" href="resources/css/acesso-liberado.css">
<link rel="icon" type="image/x-icon" href="resources/image/java.png">
</head>
<body>

	<h1 class="text-center">Seja bem vindo ao sistema em jsp! Oque
		deseja fazer?</h1>

	<div class="pricing-box-container">
		<div class="pricing-box text-center">
			<p class="price">Cadastrar Usuários</p>
			<ul class="features-list">
				<li><a href="salvarUsuario?acao=listartodos"> <img width="110px"
						src="resources/image/usuario.jpg" alt="Cadastrar Usuários" />
				</a></li>
			</ul>
			<a href="salvarUsuario?acao=listartodos">
				<button class="btn-primary">Cadastro de usuários</button>
			</a>
		</div>

		<div class="pricing-box pricing-box-bg-image text-center">
			<p class="price">
			<h1>Em Construção</h1>
			</p>
			<ul class="features-list">
				<li><strong>5</strong> Project</li>
			</ul>
			<button class="btn-primary">Work in Progress</button>
		</div>

		<div class="pricing-box text-center">
			<p class="price"><h1>Em Construção</h1></p>

			<ul class="features-list">
				<li><strong>25</strong> Project</li>
			</ul>
			<button class="btn-primary">Work in Progress</button>
		</div>
	</div>

	<footer>
		<p>
			Criado por Davi Alves - © 2023 <br /> Outros projetos no 
			<a target="_blank"	href="https://github.com/d1av/">Github</a>
		</p>
	</footer>

</body>
</html>