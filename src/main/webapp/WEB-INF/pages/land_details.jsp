
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<%
	response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
response.setHeader("Cache-Control", "private");
response.setHeader("Pragma", "no-cache");
response.addHeader("Cache-Control", "post-check=0, pre-check=0");
response.setDateHeader("Expires", 0);
%>
<title>SC-ST Commission</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/static/css/header.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/app.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/images/Telengana_State.png"
	rel="icon">

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/style_smenu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/panel.css">
<link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/script.js"></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<!------ Include the above in your HEAD tag ---------->
<style>
.panel-primary>.panel-heading {
	color: rgb(255, 255, 255);
	background: #2d3990;
	background-image: linear-gradient(to left, #6b59cabf, #05246b00 20%, #e91e1e00 82%,
		#6858c8b8);
	border-color: #2d3990;
}

.panel-body


 


.btn




:not


 


(
.btn-block


 


)
{
font-size




:


 


0
px




;
width




:


 


215
px




;
margin-bottom




:


 


18
px




;
padding-top




:


 


5
px




;
height




:


 


100
px




;
}

/* .container1 {
            width: 900px;
            border: 2px solid rgb(43, 55, 158);
            margin: 33px auto;
	    padding :left 30px;	
	    padding-bottom: 2px;
	    padding-top: 25px;
	    border-radius: 30px;
        } */
.Button {
	alighn: Center;
}

.chosen-container-single .chosen-single {
	background: white !important;
	height: 33px !important;
	padding: 5px;
}

.title1 {
margin-left: 10px;
margin-right: 10px;
	font-size: 15px;
	padding-top: 6px;
	height: 35px;
	background: #2d3990;
	background-image: linear-gradient(to left, #6b59cabf, #05246b00 20%, #e91e1e00 82%,
		#6858c8b8);
	text-align: left;
	color: white;
	
}
</style>
<body  style="margin-left: 20px; margin-right: 20px;">

			
<h1 align="center" style="color: #2d3990;" >Petition - Land</h1>
		<div class="col-md-12">
                          
                        <div class="title1"  >
													<b style="padding-left: 5px;">Land Details</b>
													
												</div>
												<br>
												<div class="row">
												<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Kind
													of Land <span class="star">*</span></label>
												<div class="col-md-6">
													<select class="form-control SelectStyle"
														id="landKind" path="landKind">
														<option value="0">--Select--
														</option>
														<option value="1">Agricultural
															land
														</option>
														<option value="1" >Housing
															Land
														</option>
														<option value="1" >Forest
															Land
														</option>
													</select>
												</div>
											</div></div>
										
										<div class="row from group">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Type
													of Land <span class="star">*</span></label>
												<div class="col-md-6">
													<select class="form-control SelectStyle"
														id="pitition1" path="landType">
														<option value="0">--Select--
														</option>
														<option
															value="pland">
															Patta
															land
														</option>
														<option
															value="pland">
															Govt.
															Assigned
															land
														</option>
														<option
															value="oland">
															Other
															Land
														</option>
													</select>
												</div>
											</div>
										</div>
												<br>
                        <div class="Petition170s1" id="land">
										
									</div>
                        <div class="ppetioner" id="pland">
										
										<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select District <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="landDistrict" name="landDistrict">
<option value="0">--Select--</option>
<option value="1" >Hyderabad</option>
<option value="2">Rangareddy</option>
<option value="3" >Nizamabad</option>
<option value="4" >Mahabubnagar</option>

</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select Mandal <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="landmandal" path="landmandal">
<option value="0" >--Select--</option>
<option value="0">Mandal-1</option>
<option>Mandal-2</option>
<option >Mandal-3</option>
<option >AMBERPET</option>
<option >HIMAYATNAGAR</option>
<option >Nampally</option>
<option >Vikarabad</option>
<option >Ashifabad</option>
<option >Adilabad</option>
<option >Kotpally</option>
<option >Bhadradree</option>

</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Revenue Village  </label>
<div class="col-md-6">
<select class="form-control SelectStyle" name="landvillage" id="landvillage">
<option value="0">--Select--</option>
<option value="1" >Village-1</option>
<option value="2" >Village-2</option>
<option value="3" >Village-3</option>
</select>
</div>
</div>
</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Patta Passbook
														number</label>
													<div
														class="col-md-6">
														<input type="text" id="passbookNo" name="passbookNo"
															placeholder=" Patta number"
															class="form-control" maxlength="10" >
													</div>
												</div>
											</div>

											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Survey
														number
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Survey number" maxlength="15"  id="surveyNo" name="surveyNo"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Extent
														of land
													</label>
													<div class="col-md-3">
														<input type="text"
															placeholder="" id="extentOfLand" name="extentOfLand" 
															class="form-control">
													</div>	
													<div class="col-md-0">
													
<select class="form-control SelectStyle" id="" style="width: 125px;">
<option value="0" >--Select--</option>
<option value="1" >Acre</option>
<option value="2" >Gunta</option>
<option value="3" >Square yards</option>
</select>
</div>
																				
																					
																					</div>
																					<div class="col-md-2">
													<div class="btn btn-primary"
													style="text-align: left;" id="addmore" >
														+ Add More
												</div>
							</div>			
																					
											</div>
										</div>
										
                        
                        
                        <div class="otherland" id="oland" style="display: none;">
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Others
													Land <span class="star">*</span></label>
												<div class="col-md-6">
													<input type="text"
														placeholder=" Type of land"
														class="form-control">
												</div>
											</div>
										</div>
										
										<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select District <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Hyderabad</option>
<option>Rangareddy</option>
<option >Nizamabad</option>
<option >Mahabubnagar</option>
<option >Medak</option>
<option >Nalgonda</option>
<option >Warangal</option>
<option >Karimnagar</option>
<option >Adilabad</option>
<option >Khammam</option>
<option >Khammam</option>
<option>Medchal</option>
<option>Vikarabad</option>
<option >Sangareddy</option>
<option >Siddipet</option>
<option >Hanmakonda</option>
<option >Nagakarnool</option>
<option >Yadadri</option>
<option >Komaram-bheem</option>
</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select Mandal <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Mandal-1</option>
<option>Mandal-2</option>
<option >Mandal-3</option>
<option >AMBERPET</option>
<option >HIMAYATNAGAR</option>
<option >Nampally</option>
<option >Vikarabad</option>
<option >Ashifabad</option>
<option >Adilabad</option>
<option >Kotpally</option>
<option >Bhadradree</option>

</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Revenue Village  <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Village-1</option>
<option>Village-2</option>
<option>Village-3</option>
</select>
</div>
</div>
</div>
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Patta Passbook
													number</label>
												<div class="col-md-6">
													<input type="text"
														placeholder=" Patta number"
														class="form-control">
												</div>
											</div>
										</div>

										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Survey
													number <span class="star">*</span></label>
												<div class="col-md-6">
													<input type="text"
														placeholder=" Survey number "
														class="form-control">
												</div>
											</div>
										</div> <!-- extent of land -->
										<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Extent
														of land
													</label>
													<div class="col-md-3">
														<input type="text"
															placeholder=""
															class="form-control">
													</div>	
													
													<div class="col-md-1">
													
<select class="form-control SelectStyle" id="" style="width: 125px;">
<option value="0" >--Select--</option>
<option value="1" >Acre</option>
<option value="2" >Gunta</option>
<option value="3" >Square yards</option>
</select>
</div>
																				
																					
																					</div>
																					<div class="col-md-2">
													<div class="btn btn-primary"
													style="text-align: left;" onclick="addLand()">
														+ Add More
												</div>
							</div>			
																					
											</div>
										<br>
		</div>							
</body>




<script type="text/javascript">

		function menu3(){
			  $('a[href="#tab2primary"]').tab('show');
			}
	
	</script>
		<script>
		$(document).ready(function () {
			$('#example').DataTable();
		});
	</script>
	<script>
		$(document).ready(function () {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<script>
		$('#typeofpetition').on('change', function () {
			if ($(this).val() === "grp") {
				$(".petitiontype").show();
			}
			else {
				$(".petitiontype").hide();
			}
		});
	</script>
	<script>
		$('#typeofpetition').on('change', function () {
			if ($(this).val() === "grp") {
				$(".jointpetitioner_show").show();
			}
			else {
				$(".jointpetitioner_show").hide();
			}
		});
	</script>
	<script>
		$('#noe').on('change', function () {
			if ($(this).val() === "other") {
				$(".otherspy").show();
			}
			else {
				$(".otherspy").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "land") {
				$(".Petition170s1").show();
			}
			else {
				$(".Petition170s1").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "atrocity") {
				$(".Petition170s2").show();
			}
			else {
				$(".Petition170s2").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "service") {
				$(".service_show").show();
			}
			else {
				$(".service_show").hide();
			}
		});
	</script>
	<script>
		$('#typesevice').on('change', function () {
			if ($(this).val() === "otherser") {
				$(".typeofservice_show").show();
			}
			else {
				$(".typeofservice_show").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "general") {
				$(".general_show").show();
			}
			else {
				$(".general_show").hide();
			}
		});
	</script>
	<script>
		$('#pitition1').on('change', function () {
			if ($(this).val() === "pland") {
				$(".ppetioner").show();
			}
			else {
				$(".ppetioner").hide();
			}
		});
	</script>
	<script>
		$('#court').on('change', function () {
			if ($(this).val() === "Yes") {
				$(".courtpetione").show();
			}
			else {
				$(".courtpetione").hide();
			}
		});
	</script>
	<script>
		$('#court22').on('change', function () {
			if ($(this).val() === "yss") {
				$(".courtpetione11").show();
			}
			else {
				$(".courtpetione11").hide();
			}
		});
	</script>
	<script>
		$('#Casestatus').on('change', function () {
			if ($(this).val() === "Disposed") {
				$(".select_Status").show();
			}
			else {
				$(".select_Status").hide();
			}
		});
	</script>
	<script>
		$('#Casestatus21').on('change', function () {
			if ($(this).val() === "Disposed1") {
				$(".select_Status02").show();
			}
			else {
				$(".select_Status02").hide();
			}
		});
	</script>
	
	<script>
		$('#astrotype').on('change', function () {
			if ($(this).val() === "yesss") {
				$(".PoliceComplaint").show();
			}
			else {
				$(".PoliceComplaint").hide();
			}
		});
	</script>

	<script>
		$('#pitition1').on('change', function () {
			if ($(this).val() === "oland") {
				$(".otherland").show();
			}
			else {
				$(".otherland").hide();
			}
		});
	</script>
	<script>
		$('#typeofatrocity').on('change', function () {
			if ($(this).val() === "abuser") {
				$(".abuser_show").show();
			}
			else {
				$(".abuser_show").hide();
			}
		});
	</script>
	<script>
		$('#respondentdetails').on('change', function () {
			if ($(this).val() === "Private") {
				$(".respondent_individual").show();
			}
			else {
				$(".respondent_individual").hide();
			}
		});
	</script>
<script>
		$('#respondentdetails').on('change', function () {
			if ($(this).val() === "off") {
				$(".Officials_20").show();
			}
			else {
				$(".Officials_20").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Atrocity').on('change', function () {
			if ($(this).val() === "Private2") {
				$(".respondent_individual2").show();
			}
			else {
				$(".respondent_individual2").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Atrocity').on('change', function () {
			if ($(this).val() === "off2") {
				$(".Officials_22").show();
			}
			else {
				$(".Officials_22").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Service').on('change', function () {
			if ($(this).val() === "Private3") {
				$(".respondent_individual3").show();
			}
			else {
				$(".respondent_individual3").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Service').on('change', function () {
			if ($(this).val() === "off3") {
				$(".Officials_23").show();
			}
			else {
				$(".Officials_23").hide();
			}
		});
	</script>
	
	
	<script>
		$('#respondent_General').on('change', function () {
			if ($(this).val() === "Private4") {
				$(".respondent_individual4").show();
			}
			else {
				$(".respondent_individual4").hide();
			}
		});
	</script>
	<script>
		$('#respondent_General').on('change', function () {
			if ($(this).val() === "Off4") {
				$(".Officials_4").show();
			}
			else {
				$(".Officials_4").hide();
			}
		});
	</script>
	
	<script>
		$('#newexi').on('change', function () {
			if ($(this).val() === "new") {
				$(".newappy").show();
			}
			else {
				$(".newappy").hide();
			}
		});
	</script>
	<script>
		$('#newexi').on('change', function () {
			if ($(this).val() === "exi") {
				$(".exiappy").show();
			}
			else {
				$(".exiappy").hide();
			}
		});
	</script>
	<script>
		$('#appservice').on('change', function () {
			if ($(this).val() === "yes1") {
				$(".ifyes").show();
			}
			else {
				$(".ifyes").hide();
			}
		});
	</script>
	<script>
		$('#audact').on('change', function () {
			if ($(this).val() === "yesAct") {
				$(".ifyesCosmeticsAct").show();
			}
			else {
				$(".ifyesCosmeticsAct").hide();
			}
		});
	</script>
	<script>
		$('#Exemption').on('change', function () {
			if ($(this).val() === "yesExemption") {
				$(".ifyesExemption").show();
			}
			else {
				$(".ifyesExemption").hide();
			}
		});
	</script>

	<script>
		$('#Institutionservices').on('change', function () {
			if ($(this).val() === "insTrust") {
				$(".insTrusts").show();
			}
			else {
				$(".insTrusts").hide();
			}
		});
	</script>

	<script>
		$('#Institutionservices').on('change', function () {
			if ($(this).val() === "addloc") {
				$(".addlocs").show();
			}
			else {
				$(".addlocs").hide();
			}
		});
	</script>

	<script>
		$('#Institutionservices').on('change', function () {
			if ($(this).val() === "Examining") {
				$(".Examinings").show();
			}
			else {
				$(".Examinings").hide();
			}
		});
	</script>





<script type="text/javascript">

$('#pitition1').on('change', function () {
	if ($(this).val() === "oland") {
		$(".otherland").show();
	}
	else {
		$(".otherland").hide();
	}
});
function addLand(){
	
	
	var table = document.getElementById("");
	var landDistrict = $("#landDistrict").val().trim();
	var landmandal = $("#landmandal").val().trim();
	var landvillage = $("#landvillage").val().trim();
	var subject = $("#subject").val().trim();
	var year = $("#period").val().trim();
	var regex = /^[a-zA-Z]+(\s+[a-zA-Z]+)*$/;
	if (degValue == "") {
		alert("Exam/Degree is required");
		$("#degree").focus();
		return false;
	}
	if (regex.test(degValue)==false) {
		alert("Invalid Exam/Degree");
		$("#degree").focus();
		return false;
	}
	if (per.length == 0) {
		alert("Percentage is required");
		$("#percentage").focus();
		return false;
	}
	if (isNaN(per)) {
		alert("Invalid percentage");
		$("#percentage").focus();
		return false;
	}

	if (year.length == 0) {
		alert("Period of study is required");
		$("#period").focus();
		return false;
	}
	if (year.length != 9) {
		alert("Period of Study is not valid");
		$("#period").focus();
		return false;
	}
	var toyear = parseInt(year.substring(5, 9));
	var fromyear = parseInt(year.substring(0, 4));

	var diff = toyear - fromyear;

	if (diff == 0) {
		alert("Period of study must be more than a Year.");
		$("#period").focus();
		return false;
	}
	if (diff < 0) {
		alert("Period of study must be more than a Year.");
		$("#period").focus();
		return false;
	}
	

	if (yearRegex.test(year) == false) {
		alert("Invalid Period of Study");
		$("#period").focus();
		return false;
	}

	if (subject.length == 0) {
		alert("Subject studied is required");
		$("#subject").focus();
		return false;
	}
	if (regex.test(subject) == false) {
		alert("Invalid Subject name.");
		$("#subject").focus();
		return false;
	}

	if (universe.length == 0) {
		alert("Name of the Institution");
		$("#college").focus();
		return false;
	}
	if (regex.test(universe) == false) {
		alert("Invalid Name of the Institution");
		$("#college").focus();
		return false;
	}

	$('#dataTable').show();
	var rowCount = table.rows.length;
	var row = table.insertRow(rowCount);

	var existingdegree = "";
	var existingyear = "";
	var tlength = (table.rows.length) - 1;
	if (rowCount > 1) { //tr:nth-child(even)
		$("#dataTable tr").closest('tr').find("input:eq(1)").each(
				
				function() {
					
					
					existingdegree = this.value;
					if (degValue == this.value) {
						return false;
					}
				});

		$("#dataTable tr").closest('tr').find("input:eq(4)").each(
				function() {
					existingyear = this.value;
					if (year == this.value) {
						return false;
					}
				});
	}

	if (existingdegree == degValue) {
		alert("Exam/Degree already exists");
		$("#degree").focus();
		return false;
	}

	if (existingyear == year) {
		alert("Period of Study alreay exists");
		$("#period").focus();
		return false;
	} else {

		var Sno = row.insertCell(0);
		var selement = document.createElement("input");
		selement.type = "text";
		var length = (table.rows.length) - 1;
		selement.size = "2";
		selement.value = ++i;
		selement.name = "sno";
		Sno.appendChild(selement);
		
		var degTextVal = row.insertCell(1);
		degTextVal.setAttribute("style", "display:none;");
		var degElement = document.createElement("input");
		degElement.type = "text";
		var length = (table.rows.length) - 1;
		degElement.size = "2";
		degElement.value = degValue;
		degElement.name = "education[" + length + "].exam";
		degTextVal.appendChild(degElement);

		var cell3 = row.insertCell(2);
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.setAttribute("style", "text-transform: capitilize");
		var length = (table.rows.length) - 1;
		element2.value = degValue;
		element2.name = "DegreeText";
		cell3.appendChild(element2);

		var cell4 = row.insertCell(3);
		var element3 = document.createElement("input");
		element3.type = "text";
		element3.value = per;
		var length = (table.rows.length) - 1;
		element3.size = "3";
		element3.readonly;
		element3.name = "education[" + length + "].percentage";
		cell4.appendChild(element3);

		var cell5 = row.insertCell(4);
		var element4 = document.createElement("input");
		element4.type = "text";
		element4.value = year;
		element4.size = "6";
		var length = (table.rows.length) - 1;
		element4.name = "education[" + length + "].yearOfPass";
		cell5.appendChild(element4);

		var cell7 = row.insertCell(5);
		var element8 = document.createElement("input");
		element8.type = "text";
		element8.value = subject;

		var length = (table.rows.length) - 1;
		element8.name = "education[" + length + "].subjectStudied";
		cell7.appendChild(element8);

		
		var cell6 = row.insertCell(6);
		var deg = document.createElement("input");
		deg.type = "text";
		deg.size = "6";
		deg.value = universe;
		var length = (table.rows.length) - 1;
		deg.name = "education[" + length + "].institution";
		cell6.appendChild(deg);

		var cell7 = row.insertCell(7);
		var imgs = document.createElement('img');
		imgs.setAttribute('data-toggle', 'tooltip');
		imgs.setAttribute('data-placement', 'bottom');
		imgs.setAttribute('title', 'Click to delete this row');
		imgs.src = '${pageContext.request.contextPath}/static/image/delete-1-icon.png';
		imgs.width = "20";
		tableID = "dataTable";

		imgs.onclick = function() {
			var con = confirm("Are you sure you want to delete this Degree?");
			if (con) {
				deleteRow(this);
				i--;
			}
		};

		cell7.appendChild(imgs);
	}
	
}


</script>
</html>