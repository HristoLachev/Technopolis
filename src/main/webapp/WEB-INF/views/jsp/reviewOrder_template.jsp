<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="form-group">
	<div class="col-sm-3 col-xs-3">
		<img class="img-responsive"
			src="<%=request.getAttribute("image") %>" />
	</div>
	<div class="col-sm-6 col-xs-6">
		<div class="col-xs-12"><%=request.getAttribute("name")%></div>
		<div class="col-xs-12">
			<small>Количество:<span><%=request.getAttribute("quantity")%></span></small>
		</div>
	</div>
	<div class="col-sm-3 col-xs-3 text-right">
		<h6>
			<span></span><%=((Integer)request.getAttribute("price")*(Integer)request.getAttribute("quantity"))%>лв.
		</h6>
	</div>
</div>