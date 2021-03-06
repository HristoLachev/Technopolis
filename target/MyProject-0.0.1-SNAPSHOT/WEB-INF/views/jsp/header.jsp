<%@page import="org.apache.jasper.runtime.JspWriterImpl"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/navbar-hover.css" rel="stylesheet">
  <link href="css/dropdown.css" rel="stylesheet">
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
					<li><a href="#">ПРОМОЦИИ</a></li>
					<li><a href="#">КОМПАНИЯ</a></li>
					<li><a href="#">РАБОТИ ПРИ НАС</a></li>
					<li><a href="#">ПОКУПКИ НА ИЗПЛАЩАНЕ</a></li>
					<li><a href="#">ВЗЕМИ ОТ МАГАЗИН</a></li>
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
				<a href="./home.jsp"> <img alt="Logo" src="images/logo.png">
			</a>
			<a href="./home.jsp"> <img alt="Logo" src="images/robot.png">
			</a>
			</div>
				</div>

			<!-- Search bar -->
			<div class="col-md-4">
				<%@include file="search.jsp"%>
			</div>
			<div class="col-md-4">
				<a href="./login" class="btn btn-info btn-block">Вход/Регистрация</a>

			</div>

		</div>

	</div>






	<!-- Second navbar for choosing -->

	<hr>
	<div class="container">
	<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-2">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar" ></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-2">
		<ul class="nav nav-pills">
		
		
		<!--  TV -->
			<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">TV И ВИДЕО </a>
				<ul class="dropdown-menu columns" id="menu1">
					<li><a href="#">ТЕЛЕВИЗОРИ <i class="icon-arrow-right"></i></a></li>
						<li class="divider"></li>
					<li><a href="#">ДОМАШНИ КИНА</a></li>
						<li class="divider"></li>
					<li><a href="#">SOUNDBAR СИСТЕМИ</a></li>
					<li class="divider"></li>
					<li><a href="#">BLU-RAY PLAYER</a><br /> &nbsp;</li>
					<li><a href="#">МУЛТИМЕДИЙНИ ПРОЕКТОРИ И ЕКРАНИ</a></li>
					<li class="divider"></li>
					<li><a href="#">TV АКСЕСОАРИ</a></li>
					<li><a href="./index"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
				<!-- GSM -->
			<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">GSM И ТАБЛЕТИ </a>
				<ul class="dropdown-menu columns" id="menu1">
					<li><a href="#">МОБИЛНИ ТЕЛЕФОНИ </a></li>
						<li class="divider"></li>
					<li><a href="#">ТАБЛЕТИ</a></li>
						<li class="divider"></li>
					<li><a href="#">АКСЕСОАРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ТЕЛЕФОНИ</a><br /> &nbsp;</li>
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
				<!-- Photo -->
				<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ФОТО И <br>ВИДЕО КАМЕРИ </a>
				<ul class="dropdown-menu columns" id="menu1">
					<li><a href="#">ФОТОАПАРАТИ </a></li>
						<li class="divider"></li>
					<li><a href="#">D-SLR ФОТОАПАРАТИ И КОМПЛЕКТИ</a></li>
						<li class="divider"></li>
					<li><a href="#">ВИДЕОКАМЕРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">MEMORY КАРТИ</a><br /> &nbsp;</li>
					<li><a href="#">ФОТО ПРИНТЕРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ФОТО И ВИДЕО АКСЕСОАРИ</a></li>
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
					<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">АВТО И GPS </a>
				<ul class="dropdown-menu columns" id="menu1">
					<li><a href="#">GPS НАВИГАЦИЯ </a></li>
						<li class="divider"></li>
					<li><a href="#">GPS АКСЕСОАРИ</a></li>
						<li class="divider"></li>
					<li><a href="#">CD/DVD РЕСИИВЪРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ГОВОРИТЕЛИ</a><br /> &nbsp;</li>
					<li><a href="#">УСИЛВАТЕЛИ</a></li>
					<li class="divider"></li>
					<li><a href="#">FM ТРАНСМИТОРИ</a></li>
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
				<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">КОМПЮТРИ И <br>&nbsp;ПЕРИФЕРИЯ </a>
				<ul class="dropdown-menu columns" id="menu1">
					<li><a href="#">ПРЕНОСИМИ КОМПЮТРИ </a></li>
						<li class="divider"></li>
					<li><a href="#">НАСТОЛНИ КОМПЮТРИ</a></li>
						<li class="divider"></li>
					<li><a href="#">ТАБЛЕТИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ЧАНТИ</a><br /> &nbsp;</li>
					<li><a href="#">МОНИТОРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ПРИНТЕРИ И СКЕНЕРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">USB ПАМЕТИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ПРОТЕКТОРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">PC СОФТУЕР</a></li>
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
			
			
				<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">КОМПЮТЪРНИ <br>&nbsp;&nbsp;&nbsp;АКСЕСОАРИ </a>
				<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
					<li><a href="#">USB ПАМЕТИ </a></li>
						<li class="divider"></li>
					<li><a href="#">МИШКИ И КЛАВИАТУРИ</a></li>
						<li class="divider"></li>
					<li><a href="#">ДЖОЙСТИЦИ И ВОЛАНИ</a></li>
					<li class="divider"></li>
					<li><a href="#">УЕБ КАМЕРИ</a><br /> &nbsp;</li>
					<li><a href="#">ПРОТЕКТОРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ЧАНТИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ХАРД ДИСКОВЕ</a></li>
					<li class="divider"></li>
					<li><a href="#">СЛУШАЛКИ И МИКРОФОНИ</a></li>
					<li class="divider"></li>
					<li><a href="#">АКСЕСОАРИ</a></li>
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
					<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ИГРИ И <br>ЗАБАВЛЕНИЯ </a>
				<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
					<li><a href="#">КОНЗОЛИ </a></li>
						<li class="divider"></li>
					<li><a href="#">АКСЕСОАРИ</a></li>
						<li class="divider"></li>
					<li><a href="#">СОФТУЕР</a></li>
					<li class="divider"></li>
					<li><a href="#">КНИГИ</a><br /> &nbsp;</li>
					<li><a href="#">ВЕЛОСИПЕДИ</a></li>
					<li class="divider"></li>
					<li><a href="#">КРОСТРЕНАЖОРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ВЕЛОЕРТОМЕТРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ПЪТЕКИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ВИДЕО КАМЕРИ</a></li>
					<li class="divider"></li>
					<li><a href="#">DRONES</a></li>
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
					<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">АУДИО</a>
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
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
				
					<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;МАЛКИ<br> ЕЛЕКТРОУРЕДИ </a>
				<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
					<li><a href="#">МИКРОВЪЛНОВИ </a></li>
						<li class="divider"></li>
					<li><a href="#">ПРАХОСМУКАЧКИ</a></li>
						<li class="divider"></li>
					<li><a href="#">ЗА КУХНЯТА</a></li>
					<li class="divider"></li>
					<li><a href="#">ЗА ТЯЛОТО</a><br /> &nbsp;</li>
					<li><a href="#">ЗА ГЛАДЕНЕ </a></li>
					<li class="divider"></li>
					<li><a href="#">ЗА ЗДРАВЕТО</a></li>
					<li class="divider"></li>
					<li><a href="#">ЗА БЕБЕТО</a></li>
					
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
				<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">&nbsp;КЛИМАТИЦИ И <br>&nbsp;ОТОПЛИТЕЛИ </a>
				<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
					<li><a href="#">ИНВЕРТОРНИ SPLIT СИСТЕМИ </a></li>
						<li class="divider"></li>
					<li><a href="#">ПРОФЕСИОНАЛНА КЛИМАТИЧНА ТЕХНИКА</a></li>
						<li class="divider"></li>
					<li><a href="#">МОБИЛНИ КЛИМАТИЦИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ОТОПЛИТЕЛИ</a><br /> &nbsp;</li>
					<li><a href="#">ВЕНТИЛАТОРИ</a></li>
					<li class="divider"></li>
					
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
					<li class="dropdown"><a href="#" data-toggle="dropdown"
				class="dropdown-toggle">&nbsp;&nbsp;ДОМАКИНСКИ<br>ЕЛЕТРОУРЕДИ </a>
				<ul class="dropdown-menu columns dropdown-menu-right" id="menu1">
					<li><a href="#">ПЕРАЛНИ </a></li>
						<li class="divider"></li>
					<li><a href="#">СУШИЛНИ</a></li>
						<li class="divider"></li>
					<li><a href="#">ХЛАДИЛНИЦИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ФРИЗЕРИ</a><br /> &nbsp;</li>
					<li><a href="#">СЪДОМИЯЛНИ</a></li>
					<li class="divider"></li>
					<li><a href="#">ГОТВАРСКИ ПЕЧКИ</a></li>
					<li><a href="#">УРЕДИ ЗА ВГРАЖДАНЕ</a></li>
					
					<li><a href="./home.jsp"> <img alt="Logo" src="images/robot.png"></a></li>
				</ul></li>
				
				
		</ul>
		</div>
	</div>
</header>