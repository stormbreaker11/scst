function validatePetitioner() {



var pname=$("#petitionerName").val().trim();
var relation=$("#relation").val().trim();
var relationName=$("#relationName").val().trim();
var age=$("#age").val().trim();
var gender=$("#gender").val();
var address=$("#address").val().trim();
var prcaste=$("#prcaste").val();
var prcaste=$("#prcaste").val();
var prsubcaste=$("#prsubcaste").val();
var district=$("#district").val();
var mandal=$("#mandal").val();
var village=$("#village").val();
var pincode=$("#pincode").val().trim();
var prMobile=$("#prMobile").val().trim();
var prMail=$("#prMail").val().trim();
var Identitype=$("#Identitype").val().trim();
var prOtherid=$("#prOtherid").val().trim();
var prProofId=$("#prProofId").val().trim();
var prdoc=$("#prProofId").val();
var photo=$("#photo").val();
var signature=$("#signature").val();
//on behalf

var  bprName=$("#bprName").val().trim();
var  bprProfession=$("#bprProfession").val().trim();
var  bprAddress=$("#bprProfession").val().trim();
var  bprMobile=$("#bprMobile").val().trim();
var  bprMail=$("#bprMail").val().trim();
var  bprProofId=$("#bprProofId").val().trim();
var  bprProofNo=$("#bprProofNo").val().trim();
var  bid=$("#bid").val();
var  bSign=$("#bSign").val();

//on behalf petitioner details 
var bprpetionerName=$("#bprpetionerName").val().trim();
var bprrelation=$("#bprrelation").val().trim();
var bprrelationName=$("#bprrelationName").val().trim();
var bprage=$("#bprage").val().trim();
var bprgender=$("#bprgender").val();
var bpraddress=$("#bpraddress").val().trim();
var bprcaste=$("#bprcaste").val();
var bprsubcaste=$("#bprsubcaste").val();
var bprdistrict=$("#bprdistrict").val();
var bprmandal=$("#bprmandal").val();
var bprvillage=$("#bprvillage").val();
var bprpincode=$("#bprpincode").val().trim();
var bprprMobile=$("#bprprMobile").val().trim();
var bprprMail=$("#bprprMail").val().trim();
var bprprProofType=$("#bprprProofType").val().trim();
var bprprProofType=$("#bprprProofType").val().trim();
var bprprProofId=$("#bprprProofId").val().trim();
var bprpetitiondoc=$("#bprpetitiondoc").val();
var bprpetitonphoto=$("#bprpetitonphoto").val();
var bprpetitionsign=$("#bprpetitionsign").val();



var regex = /^[a-zA-Z]+(\s+[a-zA-Z]+)*$/;

if (pname.length == 0) {
		document.getElementById("petitionerName").focus();
		alert("Petitioner Name is required.");
		return false;
	}
	if (regex.test(pname) == false) {
		document.getElementById("petitionerName").focus();
		alert("Invalid name.");
		return false;
	}

	if (relation == "0") {
		document.getElementById("relation").focus();
		alert("Relation Type is required.");
		return false;
	}
	if (relationName == "") {
		document.getElementById("relationName").focus();
		alert("Relation Type is required.");
		return false;
	}
	if (gender == "0") {
		alert("Please Select Gender.");
		document.getElementById("gender").focus();
		return false;
	}

	if (dob.length == 0) {
		document.getElementById("dob").focus();
		alert("Date of birth is required.");
		return false;
	}

	var ageInt = parseInt(age);
	if (ageInt < 21) {
		document.getElementById("dob").focus();
		alert("Age must be greater than 21 Years");
		return false;
	}

	if (blood == "00") {
		document.getElementById("blood").focus();
		alert("Blood Group is required.");
		return false;
	}
}