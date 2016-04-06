

  document.addEventListener("DOMContentLoaded", function() {

    // JavaScript form validation

    var checkPassword = function(str)
    {
      var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
      return re.test(str);
    };

    var checkForm = function(e)
    {
      if(this.email.value == "") {
        alert("Error: Email cannot be blank!");
        this.email.focus();
        e.preventDefault(); // equivalent to return false
        return;
      }
      if(this.password1.value != "" && this.password1.value==this.password2.value) {
        if(!checkPassword(this.password1.value)) {
          alert("The password you have entered is not valid!");
          this.password1.focus();
          e.preventDefault();
          return;
        }
      } else {
        alert("Error: Please check that you've entered and confirmed your password!");
        this.password1.focus();
        e.preventDefault();
        return;
      }
      alert("Both email and password are VALID!");
    };

    var myForm = document.getElementById("registerForm");
    myForm.addEventListener("submit", checkForm, true);

    // HTML5 form validation

    var supports_input_validity = function()
    {
      var i = document.createElement("input");
      return "setCustomValidity" in i;
    }

    if(supports_input_validity()) {
      var usernameInput = document.getElementById("email");
      usernameInput.setCustomValidity(usernameInput.title);

      var password1Input = document.getElementById("password1");
      pwd1Input.setCustomValidity(pwd1Input.title);

      var password2Input = document.getElementById("password2");

      // input key handlers

      usernameInput.addEventListener("keyup", function() {
        usernameInput.setCustomValidity(this.validity.patternMismatch ? usernameInput.title : "");
      }, false);

      password1Input.addEventListener("keyup", function() {
        this.setCustomValidity(this.validity.patternMismatch ? password1Input.title : "");
        if(this.checkValidity()) {
          password2Input.pattern = this.value;
          password2Input.setCustomValidity(password2.title);
        } else {
          password2Input.pattern = this.pattern;
          password2.setCustomValidity("");
        }
      }, false);

      passrowd2Input.addEventListener("keyup", function() {
        this.setCustomValidity(this.validity.patternMismatch ? password2Input.title : "");
      }, false);

    }

  }, false);

