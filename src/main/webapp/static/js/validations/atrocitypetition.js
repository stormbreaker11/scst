
function atrocitypetition() {
	var Typeofatrocity = $("#Typeofatrocity").val();
	var offence_date = $("#offence_date").val();
	var offence_place = $("#offence_place").val().trim();
	var off_district = $("#off_district").val();
	var off_mandal = $("#off_mandal").val();
	var ps_complaint = $("#ps_complaint").val()
	var ps_name = $("#ps_name").val().trim();
	var ps_district = $("#ps_district").val()
	var ps_mandal = $("#ps_mandal").val()
	var ps_village = $("#ps_village").val().trim();
	var fir_no = $("#fir_no").val().trim();
	var appeal = $("#appeal").val().trim();
	var pet_detail = $("#pet_detail").val().trim();

	
// var regex=/^[a-zA-z]+([\s][a-zA-Z]+)*$/;
 var nameRegex = /^[A-Za-z]+(\s[A-Za-z]+)*$/;
 var appealRegex = /^[A-Za-z0-9-.,@()/]+(\s[A-Za-z0-9-.,@()/]+)*$/; 
 var firRegex = /^[0-9a-zA-Z]+$/; //it doesn't allow space.


	if (Typeofatrocity == "0") {  //Typeofatrocity
		document.getElementById("Typeofatrocity").focus();
		alert("Select Type of Atrocity");
		return false;
	}
	if (offence_date == "") {
		alert("Date of Offense is required");
		document.getElementById("offence_date").focus();
		return false;
	}
	if (offence_place.length == 0) {
		document.getElementById("offence_place").focus();
		alert("Place of Incident/Offense is required");
		return false;
	}
	if (nameRegex.test(offence_place) == false) {
		alert("Invalid Place of Incident/Offense");
		document.getElementById("offence_place").focus();
		return false;
	}
	if (off_district == "0") {
		document.getElementById("off_district").focus();
		alert("Select District");
		return false;
	}

	if (off_mandal == "0") {
		document.getElementById("off_mandal").focus();
		alert("Select Mandal");
		return false;
	}
	
	if (ps_complaint == "0") {
		document.getElementById("ps_complaint").focus();
		alert("Select Have you Lodged a Police Complaint");
		return false;
	}
	//Police Complaint
	if (ps_complaint == "1") 
	{
		if (ps_name.length == 0) {
		document.getElementById("ps_name").focus();
		alert("Place of Police station is required");
		return false;
	}
	if (nameRegex.test(ps_name) == false) {
		alert("Invalid Place of Police station");
		document.getElementById("ps_name").focus();
		return false;
	}	
	if (ps_district == "0") {
		document.getElementById("ps_district").focus();
		alert("Select District");
		return false;
	}

	if (ps_mandal == "0") {
		document.getElementById("ps_mandal").focus();
		alert("Select Mandal");
		return false;
	}	
	if (ps_village.length == 0) {
		document.getElementById("ps_village").focus();
		alert("Village Name is required");
		return false;
	}
	if (nameRegex.test(ps_village) == false) {
		alert("Invalid  Village Name");
		document.getElementById("ps_village").focus();
		return false;
	}	
	if (fir_no.length == 0) {
		document.getElementById("fir_no").focus();
		alert("FIR Number is required");
		return false;
	}
	if (firRegex.test(fir_no) == false) {
		alert("Invalid  FIR Number");
		document.getElementById("fir_no").focus();
		return false;
	}	
	}
	
	if (appeal.length == 0) {
		document.getElementById("appeal").focus();
		alert("Appeal/prayer of the petitioner is required");
		return false;
	}
	if (appealRegex.test(appeal) == false) {
		alert("Invalid Appeal/prayer of the petitioner");
		document.getElementById("appeal").focus();
		return false;
	}	
	
	if (pet_detail.length == 0) {
		document.getElementById("pet_detail").focus();
		alert("Petition in Detail is required");
		return false;
	}
	if (appealRegex.test(pet_detail) == false) {
		alert("Invalid  Petition in Detail");
		document.getElementById("pet_detail").focus();
		return false;
	}	
return true;
}