
function servicepetition() {
	
	var service_type = $("#service_type").val();
	var oth_name = $("#oth_name").val().trim();
	var appeal = $("#appeal").val().trim();
	var pet_detail = $("#pet_detail").val().trim();

 var nameRegex = /^[A-Za-z]+(\s[A-Za-z]+)*$/;
 var appealRegex = /^[A-Za-z0-9-.,@()/]+(\s[A-Za-z0-9-.,@()/]+)*$/; 

	if (service_type == "0") {  //Typeofatrocity
		document.getElementById("service_type").focus();
		alert("Select Type of Service");
		return false;
	}

	if (service_type == "3") 
	{
		if (oth_name.length == 0) {
		document.getElementById("oth_name").focus();
		alert("Other Service is required");
		return false;
	}
	if (nameRegex.test(oth_name) == false) {
		alert("Invalid Other Service");
		document.getElementById("oth_name").focus();
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