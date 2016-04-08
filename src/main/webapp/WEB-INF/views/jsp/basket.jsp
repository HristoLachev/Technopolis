<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="frontController.model.Product"%>
<%@ page import="frontController.model.Account"%>
<!-- Include header -->
<%@include file="header.jsp"%>

<div class="container">
<% %>
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                   <%Account account = (Account)session.getAttribute("account");
							
							List<Product> products = account.getBasket();
							Integer totalPrice=0;
						for(Product product : products){
							request.setAttribute("Id", product.getId());
							request.setAttribute("image", product.getImage());
							request.setAttribute("price", product.getPrice());
							request.setAttribute("name", product.getName());
							totalPrice+=product.getPrice();
							%>
						
						<jsp:include page="product_basket_template.jsp"></jsp:include>
						
						<%} %>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong><%=totalPrice %></strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                       <a  href="./index"
							data-slide="prev" class="btn btn-default"> 
                           <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping</a>
                       </td>
                        <td>
                       <a href="./checkOut" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>