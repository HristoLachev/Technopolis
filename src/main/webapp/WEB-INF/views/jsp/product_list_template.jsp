<%@ page language="java" contentType="text/html; charset=UFT-8"
	pageEncoding="UTF-8"%>


<div class="col-sm-4 col-lg-4 col-md-4">
	<div class="thumbnail">
		<img src="<%=request.getAttribute("image")%>" />
		<div class="caption">
			<h4 class="pull-right"><%=request.getAttribute("price")%></h4>
			<h4>
				<a href="./product?productId=<%=request.getAttribute("Id")%>"><%=request.getAttribute("name")%></a>
			</h4>
			<p <%=request.getAttribute("information")%> />
		</div>
		<a class="btn btn-primary" 
			href="./buyProduct?productId=<%=request.getAttribute("Id")%>">Купи
			сега!</a>
	</div>
</div>