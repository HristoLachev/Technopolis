<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">
</head>
<body>
	<!-- Include header -->
	<%@include file="header.jsp"%>

	<!-- Login form -->
	<div class="row">
		<div class="col-md-8">
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
									<form id="loginForm" method="POST" action="./Login"
										novalidate="novalidate">
										<div class="form-group">
											<label for="username" class="control-label">Username</label>
											<input type="text" class="form-control" id="username"
												name="username" value="" required=""
												title="Please enter you username"
												placeholder="example@gmail.com"> <span
												class="help-block"></span>
										</div>
										<div class="form-group">
											<label for="password" class="control-label">Password</label>
											<input type="password" class="form-control" id="password"
												name="password" value="" required=""
												title="Please enter your password"> <span
												class="help-block"></span>
										</div>
										<div id="loginErrorMsg" class="alert alert-error hide">Wrong
											username or password</div>
										<div class="checkbox">
											<label> <input type="checkbox" name="remember"
												id="remember"> Remember login
											</label>
											<p class="help-block">(if this is a private computer)</p>
										</div>
										<button type="submit" class="btn btn-success btn-block">Login</button>
										<a href="/forgot/" class="btn btn-default btn-block">Help
											to login</a>
									</form>
								</div>
							</div>
							<div class="col-md-6">
								<p class="lead">
									Register now for <span class="text-success">FREE</span>
								</p>
								<ul class="list-unstyled" style="line-height: 2">
									<li><span class="fa fa-check text-success"></span> See all
										your orders</li>
									<li><span class="fa fa-check text-success"></span> Fast
										re-order</li>
									<li><span class="fa fa-check text-success"></span> Save
										your favorites</li>
									<li><span class="fa fa-check text-success"></span> Fast
										checkout</li>

								</ul>
								<p>
									<a href="./register_form.jsp" class="btn btn-info btn-block">Yes
										please, register now!</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>