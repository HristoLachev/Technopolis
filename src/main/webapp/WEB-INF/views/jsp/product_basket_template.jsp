<%@page import="frontController.model.ProductDAO"%>
<%@page import="frontController.model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="js/jquery.js"></script>

<script type="text/javascript">
    function removeProduct(){
    	$.get("./removeProduct?productId=<%=request.getAttribute("Id")%>").success(
    			function(products){
    				$("#<%=request.getAttribute("Id")%>").empty();
    				removeProductById();
    				
    			});
    	}
    	
    function removeProductById(){
    	
    	$.ajax({
    	
			type : "DELETE",
			contentType : "application/json",
			url : "removeProduct",
			data : JSON.stringify(<%=request.getAttribute("Id")%>),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				
				<%session.setAttribute("totalPrice",
					(Integer) session.getAttribute("totalPrice") - (Integer) request.getAttribute("price"));%>
				$("#<%=request.getAttribute("Id")%>").empty();
						$("#totalPrice").load(location.href + " #totalPrice>*",
								"");

					},
					error : function(e) {
						console.log("ERROR: ", e);
						display(e);
					},
					done : function(e) {
						console.log("DONE");
					}
				});
	}
</script>

<tr id="<%=request.getAttribute("Id")%>">
	<td class="col-md-6">
		<div class="media">
			<a class="thumbnail pull-left" href="./product?productId=<%=request.getAttribute("Id")%>"> <img
				src="<%=request.getAttribute("image")%>" style="width: 100px;">
			</a>
			<div class="media-body">
				<h4 class="media-heading">
					<a href="./product?productId=<%=request.getAttribute("Id")%>"><%=request.getAttribute("name")%></a>
				</h4>
			</div>
		</div>
	</td>
	<td class="col-md-1 text-center"><strong><%=request.getAttribute("quantity")%>
	</strong></td>
	<td class="col-md-1 text-center"><strong><%=request.getAttribute("price")%>лв.
	</strong></td>
	<td class="col-md-1 text-center"><strong><%=(Integer)request.getAttribute("price")*(Integer)request.getAttribute("quantity")%>лв.
	</strong></td>


	<td class="col-md-1">
		<button type="button" onclick="removeProductById()"
			class="btn btn-danger">
			<span class="glyphicon glyphicon-remove"></span> Remove
		</button>
	</td>
</tr>
