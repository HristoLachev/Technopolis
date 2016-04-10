<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Include Header -->
<%@include file="header.jsp"%>

<!-- Page Content -->
<div class="container">

	<div class="col-md-12">

		<div class="row carousel-holder">

			<div class="col-md-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img class="slide-image" src="images/homePageMain/home1.jpg"
								alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="images/homePageMain/home2.jpg"
								alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="images/homePageMain/home3.jpg"
								alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="images/homePageMain/home4.jpg"
								alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="images/homePageMain/home5.jpg"
								alt="">
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>

		</div>

		<div class="row">

			<%
				List<Product> products = (ArrayList<Product>) session.getAttribute("productList");
				for (Product product : products) {
					request.setAttribute("Id", product.getId());
					request.setAttribute("image", product.getImage());
					request.setAttribute("price", product.getPrice());
					request.setAttribute("name", product.getName());
					request.setAttribute("information", product.getInformation());
			%>

			<jsp:include page="product_home_template.jsp"></jsp:include>

			<%
				}
			%>


		</div>

	</div>

</div>
<!-- Footer -->
<%@include file="footer.jsp"%>



