<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Include Header -->
<jsp:include page="${request.contextPath}/header"></jsp:include>


<!-- Page Content -->
<div class="container">

	<!-- Jumbotron Header -->
	<header class="jumbotron hero-spacer">

		<div class="thumbnail">
			<a href="./product?productId=5"><img src="images/computer/mainComp.jpg" alt=""></a>
		</div>
	</header>

	<hr>

	<!-- Title -->
	<div class="row">
		<div class="col-lg-12">
			<h3>КОМПЮТРИ И ПЕРИФЕРИЯ</h3>
		</div>
	</div>
	<!-- /.row -->

	<!-- Page Features -->
	<div class="row text-center" id="main">

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/laptop.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Лаптопи</a>
					</h3>
				</div>
			</div>
		</div>


		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/comp.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Настолни компютри </a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3  col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/tablets.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Таблети</a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/bag.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Чанти</a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/desktop.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Монитори</a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/printer.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Принтери и скенери</a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/USB.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">USB памети</a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/protector.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">Протектори</a>
					</h3>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
			<div class="thumbnail">
				<a href="product_list"> <img src="images/computer/software.jpg"
					alt=""></a>
				<div class="caption">
					<h3>
						<a href="product_list">PC Софтуер</a>
					</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->



</div>

<hr>

<!-- Footer -->
<%@include file="footer.jsp"%>



