<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!-- Include header -->
<%@include file="header.jsp"%>
<script type="text/javascript">
	function checkForm(form) {
		  function checkPassword(str)
		  {
		    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
		    return re.test(str);
		  }

		  function checkForm(form)
		  {
		    if(form.email.value == "") {
		      alert("Error: Email cannot be blank!");
		      form.email.focus();
		      return false;
		    }
		    if(form.password1.value != "" && form.password1.value == form.password2.value) {
		      if(!checkPassword(form.password1.value)) {
		        alert("The password you have entered is not valid!");
		        form.password1.focus();
		        return false;
		      }
		    } else {
		      alert("Error: Please check that you've entered and confirmed your password!");
		      form.password1.focus();
		      return false;
		    }
		    return true;
		  }
	}
</script>



<div class="container-fluid">
	<section class="container">
		<spring:form id="registerForm" method="POST" action="./register"
					novalidate="novalidate" onsubmit="return checkForm(this);" commandName="account">
		<div class="container-page">
			<div class="col-md-6">
				<h3 class="dark-grey">Регистрация</h3>
				

					<div class="form-group col-lg-12">
						<label>Емайл</label> <spring:input type="email" name="email"
							class="form-control" id="email"  value=""
							placeholder="Enter a valid email adress!" required=""
							path="email"/>
					</div>

					<div class="form-group col-lg-6">
						<label>Име</label> <spring:input type="text" name="firstName"
							class="form-control" id="firstName"  required="" value="" path="firstName"/>
					</div>

					<div class="form-group col-lg-6">
						<label>Фамилия</label> <spring:input type="text" name="lastName"
							class="form-control" id="lastName" required=""  value=""
							path="lastName"/>
					</div>

					<div class="form-group col-lg-6">
						<label>Парола</label> <input type="password" name="password1"
							class="form-control" id="password1" value="" />
					</div>

					<div class="form-group col-lg-6">
						<label>Повторете паролата</label> <spring:input type="password"
							name="password2" class="form-control" id="password2" path="password" required=""
							value="" placeholder="Please confirm password!" 
							 onchange="form.password2.pattern = this.value;"/>
					</div>

					<div class="form-group col-lg-6">
						<label>Телефон</label> <spring:input type="text" name="" path="phoneNumber"
							class="form-control" id="phoneNumber" required="" value=""/>
					</div>

				

			</div>

			<div class="col-md-6">
				<h3 class="dark-grey">Terms and Conditions</h3>
				<p>By clicking on "Register" you agree to The Company's' Terms
					and Conditions</p>
				<p>While rare, prices are subject to change based on exchange
					rate fluctuations - should such a fluctuation happen, we may
					request an additional payment. You have the option to request a
					full refund or to pay the new price. (Paragraph 13.5.8)</p>
				<p>Should there be an error in the description or pricing of a
					product, we will provide you with a full refund (Paragraph 13.5.6)
				</p>
				<p>Acceptance of an order by us is dependent on our suppliers
					ability to provide the product. (Paragraph 13.5.6)</p>

				<button type="submit" class="btn btn-primary">Register</button>
			</div>
		</div>
		</spring:form>
	</section>
</div>

<!-- Footer -->
<%@include file="footer.jsp"%>