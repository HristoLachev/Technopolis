<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Tehnopolis-buy the best!</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/heroic-features.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Include Header -->
	<%@include file="header.jsp"%>


	<!-- Page Content -->
	<div class="container">

		<!-- Jumbotron Header -->
		<header class="jumbotron hero-spacer">

			<div class="thumbnail">
				<a href="#"><img src="images/photo/mainPhoto.jpg" alt=""></a>
			</div>
			<p>
				<a class="btn btn-primary btn-large">NEED TO CHANGE!</a>
			</p>
		</header>

		<hr>

		<!-- Title -->
		<div class="row">
			<div class="col-lg-12">
				<h3>ФОТО И ВИДЕОКАМЕРИ</h3>
			</div>
		</div>
		<!-- /.row -->

		<!-- Page Features -->
		<div class="row text-center" id="main">

			<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<a href="product_list"> <img src="images/photo/aparati.jpg"
						alt=""></a>
					<div class="caption">
						<h3>
							<a href="product_list">Фотоапарати</a>
						</h3>
					</div>
				</div>
			</div>


			<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<a href="product_list"> <img src="images/photo/DSL.jpg" alt=""></a>
					<div class="caption">
						<h3>
							<a href="product_list">D-SLR Фотоапарати </a>
						</h3>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-lg-3  col-sm-6 hero-feature">
				<div class="thumbnail">
					<a href="product_list"> <img src="images/photo/video.jpg"
						alt=""></a>
					<div class="caption">
						<h3>
							<a href="product_list">Видеокамери</a>
						</h3>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<a href="product_list"> <img src="images/photo/memory.jpg"
						alt=""></a>
					<div class="caption">
						<h3>
							<a href="product_list">Memory карти</a>
						</h3>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<a href="product_list"> <img src="images/photo/printeri.jpg"
						alt=""></a>
					<div class="caption">
						<h3>
							<a href="product_list">Фото принтери</a>
						</h3>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<a href="product_list"> <img src="images/photo/aksesoari.jpg"
						alt=""></a>
					<div class="caption">
						<h3>
							<a href="product_list">Аксесоари</a>
						</h3>
					</div>
				</div>
			</div>





			<div class="col-md-3 col-lg-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
					<div class="caption">
						<h3>Feature Label</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<p>
							<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
								class="btn btn-default">More Info</a>
						</p>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->



	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<hr>
	<%@include file="footer.jsp"%>
</body>

</html>
