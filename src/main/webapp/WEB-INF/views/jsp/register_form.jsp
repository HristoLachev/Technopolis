<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!-- Include header -->
<%@include file="header.jsp"%>



<div class="container-fluid">
	<section class="container">
		<spring:form id="registerForm" method="POST" action="./register"
			novalidate="novalidate" onsubmit="return checkForm(this);"
			commandName="account">
			<div class="container-page">
				<div class="col-md-6">
					<h3 class="dark-grey">Регистрация</h3>


					<div class="form-group col-lg-12">
						<label>Емайл</label>
						<spring:input type="email" name="email" class="form-control"
							id="email" value="" placeholder="Enter a valid email adress!"
							required="" path="email" />
					</div>

					<div class="form-group col-lg-6">
						<label>Име</label>
						<spring:input type="text" name="firstName" class="form-control"
							id="firstName" required="" value="" path="firstName" />
					</div>

					<div class="form-group col-lg-6">
						<label>Фамилия</label>
						<spring:input type="text" name="lastName" class="form-control"
							id="lastName" required="" value="" path="lastName" />
					</div>

					<div class="form-group col-lg-6">
						<label>Парола</label>
						<spring:input type="password" name="password1"
							class="form-control" id="password1" required="" value=""
							path="password" />
					</div>

					<div class="form-group col-lg-6">
						<label>Повторете паролата</label> <input type="password"
							name="password2" class="form-control" id="password2"
							 required="" value=""
							placeholder="Please confirm password!"
							onchange="form.password2.pattern = this.value;">
					</div>

					<div class="form-group col-lg-6">
						<label>Телефон</label>
						<spring:input type="text" name="" path="phoneNumber"
							class="form-control" id="phoneNumber" required="" value="" />
					</div>



				</div>

				<div class="col-md-6">
					<h3 class="dark-grey">	</h3>
					<p>Като натиснете "Регистрация" се съгласявате с <a href="./term">общите условия</a>
					<p>Ако сте нов клиент, моля регистрирайте се, за да можете да
						правите поръчки на наши продукти. С посочването на E-mail адрес и
						парола ще създадете свой личен потребителски акаунт, който освен
						възможността за пазаруване.</p>
					

					<button type="submit" class="btn btn-primary">Регистрация</button>
				</div>
			</div>
		</spring:form>
	</section>
</div>

<!-- Footer -->
<%@include file="footer.jsp"%>