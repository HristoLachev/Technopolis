<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Order"%>
<%@page import="frontController.model.Account" %>
<!-- Include Header -->
<%@include file="header.jsp"%>

<div class="well">

	<ul class="nav nav-tabs">
		<li class="active"><a href="#home" data-toggle="tab">Лични данни</a></li>
		<li><a href="#orderFalse" data-toggle="tab">Необработени поръчки</a></li>
		<li><a href="#orderTrue" data-toggle="tab">Обработени поръчки</a></li>
		<li><a href="#passwordChange" data-toggle="tab">Промяна на паролата</a></li>
	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active in" id="home">
			<form id="tab">
				<label>Име</label>
				<input type="text" value="<%=((Account)session.getAttribute("account")).getFirstName() %> " class="input-xlarge"> 
				<label>Фамилно име</label> 
				<input type="text" value="<%=((Account)session.getAttribute("account")).getLastName() %>" class="input-xlarge"> 
				<label>E-mail</label>
				<input type="text" value="<%=((Account)session.getAttribute("account")).getEmail() %>" class="input-xlarge"> 
			    <label>Телефонен номер</label>
				<input type="text" value="<%=((Account)session.getAttribute("account")).getPhoneNumber() %>" class="input-xlarge"> 
	
				<div>
					<button class="btn btn-primary">ЗАПАЗВАНЕ</button>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="orderFalse">
			<form id="tab2">
				<%
							ArrayList<Order> ordersFalse=((Account)session.getAttribute("account")).getOrdersFalse();
						for(Order order : ordersFalse){
							request.setAttribute("address", order.getAddress());							
							%>
						
						<jsp:include page="order_list_template.jsp"></jsp:include>
						
						<%} %>
			</form>
		</div>
		<div class="tab-pane fade" id="orderTrue">
			<form id="tab3">
				<%
							ArrayList<Order> ordersTrue=((Account)session.getAttribute("account")).getOrdersTrue();
						for(Order order : ordersTrue){
							request.setAttribute("address", order.getAddress());							
							%>
						
						<jsp:include page="order_list_template.jsp"></jsp:include>
						
						<%} %>
			</form>
		</div>
		<div class="tab-pane fade" id="passwordChange">
			<form id="tab4">
				<label>Нова парола</label> <input type="password"
					class="input-xlarge">
				<div>
					<button class="btn btn-primary">Update</button>
				</div>
			</form>
		</div>
	</div>
		</div>