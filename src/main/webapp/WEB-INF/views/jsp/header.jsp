<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Tehnopolis-where the best buy is!</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/navbar-hover.css" rel="stylesheet">
<link href="css/dropdown.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/heroic-features.css" rel="stylesheet">

<!-- Footer CSS -->
<link rel="stylesheet"
	href="css/footer-distributed-with-address-and-phones.css">
<link rel="stylesheet" href="css/demo.css">

<!-- Home page CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">
<!-- Password Validation -->
<link href="css/passwordConfirm.css" rel="stylesheet">

<!-- Shop item page CSS -->
<link href="css/shop-item.css" rel="stylesheet">

<!-- Basket CSS -->
<link href="css/basket.css" rel="stylesheet">

<!-- Home and search js -->
<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Basket js -->
<script src="js/basket.js"></script>

<!-- Password validation -->
<script src="js/validation.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!--Fond for search and footer -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css">



<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<header>
	<!-- First navbar for information -->

	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="./promotions">ПРОМОЦИИ</a></li>
					<li><a href="#">КОМПАНИЯ</a></li>
					<li><a href="#">КОНТАКТИ</a></li>


				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<div class="container">
		<div class="row">
			<!-- Logo photo -->

			<div class="col-md-4">
				<div class="row">
					<a href="./index"> <img alt="Logo" src="images/main/logo.png">
					</a> <a href="./index"> <img alt="Logo" src="images/main/robot.png">
					</a>
				</div>
			</div>

			<!-- Search bar -->
			<div class="col-md-4">
				<%@include file="search.jsp"%>
			</div>

			<c:choose>
				<c:when test="${not empty account  && not empty islogged}">
					
					<div class="col-md-2">
						<a href="./profile" class="btn btn-info btn-block">Моят профил</a>
					</div>
					<div class="col-md-1">
					<a href="./basket" class="btn btn-info btn-block"><img alt="cart" src="images/cart.png"></a>
					</div>
					<div class="col-md-1">
					<a href="./logout" class="btn btn-info btn-block">Изход</a>
					</div>
						
				</c:when>
				<c:otherwise>
					<div class="col-md-4">
						<a href="./login" class="btn btn-info btn-block">Вход/Регистрация</a>

					</div>
				</c:otherwise>
			</c:choose>


		</div>

	</div>






	<!-- Second navbar for choosing -->


	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-2">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-2">
				<ul class="nav nav-pills">

	<li class="dropdown">&nbsp;<li>
	<li class="dropdown">&nbsp;<li>
	<li class="dropdown">&nbsp;<li>
					

					<!--  TV -->
					<li class="dropdown"><a href="./product_typeTV">TV И ВИДЕО
					</a>
						<ul class="dropdown-menu columns" id="menu1">
							<li><a href="./product_listTV">ТЕЛЕВИЗОРИ <i class="icon-arrow-right"></i></a></li>
							<li class="divider"></li>
							<li><a href="#">ДОМАШНИ КИНА</a></li>
							<li class="divider"></li>
							<li><a href="#">SOUNDBAR СИСТЕМИ</a></li>
							<li class="divider"></li>
							<li><a href="#">BLU-RAY PLAYER</a></li>
							<li class="divider"></li>
							<li><a href="#">МУЛТИМЕДИЙНИ ПРОЕКТОРИ И ЕКРАНИ</a></li>
							<li class="divider"></li>
							<li><a href="#">TV АКСЕСОАРИ</a></li>
							<li><a href="./index"> <img alt="Logo"
									src="images/main/searchTV.jpg"></a></li>
						</ul></li>

					<!-- GSM -->
					<li class="dropdown"><a href="./product_typeGSM" >GSM И
							ТАБЛЕТИ </a>

						<ul class="dropdown-menu columns" id="menu1">
							<li><a href="#">МОБИЛНИ ТЕЛЕФОНИ </a></li>
							<li class="divider"></li>
							<li><a href="#">ТАБЛЕТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">АКСЕСОАРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ФИТНЕС ГРИВНИ</a><br /> &nbsp;</li>
							<li><a href="./home.jsp"> <img alt="Logo"
									src="images/main/searchGSM.jpg"></a></li>
						</ul></li>

					<!-- Photo -->
					<li class="dropdown"><a href="./product_typePhoto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ФОТО
							И <br>ВИДЕО КАМЕРИ
					</a>
						<ul class="dropdown-menu columns" id="menu1">
							<li><a href="#">ФОТОАПАРАТИ </a></li>
							<li class="divider"></li>
							<li><a href="#">D-SLR ФОТОАПАРАТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ВИДЕОКАМЕРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">MEMORY КАРТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ФОТО ПРИНТЕРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ФОТО И ВИДЕО АКСЕСОАРИ</a></li>
							<li><a href="./index"> <img alt="Logo"
									src="images/main/searchVideo.jpg"></a></li>
						</ul></li>
					<!-- Car accesories -->
					<li class="dropdown"><a href="./product_typeAuto">АВТО И
							GPS </a>
						<ul class="dropdown-menu columns" id="menu1">
							<li><a href="#">GPS НАВИГАЦИЯ </a></li>
							<li class="divider"></li>
							<li><a href="#">GPS АКСЕСОАРИ</a></li>
							<li class="divider"></li>
							<li><a href="./product_listDVD">CD/DVD РЕСИИВЪРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ГОВОРИТЕЛИ</a></li>
							<li class="divider"></li>
							<li><a href="#">УСИЛВАТЕЛИ</a></li>
							<li class="divider"></li>
							<li><a href="#">FM ТРАНСМИТОРИ</a></li>
							<li><a href="./home.jsp"> <img alt="Logo"
									src="images/main/searchAuto.jpg"></a></li>
						</ul></li>
					<!--Computers -->
					<li class="dropdown"><a href="./product_typeComp">КОМПЮТРИ
							И <br>&nbsp;ПЕРИФЕРИЯ
					</a>
						<ul class="dropdown-menu columns" id="menu1">
							<li><a href="#">ПРЕНОСИМИ КОМПЮТРИ </a></li>
							<li class="divider"></li>
							<li><a href="#">НАСТОЛНИ КОМПЮТРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ТАБЛЕТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ЧАНТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">МОНИТОРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ПРИНТЕРИ И СКЕНЕРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">USB ПАМЕТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ПРОТЕКТОРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">PC СОФТУЕР</a></li>
							<li><a href="./home.jsp"> <img alt="Logo"
									src="images/main/searchComp.jpg"></a></li>
						</ul></li>

					<!-- Computer accesories -->
					<li class="dropdown"><a href="./product_typeCompAccesories">КОМПЮТЪРНИ
							<br>&nbsp;&nbsp;&nbsp;АКСЕСОАРИ
					</a>
						<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
							<li><a href="#">USB ПАМЕТИ </a></li>
							<li class="divider"></li>
							<li><a href="#">МИШКИ И КЛАВИАТУРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ДЖОЙСТИЦИ И ВОЛАНИ</a></li>
							<li class="divider"></li>
							<li><a href="#">УЕБ КАМЕРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ПРОТЕКТОРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ЧАНТИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ХАРД ДИСКОВЕ</a></li>
							<li class="divider"></li>
							<li><a href="#">СЛУШАЛКИ И МИКРОФОНИ</a></li>
							<li class="divider"></li>
							<li><a href="#">АКСЕСОАРИ</a></li>
							<li><a href="./home.jsp"> <img alt="Logo"
									src="images/main/searchCompAccesories.jpg"></a></li>
						</ul></li>

					<!--Games-->
					<li class="dropdown"><a href="./product_typeGame">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ИГРИ
							И <br>ЗАБАВЛЕНИЯ
					</a>
						<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
							<li><a href="#">КОНЗОЛИ </a></li>
							<li class="divider"></li>
							<li><a href="#">АКСЕСОАРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">СОФТУЕР</a></li>
							<li class="divider"></li>
							<li><a href="#">КНИГИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ВЕЛОСИПЕДИ</a></li>
							<li class="divider"></li>
							<li><a href="#">КРОСТРЕНАЖОРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ВЕЛОЕРГОМЕТРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ПЪТЕКИ</a></li>
							<li class="divider"></li>
							<li><a href="#">ВИДЕО КАМЕРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">DRONES</a></li>
							<li><a href="./home.jsp"> <img alt="Logo"
									src="images/main/searchGame.jpg"></a></li>
						</ul></li>

					<!-- Audio -->
					<li class="dropdown"><a href="#">АУДИО</a>
						<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
							<li><a href="#">АУДИО СИСТЕМИ </a></li>
							<li class="divider"></li>
							<li><a href="#">ДОМАШНИ КИНА</a></li>
							<li class="divider"></li>
							<li><a href="#">SOUNDBAR СИСТЕМИ</a></li>
							<li class="divider"></li>
							<li><a href="#">АУДИО СЛУШАЛКИ И МИКРОФОНИ</a><br /> &nbsp;</li>
							<li><a href="#">IPOD И АКСЕСОАРИ</a></li>
							<li class="divider"></li>
							<li><a href="#">HI-FI</a></li>
							<li class="divider"></li>
							<li><a href="#">МУЗИКАЛНИ ИНСТРУМЕНТИ</a></li>
							<li><a href="./home.jsp"> <img alt="Logo"
									src="images/main/robot.png"></a></li>
						</ul></li>



				



				</ul>
			</div>
		</div>
	</nav>
</header>
<body>