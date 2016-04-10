<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script type="text/javascript">
function addedToCart() {
	<%if(session.getAttribute("account")!=null){%>
    alert("Успешно добавихте продукта във вашата кошница!");
    <%}else{%>
    alert("Моля първо се впишете в системата!");
    <%}%>
  }
</script>
<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="<%=request.getAttribute("image")%>" alt="">
						<div class="caption">
							<h4 class="pull-right"><%=request.getAttribute("price")%>лв.</h4>
							<h4>
								<a href="./product?productId=<%=request.getAttribute("Id")%>">
								<%=request.getAttribute("name")%></a>
							</h4>
						</div>
						<div class="ratings">
								<a class="btn btn-primary"  onclick="addedToCart()"
			href="./buyProduct?productId=<%=request.getAttribute("Id")%>">Купи
			сега!</a>
						</div>
					
					</div>
				</div>