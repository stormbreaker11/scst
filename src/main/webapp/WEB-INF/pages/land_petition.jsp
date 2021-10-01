<jsp:include page="/WEB-INF/pages/validate.jsp"></jsp:include>
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
<body  style="margin-left: 20px; margin-right: 20px;" onload="focus()">

				
	<div class="container-fluid">
			
<h1 align="center" style="color: #2d3990;" >Petition - Land</h1>
		<div class="col-md-12">
		
		<form:form name="petition" modelAttribute="petitionland" >
		<table style="font-size: 20px;"  width="100%" align="center">
	<tr >
	<td style="color: #2d3990;" >

	<c:if test="${type=='I'}">
	Type of Petition: Individual
	</c:if>
	<c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if>
	</td>
	<td style="color: #2d3990;" align="right">Category of Petition : Land</td>
	</tr>
	</table>
            
                        <div class="row from group">
                        
                        <div class="title1"  >
													<b style="padding-left: 5px;">Petition - Land</b>
													
												</div>
												
												
												<br>
										
                        <form:input type="hidden" path="petitionerId" value="${pid }"/>
                       <div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Appeal/prayer
													of the
													petitioner(100
													words) <span class="star">*</span></label>
												<div class="col-md-6">
													<form:textarea
														cols="39"
														rows="4" maxlength="100" id="appeal" path="appeal" autofocus="true" tabindex="1"></form:textarea>
												</div>
											</div>
											  <div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="appeal"></form:errors>
							</div>
                    </div>
										</div>
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group" >
												<label class="col-md-6">Petition
													in Detail
													(500 words)
												<span class="star">*</span></label>
												<div class="col-sm-6">
													<form:textarea
														cols="39" path="pet_detail" maxlength="500" id="pet_detail"
														rows="7" tabindex="2" ></form:textarea>
												</div>
											</div>  <div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="pet_detail"></form:errors>
							</div>
										</div>

										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group" >
												<label class="col-md-6" >Has
													the
													Petitioner
													Lodged Complaint
													in any
													court <span class="star">*</span></label>
												<div class="col-md-3">
													<form:select class="form-control SelectStyle"
														id="court" path="courtComp" tabindex="3" >
														<form:option value="0" >--Select--
														</form:option>
														<form:option
															value="Y">
															Yes
														</form:option>
														<form:option value="N" >No
														</form:option>
													</form:select>
												</div>
											</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="courtComp"></form:errors>
							</div>
										</div>
										<div class="courtpetione" id="Yes" style="display: none;">
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Name
														of the
														Court</label>
													<div
														class="col-md-4">
														<form:input type="text" id="courtName" maxlength="50"
															 
															class="form-control" path="courtName" tabindex="4" />
													</div>
												</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="courtName"></form:errors>
							</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select State</label>
													<div
														class="col-md-4">
														<form:select class="form-control SelectStyle"
															id="courtState" path="courtState" tabindex="5">
															<form:option value="0">--Select--
															</form:option>
															<c:forEach items="${states}" var="alt">
															<form:option value="${alt.scode}">${alt.sname}</form:option>
															</c:forEach>

														</form:select>
													</div>
											</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="courtState"></form:errors>
							</div>
											</div>

											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Select District
													</label>
													<div
														class="col-md-4">
														<form:select class="form-control SelectStyle" path="courtDist"
															id="courtDist" tabindex="6">
															<form:option value="0" >--Select--
															</form:option>
															
															
														</form:select>
													</div>
												</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="courtDist"></form:errors>
							</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														 Mandal</label>
													<div
														class="col-md-4">
														<input type="text" id="courtMandal" class="form-control SelectStyle"
															path="courtMandal" tabindex="7"/>
															
													</div>
												</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="courtMandal"></form:errors>
							</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Case Number
														
														</label>
													<div
														class="col-md-3">
														<form:input type="text"
															 path="caseNo"
															class="form-control" maxlength="30" tabindex="8"/>
													</div>
												</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="caseNo"></form:errors>
							</div>
											</div>
											<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">
													Status of Case
													</label>
												<div class="col-md-3">
													<form:select class="form-control SelectStyle"
														id="casestatus" path="caseStatus" tabindex="9">
														<form:option value="0">--Select--
														</form:option>
														<form:option value="P">
															Pending
														</form:option>
														<form:option value="D">Disposed
														</form:option>
													</form:select>
												</div>
											</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="caseNo"></form:errors>
							</div>
										</div>
										<div class="caseStatus" style="display: none;">
                    <div class="row">
                    <div class="col-sm-7 col-md-offset-2 form-group">
                    <label class="col-md-6">Upload the Court Orders</label>
                    <div class="col-md-6">
                    <input name="courtorders"  class="form-control" type="file" tabindex="10">
                    </div>
                    </div>
                    
                    <div class="col-md-offset-2 form-group " style="color: red;">allowed .pdf of 1 mb size
							</div>
                    </div>
                        </div>
                        </div>
                        </div>
                        
                        <table width="100%">
                        <tr><td>&nbsp;</td>
                        <td align="center"><button type="button" class="btn btn-primary" onclick="submitDetails()" >Save And Continue</button></td>
                        </tr>
                        </table>
                          <input type="hidden" name="pid" value="${pid }"/>
                          <input type="hidden" name="type" value="${type }"/>
                          <input type="hidden" name="category" value="${category }"/>
                        
                           </form:form>
                        </div>
                      
                        </div>
             
          
	
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
			if ($(this).val() === "Y") {
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
		$('#casestatus').on('change', function () {
			if ($(this).val() === "D") {
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

	function focus(){
		document.getElementById("typeofpetition").focus();
		}
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


		function submitDetails(){

			document.petition.method="POST";
			document.petition.action="/scst/petition/land/savepetitiondetails.htm";
			document.petition.submit();

			}

		//fetching districts onchange state select option 
		$(document)
		.ready(
				function() {

					$('#courtState')
							.on(
									'change',
									function() {
								
										var stateid = $('#courtState').val();

								
										//var dist = $('#dist').val();
										$
												.ajax({
													type : 'GET',
													url : '/scst/loaddistricts/'
															+ stateid,
													success : function(
															result) {

														
														$('#courtDist').html('');
														$("#courtDist").append(new Option("--Select--", "0"));
														var result = JSON
																.parse(result);
														var s = '';
														for (var i = 0; i < result.length; i++) {
															s += '<option value="'+result[i].distCode+'">'
																	+ result[i].distName
																	+ '</option>';
														}
														$('#courtDist')
																.append(s);
													}
												});
									});

				});

		
	</script>
	

</body>

</html>
