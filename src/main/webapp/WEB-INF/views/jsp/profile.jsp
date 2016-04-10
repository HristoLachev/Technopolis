<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Order"%>
<%@page import="frontController.model.Account"%>
<%@page import="frontController.model.Address"%>
<!-- Include Header -->
<%@include file="header.jsp"%>

<div class="well">

	<ul class="nav nav-tabs">
		<li class="active"><a href="#home" data-toggle="tab">Лични
				данни</a></li>
		<li><a href="#orderFalse" data-toggle="tab">Необработени
				поръчки</a></li>
		<li><a href="#orderTrue" data-toggle="tab">Обработени поръчки</a></li>
		<li><a href="#passwordChange" data-toggle="tab">Промяна на
				паролата</a></li>
		<li><a href="#address" data-toggle="tab">Данни за доставка</a></li>
	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active in" id="home">
			<form action="./profile" method="post" id="tab">
				<label>Име</label> <input type="text"
					value="<%=((Account) session.getAttribute("account")).getFirstName()%> "
					name="firstName" class="input-xlarge"> <label>Фамилно
					име</label> <input type="text"
					value="<%=((Account) session.getAttribute("account")).getLastName()%>"
					name="lastName" class="input-xlarge"> <label>E-mail</label>
				<input type="text"
					value="<%=((Account) session.getAttribute("account")).getEmail()%>"
					name="email" class="input-xlarge"> <label>Телефонен
					номер</label> <input type="text"
					value="<%=((Account) session.getAttribute("account")).getPhoneNumber()%>"
					name="phoneNumber" class="input-xlarge">

				<div>
					<button type="submit" class="btn btn-primary">ЗАПАЗВАНЕ</button>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="orderFalse">
			<form id="tab2">
				<%
					ArrayList<Order> ordersFalse = ((Account) session.getAttribute("account")).getOrdersFalse();
					if (ordersFalse.isEmpty()) {
				%>
				<jsp:include page="NoOrders.jsp"></jsp:include>
				<%
					} else {
						for (Order order : ordersFalse) {
							request.setAttribute("order", order);
				%>

				<jsp:include page="order_list_template.jsp"></jsp:include>

				<%
					}
					}
				%>
			</form>
		</div>
		<div class="tab-pane fade" id="orderTrue">
			<form id="tab3">
				<%
					ArrayList<Order> ordersTrue = ((Account) session.getAttribute("account")).getOrdersTrue();
					if (ordersTrue.isEmpty()) {
				%>
				<jsp:include page="NoOrders.jsp"></jsp:include>
				<%
					} else {
						for (Order order : ordersTrue) {
							request.setAttribute("order", order);
				%>

				<jsp:include page="order_list_template.jsp"></jsp:include>

				<%
					}
					}
				%>
			</form>
		</div>
		<div class="tab-pane fade" id="passwordChange">
			<form action="./profile" method="post" id="tab4">
				<label>Нова парола</label> <input type="password" name="password"
					class="input-xlarge">

				<div>
					<button type="submit" class="btn btn-primary">Обнови</button>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="address">
			<form id="tab5">
				<%
					ArrayList<Address> addresses = (ArrayList<Address>) session.getAttribute("addresses");
					for (Address address : addresses) {
						Integer id = 1;
						request.setAttribute("address", address);
						request.setAttribute("id", id);
				%>
				<h4>
					Адрес <%=id%></h4>
				<jsp:include page="address_list_template.jsp"></jsp:include>

				<%
					id++;
					}
				%>
			</form>
		</div>
	</div>
</div>