function savePetition() {

    var check = $(".form-check-input:checked").val();

		
	var pname = $("#petionerName").val().trim();
	var relation = $("#relation").val().trim();
	var relationName = $("#relationName").val().trim();
	var age = $("#age").val().trim();
	var gender = $("#gender").val();
	var address = $("#address").val().trim();
	var prcaste = $("#prcaste").val();

	var prsubcaste = $("#prsubcaste").val();
	var district = $("#district").val();
	var mandal = $("#mandal").val();
	var village = $("#village").val();
	var pincode = $("#pincode").val().trim();
	var prMobile = $("#prMobile").val().trim();
	var prMail = $("#prMail").val().trim();
	var Identitype = $("#Identitype").val().trim();
	var prOtherid = $("#prOtherid").val().trim();
	var prProofId = $("#prProofId").val().trim();
	var prdoc = document.getElementById("prdoc");
	var photo = $("#photo").val();
	var signature = $("#signature").val();
	var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var regex = /^[a-zA-Z]+(\s+[a-zA-Z]+)*$/;
	var phoneRegex = /^[6-9]\d{9}$/;
    var newaddregex = /^[a-zA-Z0-9/(),+\-_.\s]+$/;



	var bprName = $("#bprName").val().trim();
	var bprProfession = $("#bprProfession").val().trim();
	var bprAddress = $("#bprAddress").val().trim();
	var bprMobile = $("#bprMobile").val().trim();
	var bprMail = $("#bprMail").val().trim();
	var Identitypeno = document.getElementById("Identitypeno").value;
	var bprotherid = document.getElementById("bprotherid").value;
	var bprProofNo = $("#bprProofNo").val().trim();
	var bid = document.getElementById("bid");
	var bSign = document.getElementById("bSign")

	//on behalf petitioner details 
	var bprpetionerName = $("#bprpetionerName").val().trim();
	var bprrelation = $("#bprrelation").val().trim();
	var bprrelationName = $("#bprrelationName").val().trim();
	var bprage = $("#bprage").val().trim();
	var bprgender = $("#bprgender").val();
	var bpraddress = $("#bpraddress").val().trim();
	var bprcaste = $("#bprcaste").val();
	var bprsubcaste = $("#bprsubcaste").val();
	var bprdistrict = $("#bprdistrict").val();
	var bprmandal = $("#bprmandal").val();
	var bprvillage = $("#bprvillage").val();
	var bprpincode = $("#bprpincode").val().trim();
	var bprprMobile = $("#bprprMobile").val().trim();
	var bprprMail = $("#bprprMail").val().trim();
	var brIdentitype = $("#brIdentitype").val().trim();
	var bprprProofType = $("#bprprProofType").val().trim();
	var bprprProofId = $("#bprprProofId").val().trim();
	var bprpetitiondoc = document.getElementById("bprpetitiondoc");
	var bprpetitonphoto = document.getElementById("bprpetitonphoto");
	var bprpetitionsign = document.getElementById("bprpetitionsign");

	if (check == "Y") {

		if (pname.length == 0) {
			document.getElementById("petionerName").focus();
			alert("Petitioner Name is required");
			return false;
		}
		if (regex.test(pname) == false) {
			document.getElementById("petionerName").focus();
			alert("Invalid Petitioner Name");
			return false;
		}

		if (relation == "0") {
			document.getElementById("relation").focus();
			alert("Relation Type is required.");
			return false;
		}
		if (relationName == "") {
			document.getElementById("relationName").focus();
			alert("Relation Name is required.");
			return false;
		}

		if (regex.test(relationName) == false) {
			document.getElementById("relationName").focus();
			alert("Invalid Relation Name");
			return false;
		}
		var ageInt = parseInt(age);
		if (age == "") {
			document.getElementById("age").focus();
			alert("Age is required");
			return false;
		}
		if (isNaN(ageInt)) {
			document.getElementById("age").focus();
			alert("Invalid Age");
			return false;
		}


		if (gender == "0") {
			alert("Select Gender");
			document.getElementById("gender").focus();
			return false;
		}
		
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

		if (prcaste == "0") {
			document.getElementById("prcaste").focus();
			alert("Select Caste");
			return false;
		}

		if (prcaste != "0") {
			if (prsubcaste == "0") {
				document.getElementById("prsubcaste").focus();
				alert("Select Sub Caste");
				return false;
			}
		}

		if (district == "0") {
			document.getElementById("district").focus();
			alert("Select Ditrict");
			return false;
		} if (mandal == "0") {
			document.getElementById("mandal").focus();
			alert("Select Mandal");
			return false;
		} if (village.length == 0) {
			document.getElementById("village").focus();
			alert("Village is required");
			return false;
		}
		if (regex.test(village) == false) {
			document.getElementById("village").focus();
			alert("Invalid Village");
			return false;
		}
		if (pincode == "") {
			document.getElementById("pincode").focus();
			alert("Pincode is required");
			return false;
		}
		if (pincode.length != 6) {
			document.getElementById("pincode").focus();
			alert("Invalid Pincode");
			return false;
		}
		if (isNaN(pincode)) {
			document.getElementById("pincode").focus();
			alert("Invalid Pincode");
			return false;
		}


		if (prMobile.length == 0) {
			alert("Alternate Mobile  Number is required");
			document.getElementById("prMobile").focus();
			return false;
		}

		if (phoneRegex.test(prMobile) == false) {
			alert("Not a valid mobile number");
			document.getElementById("pmobile").focus();
			return false;
		}


		if (prMail.length == 0) {
			alert("Email is required");
			document.getElementById("prMail").focus();
			return false;
		}

		if (emailRegex.test(prMail) == false) {
			alert("Enter a valid Email");
			document.getElementById("prMail").focus();
			return false;
		}

		if (Identitype == "0") {
			document.getElementById("Identitype").focus();
			alert("Identity type is required");
			return false;
		} if (Identitype == "O") {
			if (prOtherid == "") {
				document.getElementById("prOtherid").focus();
				alert("Other Identity type is required");
				return false;
			}
		}

		if (prProofId == "") {
			document.getElementById("prProofId").focus();
			alert("Identity Number is required");
			return false;
		}



		if (prdoc.value == "") {
			alert("Upload the Identity document");
			document.getElementById('prdoc').focus();
			return false;
		}
		if (photo.value == "") {
			alert("Upload Petitioner photograph");
			document.getElementById('photo').focus();
			return false;
		}
		if (signature.value == "") {
			alert("Upload Petitioner Signature");
			document.getElementById('signature').focus();
			return false;
		}

	}


	//behalf
	if (check=="N") 
		
	//on behalf


	{
		if (bprName.length == 0) {
			document.getElementById("bprName").focus();
			alert("Name of person who is applying on /r/nbehalf of the petitioner is required");
			return false;
		}
		if (regex.test(bprName) == false) {
			document.getElementById("bprName").focus();
			alert("Invalid on behalf petitioner name");
			return false;
		}

		if (bprProfession.length == 0) {
			document.getElementById("bprProfession").focus();
			alert("Designation/Profession is required");
			return false;
		}
		if (regex.test(bprProfession) == false) {
			document.getElementById("bprProfession").focus();
			alert("Invalid Designation/Profession");
			return false;
		}

        
		if (bprAddress.length == 0) {
			document.getElementById("bprAddress").focus();
			alert("Address is required");
			return false;
		}
		/*
		if (newaddregex.test(bprAddress) == false) {
			document.getElementById("bprAddress").focus();
			alert("Invalid Address");
			return false;
		}
*/
		if (bprMobile.length == 0) {
			alert("Mobile  Number is required");
			document.getElementById("bprMobile").focus();
			return false;
		}

		if (phoneRegex.test(bprMobile) == false) {
			alert("Not a valid mobile number");
			document.getElementById("bprMobile").focus();
			return false;
		}

		if (bprMail.length == 0) {
			alert("Email is required");
			document.getElementById("bprMail").focus();
			return false;
		}

		if (emailRegex.test(bprMail) == false) {
			alert("Enter a valid Email");
			document.getElementById("bprMail").focus();
			return false;
		}



		if (Identitypeno == "0") {
			document.getElementById("Identitypeno").focus();
			alert("Identity type is required");
			return false;
		} if (Identitypeno == "O") {
			if (bprotherid == "") {
				document.getElementById("bprotherid").focus();
				alert("Other Identity type is required");
				return false;
			}
		}

		if (bprProofNo == "") {
			document.getElementById("bprProofNo").focus();
			alert("Identity Number is required");
			return false;
		}
		if (bid.value == "") {
			alert("Upload the Identity document");
			document.getElementById('bid').focus();
			return false;
		}

		if (bSign.value == "") {
			alert("Upload  Signature");
			document.getElementById('bSign').focus();
			return false;
		}


		if (bprpetionerName.length == 0) {
			document.getElementById("bprpetionerName").focus();
			alert("Petitioner Name is required");
			return false;
		}
		if (regex.test(bprpetionerName) == false) {
			document.getElementById("bprpetionerName").focus();
			alert("Invalid Petitioner Name");
			return false;
		}

		if (bprrelation == "0") {
			document.getElementById("bprrelation").focus();
			alert("Relation Type is required.");
			return false;
		}
		if (bprrelationName == "") {
			document.getElementById("bprrelationName").focus();
			alert("Relation Name is required.");
			return false;
		}

		if (regex.test(bprrelationName) == false) {
			document.getElementById("bprrelationName").focus();
			alert("Invalid Relation Name");
			return false;
		}
		var ageInt = parseInt(bprage);
		if (bprage == "") {
			document.getElementById("bprage").focus();
			alert("Age is required");
			return false;
		}
		if (isNaN(ageInt)) {
			document.getElementById("bprage").focus();
			alert("Invalid Age");
			return false;
		}


		if (bprgender == "0") {
			alert("Select Gender");
			document.getElementById("bprgender").focus();
			return false;
		}




		if (bpraddress.length == 0) {
			document.getElementById("bpraddress").focus();
			alert("Address is required");
			return false;
		}
		if (newaddregex.test(bpraddress) == false) {
			document.getElementById("bpraddress").focus();
			alert("Invalid Address");
			return false;
		}

		if (bprcaste == "0") {
			document.getElementById("bprcaste").focus();
			alert("Select Caste");
			return false;
		}

		if (bprsubcaste == "0") {
			document.getElementById("bprsubcaste").focus();
			alert("Select Sub Caste");
			return false;
		}
		if (bprdistrict == "0") {
			document.getElementById("bprdistrict").focus();
			alert("Select Ditrict");
			return false;
		} if (bprmandal == "0") {
			document.getElementById("bprmandal").focus();
			alert("Select Mandal");
			return false;
		} if (bprvillage.length == 0) {
			document.getElementById("bprvillage").focus();
			alert("Village is required");
			return false;
		}
		if (regex.test(bprvillage) == false) {
			document.getElementById("bprvillage").focus();
			alert("Invalid Village");
			return false;
		}
		if (bprpincode == "") {
			document.getElementById("bprpincode").focus();
			alert("Pincode is required");
			return false;
		}
		if (bprpincode.length != 6) {
			document.getElementById("bprpincode").focus();
			alert("Invalid Pincode");
			return false;
		}
		if (isNaN(bprpincode)) {
			document.getElementById("bprpincode").focus();
			alert("Invalid Pincode");
			return false;
		}



		if (bprprMobile.length == 0) {
			alert("Alternate Mobile  Number is required");
			document.getElementById("bprprMobile").focus();
			return false;
		}

		if (phoneRegex.test(bprprMobile) == false) {
			alert("Not a valid mobile number");
			document.getElementById("bprprMobile").focus();
			return false;
		}


		if (bprprMail.length == 0) {
			alert("Email is required");
			document.getElementById("bprprMail").focus();
			return false;
		}

		if (emailRegex.test(bprprMail) == false) {
			alert("Enter a valid Email");
			document.getElementById("bprprMail").focus();
			return false;
		}

		if (brIdentitype == "0") {
			document.getElementById("brIdentitype").focus();
			alert("Identity type is required");
			return false;
		} if (brIdentitype == "O") {
			if (bprprProofType == "") {
				document.getElementById("bprprProofType").focus();
				alert("Other Identity type is required");
				return false;
			}
		}

		if (bprprProofId == "") {
			document.getElementById("bprprProofId").focus();
			alert("Identity Number is required");
			return false;
		}



		if (bprpetitiondoc.value == "") {
			alert("Upload the Identity document");
			document.getElementById('bprpetitiondoc').focus();
			return false;
		}
		if (bprpetitonphoto.value == "") {
			alert("Upload Petitioner photograph");
			document.getElementById('bprpetitonphoto').focus();
			return false;
		}
		if (bprpetitionsign.value == "") {
			alert("Upload Petitioner Signature");
			document.getElementById('bprpetitionsign').focus();
			return false;
		}

	}

	document.register.method = "POST";
	document.register.action = "savePetition.htm";
	document.register.submit();


}

function validDoc(id) {

	var doc = document.getElementById(id);
	var filepath = doc.value;

	var allowedExtensions = /(\.pdf)$/i;


	if (!allowedExtensions.exec(filepath)) {
		alert('Invalid file type');
		doc.value = '';

		return false;
	}

	if (doc.files[0].size > 1024 * 1024) {
		alert('Maximum file size exceeded.');
		doc.value = '';
		return false;
	}


}

function validSign(id) {
	var doc = document.getElementById(id);
	var filepath = doc.value;
	var idxDot = filepath.lastIndexOf(".") + 1;

	var extFile = filepath.substr(idxDot, filepath.length).toLowerCase();

	if (extFile == "jpg" || extFile == "jpeg") {

	} else {
		alert("Only jpg/jpeg files are allowed");
		document.getElementById(id).focus();
		doc.value = '';
		return false;
	}

	if (doc.files[0].size > 100 * 1024) {
		alert('Maximum file size exceeded.');
		doc.value = '';
		return false;
	}


}

function validPhoto(id) {
	var doc = document.getElementById(id);
	var filepath = doc.value;
	var idxDot = filepath.lastIndexOf(".") + 1;

	var extFile = filepath.substr(idxDot, filepath.length).toLowerCase();

	if (extFile == "jpg" || extFile == "jpeg") {

	} else {
		alert("Only jpg/jpeg files are allowed");
		document.getElementById(id).focus();
		doc.value = '';
		return false;
	}

	if (doc.files[0].size > 200 * 1024) {
		alert('Maximum file size exceeded.');
		doc.value = '';
		return false;
	}
}