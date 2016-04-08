<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>

<!-- Include header -->
<jsp:include page="${request.contextPath}/header"></jsp:include>
<body>



	<!-- Login form -->
	<div class="row">
		<div class="col-md-8 col-lg-8 col-sm-8">
			<div id="login-overlay" class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">

						<h4 class="modal-title" id="myModalLabel">Login to
							tehnopolis.bg</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-6">
								<div class="well">
									<spring:form id="loginForm" method="POST" action="./login"
										novalidate="novalidate" commandName="account">
										<div class="form-group">
											<label for="username" class="control-label">Имeйл
												адрес</label>
											<spring:input type="text" class="form-control" id="email"
												name="email" value="" required=""
												title="Please enter you email"
												placeholder="example@gmail.com" path="email" />
											<span class="help-block"></span>
										</div>
										<div class="form-group">
											<label for="password" class="control-label">Парола</label>
											<spring:input type="password" class="form-control"
												id="password" name="password" value="" required=""
												title="Please enter your password" path="password" />
											<span class="help-block"></span>
										</div>
										
										<div id="loginErrorMsg" class="alert alert-error hide">Wrong
											username or password</div>
											
										<div class="checkbox">
											<label> <input type="checkbox" name="remember"
												id="remember"> Запомни ме!
											</label>
											<p class="help-block">(if this is a private computer)</p>
										</div>
										<button type="submit" class="btn btn-success btn-block">Вход</button>
										<!--  	<a href="/forgot/" class="btn btn-default btn-block">Help
											to login</a>-->
									</spring:form>
								</div>
							</div>
							<div class="col-md-6">
								<p class="lead">
									Регистрирай се <span class="text-success">СЕГА</span>
								</p>
								<ul class="list-unstyled" style="line-height: 2">
									<li><span class="fa fa-check text-success"></span> Виж
										всичките си поръчки</li>
									<li><span class="fa fa-check text-success"></span> Запази
										любими</li>
									<li><span class="fa fa-check text-success"></span> Лесно и
										удобно</li>
									<li>&nbsp;</li>
									<li>&nbsp;</li>
									<li>&nbsp;</li>


								</ul>
								<p>
									<a href="./register" class="btn btn-info btn-block">Искам
										да се регистрирам сега!</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	

	<!-- Footer -->
	<%@include file="footer.jsp"%>