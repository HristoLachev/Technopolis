

<%@page import="frontController.model.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="frontController.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Include Header -->
<%@include file="header.jsp"%>

<body>



	<!-- Page Content -->

	<div class="row">

		<div class="col-md-12">
			<%
				Product product = (Product) session.getAttribute("productId");
				ArrayList<String> descriptions = product.getDescriptions();
			%>
			<div class="thumbnail">
				<img src="<%=product.getImage()%>" style="width: 250px;">
				<div class="caption-full">

					<h4 class="pull-right"><%=product.getPrice()%>лв.
					</h4>
					<h4>
						<a href="#"><%=product.getName()%></a>
					</h4>

					<p>
						<%
							for (String description : descriptions) {
								
								request.setAttribute("description", description);
						%>

						<jsp:include page="description.jsp"></jsp:include>

						<%
							}
							session.setAttribute("productList", ProductDAO.getProductsByType("New"));
						%>
					</p>

				</div>
				<div class="ratings">
					<p class="pull-right">
						<a class="btn btn-primary" onclick=" addedToCart()"
							href="./buyProduct?productId=<%=product.getId()%>">Купи сега!</a>
					</p>
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span> 4.0 stars
					</p>
				</div>
			</div>

			<div class="well">

				<div class="row">

					<%
						List<Product> products = (ArrayList<Product>) session.getAttribute("productList");
						for (Product product1 : products) {
							if (product1 != null) {
								request.setAttribute("Id", product1.getId());
								request.setAttribute("image", product1.getImage());
								request.setAttribute("price", product1.getPrice());
								request.setAttribute("name", product1.getName());
								request.setAttribute("information", product1.getInformation());
							}
					%>

					<jsp:include page="shop_item_template.jsp"></jsp:include>

					<%
						}
						session.setAttribute("productList", ProductDAO.getProductsByType("New"));
					%>








				</div>

			</div>

		</div>

	</div>
	<%@include file="footer.jsp"%>