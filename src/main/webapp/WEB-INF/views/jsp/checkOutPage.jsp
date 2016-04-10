<%@page import="java.util.List"%>
<%@page import="frontController.model.Product"%>
<%@page import="frontController.model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!-- Include Header -->
<%@include file="header.jsp" %>	


<div class="container wrapper">
            <div class="row cart-head">
                <div class="container">
                <div class="row">
                    <p></p>
                </div>
                <div class="row">
                    <div style="display: table; margin: auto;">
                        <span class="step step_complete"> <a href="./basket" class="check-bc">Количка</a> <span class="step_line step_complete"> </span> <span class="step_line backline"> </span> </span>
                        <span class="step step_complete"> <a href="./order" class="check-bc">Checkout</a> <span class="step_line "> </span> <span class="step_line step_complete"> </span> </span>
                        <span class="step_thankyou check-bc step_complete">Благодарим ви!</span>
                    </div>
                </div>
                <div class="row">
                    <p></p>
                </div>
                </div>
            </div>    
            <div class="row cart-body">
                <spring:form class="form-horizontal" id="registerForm" method="POST" action="./order"
					novalidate="novalidate" onsubmit="return checkForm(this);" commandName="address">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Преглед на поръчката <div class="pull-right"><small><a class="afix-1" href="./basket">Обратно към количката</a></small></div>
                        </div>
                        <div class="panel-body">
  
                          <%Account account = (Account)session.getAttribute("account");
							
							List<Product> products = account.getBasket();
							Integer totalPrice=0;
							session.setAttribute("totalPrice", totalPrice);
						for(Product product : products){
							request.setAttribute("Id", product.getId());
							request.setAttribute("image", product.getImage());
							request.setAttribute("price", product.getPrice());
							request.setAttribute("name", product.getName());
							request.setAttribute("quantity", product.getQuantity());
							totalPrice+=product.getPrice()*product.getQuantity();
							%>
						
						<jsp:include page="reviewOrder_template.jsp"></jsp:include>
						
					<%}session.setAttribute("totalPrice", totalPrice); %>
                           
                           
                    
                            <div class="form-group"><hr /></div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <strong>Крайна цена:</strong>
                                    <div class="pull-right" id="totalPrice"><span></span><span><%=session.getAttribute("totalPrice")%>лв.</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--REVIEW ORDER END-->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Адрес</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Адрес за доставка</h4>
                                </div>
                            </div>
                           
                            <div class="form-group">
                                <div class="col-md-12"><strong>Град:</strong></div>
                                <div class="col-md-12">
                                    <spring:input type="text" name="city"
							class="form-control" id="city"  required="" value="" path="city" />
                                </div>
                            </div>
                               <div class="form-group">
                                <div class="col-md-12"><strong>Адрес:</strong></div>
                                <div class="col-md-12">
                                    <spring:input type="text" name="location"
							class="form-control" id="location"  required="" value="" path="location" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Пощенски код:</strong></div>
                                <div class="col-md-12">
                                    <spring:input type="text" name="postCode"
							class="form-control" id="postCode"  required="" value="" path="postCode"/>
                                </div>
                            </div>
                            
                             <div class="form-group">
                                <div class="col-md-12"><strong>Име:</strong></div>
                                <div class="col-md-12">
                                   <spring:input type="text" name="firstName"
							class="form-control" id="firstName"  required="" value="" path="firstName"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <div class="col-md-12"><strong>Фамилия:</strong></div>
                                <div class="col-md-12">
                                   <spring:input type="text" name="lastName"
							class="form-control" id="lastName"  required="" value="" path="lastName"/>
                                </div>
                            </div>
                              <div class="form-group">
                                <div class="col-md-12"><strong>Телефонен номер:</strong></div>
                                <div class="col-md-12">
                                  <spring:input type="text" name="phoneNumber"
							class="form-control" id="phoneNumber"  required="" value="" path="phoneNumber"/>
                                </div>
                            </div>
                             <div class="form-group">
                              <div class="col-md-12">
                                    <span>Плащането е по време на доставка!</span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <button type="submit" class="btn btn-primary btn-submit-fix">Поръчай сега!</button>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->
                   
                </div>
                
                </spring:form>
            </div>
    </div>
   <!-- Footer -->
        <%@include file="footer.jsp" %>	