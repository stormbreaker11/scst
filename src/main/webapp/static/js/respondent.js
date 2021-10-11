/**
 * karthik
 */

function respondentValidation() {

	var respondentdetails = $("#respondentdetails").val();
	var respName = $("#respName").val().trim();
	var castevalue = $("#castevalue").val();
	var respProffesion = $("#respProffesion").val();
	var district = $("#district").val();
	var address = $("#address").val();
	var mobile = $("#mobile").val();
	var email = $("#email").val();
	var regex = /^[a-zA-z]+([\s][a-zA-Z]+)*$/;
	var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var phoneRegex = /^[6-9]\d{9}$/;
	
	if (respondentdetails == "0") {
		document.getElementById("respondentdetails").focus();
		alert("Select Type of Respondent");
		return false;
	}
	if (respName.length == 0) {
		document.getElementById("respName").focus();
		alert("Name of the respondent is required");
		return false;
	}
	if (regex.test(respName) == false) {
		document.getElementById("respName").focus();
		alert("Invalid name of the respondent");
		return false;
	}

	if (respondentdetails == "P") {
		if (castevalue == "0") {
			alert("Select Caste");
			document.getElementById("castevalue").focus();
			return false;
		}
	}
	if (respProffesion.length == 0) {
		document.getElementById("respProffesion").focus();
		alert("Designation/Profession is required");
		return false;
	}
	if (regex.test(respProffesion) == false) {
		document.getElementById("respProffesion").focus();
		alert("Invalid Designation/Profession");
		return false;
	}

	if (district == "0") {
		document.getElementById("district").focus();
		alert("Select District");
		return false;
	}

	var newaddregex = /^[a-zA-Z0-9/(),+\-_.\s]+$/;
	if (address.length == 0) {
		document.getElementById("address").focus();
		alert("Address is required");
		return false;
	}

	if (newaddregex.test(address) == false) {
		document.getElementById("address").focus();
		alert("Invalid Address");
		return false;
	}

	if (mobile.length == 0) {
		alert("Mobile  Number is required");
		document.getElementById("mobile").focus();
		return false;
	}

	if (phoneRegex.test(mobile) == false) {
		alert("Not a valid mobile number");
		document.getElementById("mobile").focus();
		return false;
	}


	if (email.length == 0) {
		alert("Email is required");
		document.getElementById("email").focus();
		return false;
	}

	if (emailRegex.test(email) == false) {
		alert("Enter a valid Email");
		document.getElementById("email").focus();
		return false;
	}


}