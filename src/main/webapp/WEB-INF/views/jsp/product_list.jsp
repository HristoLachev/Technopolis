<%@page import="frontController.model.ProductDAO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Include header -->
<%@include file="header.jsp"%>
<body>



	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<p class="lead">Shop Name</p>
				<div class="list-group">
					<form action="./searchByPrice" method="post">
					<a class="list-group-item">Максимална цена:
						
						<input type="text" class="form-control" name="price"
						placeholder="Search term..."> <span
						class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
					
						</a>
						</form>
					<form action="./search" method="post">
					<a class="list-group-item">Модел:
						
						<input type="text" class="form-control" name="search"
						placeholder="Search term..."> <span
						class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
					
						</a>
						</form>
						
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
						
						<%} session.setAttribute("productList",  ProductDAO.getProductsByType("New"));%>


					</div>

				</div>

			</div>

		</div>
	</div>
	</div>
	</div>
	<!-- /.container -->


<%@include file="footer.jsp"%>
	
