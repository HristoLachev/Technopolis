<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Include header -->
<%@include file="header.jsp"%>
<body>



	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<p class="lead">Shop Name</p>
				<div class="list-group">
					<a href="#" class="list-group-item">Category 1</a> <a href="#"
						class="list-group-item">Category 2</a> <a href="#"
						class="list-group-item">Category 3</a>
				</div>
			</div>

			<div class="col-md-9">

				<div class="row carousel-holder">

					<div class="col-md-12"></div>

					<div class="row">

						<%
							List<Product> products = (ArrayList<Product>) session.getAttribute("productList");
						for(Product product : products){
							request.setAttribute("Id", product.getId());
							request.setAttribute("image", product.getImage());
							request.setAttribute("price", product.getPrice());
							request.setAttribute("name", product.getName());
							request.setAttribute("information", product.getInformation());
							%>
						
						<jsp:include page="product_list_template.jsp"></jsp:include>
						
						<%} %>

						<div class="col-sm-4 col-lg-4 col-md-4">
							<h4>
								<a href="#">Like this template?</a>
							</h4>
							<p>
								If you like this template, then check out <a target="_blank"
									href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this
									tutorial</a> on how to build a working review system for your
								online store!
							</p>
							<a class="btn btn-primary" target="_blank"
								href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View
								Tutorial</a>
						</div>

					</div>

				</div>

			</div>

		</div>
	</div>
	<!-- /.container -->


<%@include file="footer.jsp"%>
	
