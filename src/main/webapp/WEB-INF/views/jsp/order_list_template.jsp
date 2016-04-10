<%@page import="frontController.model.Address"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="frontController.model.Order"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Product"%>

<div>

	<%
		Order order = (Order) request.getAttribute("order");
		Integer id = order.getId();
		Address address = order.getAddress();
		ArrayList<Product> basket = order.getBasket();
	%>
	<h4>
		Номера на поръчката е :
		<%=id%></h4>
	<h4>
		Име:<%=address.getFirstName() + " " + address.getLastName()%>
	</h4>
	<h4>
		Адреса на поръчката е:
		<%=address%>
	</h4>
	<%
		for (Product product : basket) {
	%>
	<h4><%=product%>
		</h4>
			<%
				}
			%>

			

			<br></br>
</div>