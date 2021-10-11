/**
 * karthik
 */

function landpetition() {


	var landKind = $("#landKind").val();
	var pitition1 = $("#pitition1").val();
	var olandtext = $("#olandtext").val();
	var landDistrict = $("#landDistrict").val();
	var landmandal = $("#landmandal").val();
	var landvillage = $("#landvillage").val().trim();
	var passbookNo = $("#passbookNo").val().trim();
	var surveyNo = $("#surveyNo").val().trim();
	var extentOfLand = $("#extentOfLand").val().trim();
	var units = $("#units").val().trim();

 var regex=/^[a-zA-z]+([\s][a-zA-Z]+)*$/;


	if (landKind == "0") {
		document.getElementById("landKind").focus();
		alert("Select Kind of Land");
		return false;
	}
	if (pitition1 == "0") {
		alert("Select Type of Land");
		document.getElementById("pitition1").focus();
		return false;
	}
	if (pitition1 == "O") {
		document.getElementById("olandtext").focus();
		alert("Other land is required");
		return false;
	}

	if (landDistrict == "0") {
		document.getElementById("landDistrict").focus();
		alert("Select District");
		return false;
	}

	if (landmandal == "0") {
		document.getElementById("landmandal").focus();
		alert("Select Mandal");
		return false;
	}

	if (landvillage.length == 0) {
		document.getElementById("landvillage").focus();
		alert("Village is required");
		return false;
	}
	if (regex.test(landvillage) == false) {
		alert("Invalid Village");
		document.getElementById("landvillage").focus();
		return false;
	}
	if (passbookNo.length == 0) {
		document.getElementById("passbookNo").focus();
		alert("Patta Passbook number is required");
		return false;
	}

	var bankregex = /^[a-zA-Z0-9]*$/;
	if (bankregex.test(passbookNo) == false) {
		alert("Enter a valid Patta Passbook number");
		document.getElementById("passbookNo").focus();
		return false;
	}

   if (surveyNo.length == 0) {
		document.getElementById("surveyNo").focus();
		alert("Survey number is required");
		return false;
	}

	var bankregex = /^[a-zA-Z0-9]*$/;
	if (bankregex.test(surveyNo) == false) {
		alert("Enter a valid Survey number");
		document.getElementById("surveyNo").focus();
		return false;
	}
	

	var decimalregex = /^[0-9]+\.?[0-9]*$/;
	
	 if (extentOfLand.length == 0) {
		document.getElementById("extentOfLand").focus();
		alert("Extend of land is required");
		return false;
	}

	if (decimalregex.test(extentOfLand) == false) {
		alert("Invalid Extend of land");
		document.getElementById("extentOfLand").focus();
		return false;
	}
	if (units == "0") {
		document.getElementById("units").focus();
		alert("Select Units");
		return false;
	}

	
}