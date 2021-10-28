
function generalpetition() {
	
	var appeal = $("#appeal").val().trim();
	var pet_detail = $("#pet_detail").val().trim();

 var appealRegex = /^[A-Za-z0-9-.,@()/]+(\s[A-Za-z0-9-.,@()/]+)*$/; 
	
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