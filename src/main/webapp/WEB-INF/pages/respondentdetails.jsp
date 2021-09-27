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

<link href="${pageContext.request.contextPath}/static/css/header.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/app.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/images/Telengana_State.png"
	rel="icon">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/style_smenu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/panel.css">
<link
	href="${pageContext.request.contextPath}/static/css/sb-admin-2.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.7.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/script.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!------ Include the above in your HEAD tag ---------->
<!------ Include the above in your HEAD tag ---------->
<style>
.modal-content {
	position: absolute;
	background-color: #fff;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 1px solid #999;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 6px;
	outline: 0;
	-webkit-box-shadow: 0 3px 9px rgb(0 0 0/ 50%);
	box-shadow: 0 3px 9px rgb(0 0 0/ 50%);
	width: 160%;
	left: -150px;
}

.table-bordered>thead>tr>th, .table-bordered>tbody>tr>th,
	.table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td,
	.table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td {
	border-color: black;
}

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


 


) {
	font-size: 0 px;
	width: 215 px;
	margin-bottom: 18 px;
	padding-top: 5 px;
	height: 100 px;
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
<body style="margin-left: 20px; margin-right: 20px;" onload="focus()">


	<div class="container-fluid">

		<h1 align="center" style="color: #2d3990;">Petition - Respondent</h1>
		<div class="col-md-12">

			<form:form name="respondent" modelAttribute="respondent"
				id="respondent">
				<table style="font-size: 20px;" width="100%" align="center">
					<tr>
						<td style="color: #2d3990;"><c:if test="${type=='I'}">
	Type of Petition: Individual
	</c:if> <c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if></td>
						<td style="color: #2d3990;" align="right">Category of
							Petition : ${typeOpt}</td>
					</tr>
				</table>


				<div class="title1">
					<b style="padding-left: 5px;">Respondent Details</b>

				</div>
				<br>

				<form:input type="hidden" path="petitionerId" id="petitionerId"
					value="${pid }" />
				<form:input type="hidden" path="petition" id="petition"
					value="${petId }" />
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Type of Respondent<span
							class="star">*</span></label>
						<div class="col-md-4">
							<form:select class="form-control SelectStyle"
								id="respondentdetails" path="respType" tabindex="1">
								<form:option value="0">--Select--
															</form:option>
								<form:option value="P">Private/Individual</form:option>
								<form:option value="O">Officials</form:option>
							</form:select>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Name of the respondent<span
							class="star">*</span></label>
						<div class="col-md-4">
							<form:input type="text" placeholder=" Full Name"
								class="form-control" maxlength="100" id="respName"
								path="respName" tabindex="2" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group"
						style="display: none;" id="caste">
						<label class="col-md-6"> Select Caste <span class="star">*</span></label>

						<div class="col-md-3">
							<form:select class="form-control SelectStyle" path="caste" tabindex="4"
								id="castevalue">
								<form:option value="0">--Select--
															</form:option>
								<form:option value="1">OC
															</form:option>
								<form:option value="2">BC
															</form:option>

							</form:select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Designation/Profession <span
							class="star">*</span></label>
						<div class="col-md-4">
							<form:input type="text" placeholder=" Designation"
								id="respProffesion" class="form-control" path="respProffesion" maxlength="50" tabindex="5" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Select District <span class="star">*</span></label>
						<div class="col-md-4">
							<form:select class="form-control SelectStyle" path="district"
								id="district" tabindex="6">
								<form:option value="0">--Select--
															</form:option>
								<c:forEach items="${districts}" var="alt">
								<form:option value="${alt.distCode}">${alt.distName}</form:option>
								</c:forEach>
							</form:select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Address </label>
						<div class="col-md-6">
							<form:textarea maxlength="200" cols="39" rows="4" id="address" tabindex="7"
								path="address"></form:textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Mobile No </label>
						<div class="col-md-4">
							<form:input type="text" placeholder=" Mobile No "
								class="form-control" id="mobile" path="mobile" maxlength="10" tabindex="8" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">E-Mail ID</label>
						<div class="col-md-4">
							<form:input type="text" placeholder=" e-mail "
								class="form-control" id="email" path="email" maxlength="100" tabindex="9"/>
						</div>
					</div>
					<div class="col-md-offset-2 form-group " style="color: red;">
						<div class="btn btn-md btn-primary" onclick="addRespondent()">
							+ Add more</div>
					</div>
				</div>










				<input type="hidden" name="pid" id="pid" value="${pid }" />
				<input type="hidden" name="type" value="${type }" />

			</form:form>

			<div class="modal fade" id="squarespaceModal" tabindex="-1"
				role="dialog" aria-labelledby="modalLabel" aria-hidden="true"
				data-backdrop="static">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span style="color: black;" aria-hidden="true"><b>×</b></span><span
									class="sr-only">Close</span>
							</button>
							<div align="center">
								<h3 class="modal-title" id="lineModalLabel">
									Edit - Respondent Details<span id="file"></span>
								</h3>
							</div>
						</div>
						<div class="modal-body">


							<form name="editRespondent" id="editRespondent">

								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Type of Respondent<span
											class="star">*</span></label>
										<div class="col-md-6">
											<select class="form-control SelectStyle"
												id="respondentdetails" name="respType">
												<option value="0">--Select--</option>
												<option value="P">Private/Individual</option>
												<option value="O">Officials</option>
											</select>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Name of the respondent<span
											class="star">*</span></label>
										<div class="col-md-6">
											<input type="text" placeholder=" Full Name"
												class="form-control" maxlength="100" id="respName"
												name="respName" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group"
										style="display: none;" id="caste">
										<label class="col-md-6"> Select Caste <span
											class="star">*</span></label>

										<div class="col-md-6">
											<select class="form-control SelectStyle" name="caste"
												id="castevalue">
												<option value="0">--Select--</option>
												<option value="1">OC</option>
												<option value="2">BC</option>

											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Designation/Profession <span
											class="star">*</span></label>
										<div class="col-md-6">
											<input type="text" placeholder=" Designation"
												id="respProffesion" class="form-control"
												name="respProffesion" maxlength="50"/>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Select District <span
											class="star">*</span></label>
										<div class="col-md-6">
											<select class="form-control SelectStyle" name="district"
												id="district">
												<option value="0">--Select--</option>
												<c:forEach items="${districts}" var="alt">
												<option value="${alt.distCode }" >${alt.distName }</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Address </label>
										<div class="col-md-6">
											<textarea maxlength="200" cols="30" rows="8" id="address"
												name="address"></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Mobile No </label>
										<div class="col-md-6">
											<input type="text" placeholder=" Mobile No "
												class="form-control" id="mobile" name="mobile" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">E-Mail ID</label>
										<div class="col-md-6">
											<input type="text" placeholder=" e-mail "
												class="form-control" id="email" name="email" maxlength="100"  />
										</div>
									</div>

								</div>

								<input type="hidden" name="petitionerId" value="${pid }">
								<input type="hidden" name="petition" id="petId"
									value="${petId }"> <input type="hidden" name="type"
									id="type" value="${type }">

							</form>
						</div>
						<div class="modal-footer">
							<center>
								<div role="group" aria-label="group button">

									<input type="button" class="btn btn-primary"
										id="updateRespondent" data-dismiss="modal" value="Update"
										role="button" /> <input type="button" class="btn btn-danger"
										data-dismiss="modal" value="Close" role="button" />

								</div>
						</div>
					</div>
					</center>
				</div>





			</div>





			<div id="respondentdiv">
				<div align="center"
					style="background: #2d3990; color: white; height: 30px;">
					<h3>Respondent Details</h3>
				</div>
				<div>
					<table id="respondentTable" class="table table-bordered"
						style="border: 1px solid black;">

						<thead>
							<th style="display: none;">Respondent id</th>
							<th style="text-align: center;">S.No</th>
							<th>Type Respondent</th>
							<th>Respondent Name</th>
							<th style="text-align: center;">Caste</th>
							<th>Designation/Profession</th>
							<th>District</th>
							<th>e-Mail</th>
							<th style="text-align: center;">Mobile No</th>
							<th style="text-align: center;">Edit</th>
							<th style="text-align: center;">Delete</th>
						</thead>
						<tbody id="myTable">
							<c:forEach items="${respondents }" var="alt" varStatus="counter">

								<tr>
									<td style="display: none;" id="hiddencode">${alt.respno }</td>
									<td style="text-align: center;">${counter.count }</td>
									<%-- <td>${alt.respType }</td> --%>
									<c:if test="${alt.respType =='P'}">
										<td>Private/Individual</td>
									</c:if>
									<c:if test="${alt.respType =='O'}">
										<td>Official</td>
									</c:if>
									<td>${alt.respName }</td>
									<td style="text-align: center;">${alt.caste }</td>
									<td>${alt.respProffesion }</td>
									<td>${alt.district }</td>
									<td style="text-align: center;">${alt.mobile }</td>
									<td>${alt.email }</td>
									<td style="text-align: center;" data-toggle="modal"
										data-target="#squarespaceModal"><img height="22px"
										id="edit" data-toggle="tooltip" title="Click to edit details"
										src="${pageContext.request.contextPath}/static/images/edit.png"></img></td>
									<td style="text-align: center;" id="btn-remove"><img
										height="22px" data-toggle="tooltip" title="Click to delete"
										src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
								</tr>

							</c:forEach>
						</tbody>



					</table>
				</div>
				<div align="center">
					<div class="col-md-5 col-md-offset-4">
						<a
							href="${pageContext.request.contextPath}/petition/documents/uploaddocs.htm/${pid}/${type}/${typeOpt}">
							<div class="btn btn-md btn-primary">Save And Continue</div>
						</a>
					</div>
				</div>
			</div>


		</div>

	</div>





	<script>

	var rowText; //for getting row hiddent text in responsent details table
	$(function() {
		$(document).ready(function() {
			var row=$("#respondentTable tr").length;
			if (row<=1) {
				$('#respondentdiv').hide();
			} else {
				$('#respondentdiv').show();
			}
		});

	});



	
		$('#squarespaceModal #respondentdetails').on('change', function () {
			if ($(this).val() === "P") {
				$("#squarespaceModal #caste").show();
			}
			else {
				$("#squarespaceModal #caste").hide();
			}
		});

		
		$('#respondentdetails').on('change', function () {
			if ($(this).val() === "P") {
				$("#caste").show();
			}
			else {
				$("#caste").hide();
			}
		});

		//adding respondent details dynamically
		function addRespondent(){
			
			var respondentdetails = $("#respondentdetails").val();
			var respondentdetailsText = $("#respondentdetails option:selected").text();
			var respName = $("#respName").val();
			var castevalueText = $("#castevalue  option:selected").text();
			var castevalue = $("#castevalue").val();
			
			var respProffesion = $("#respProffesion").val();
			var districtText = $("#district  option:selected").text();
			var district = $("#district").val();
		
			var email = $("#email").val();
			var mobile = $("#mobile").val();
			   var frm = $('#respondent').serialize();
			   var k=0;

			   if(castevalueText=="--Select--"){
				   castevalueText="-";
				   }
				$.ajax({
					url : '/scst/petition/respondent/addrespondent.htm',
					type : "POST",
					data : frm,
					success : function(response) {
						 if(response=="N")
							{
							alert("Respondent details adding failed");
							return false;
							}
						else{

		var caste = "";

		
								if (respondentdetails == "O") {
									caste = "-";
								}
								else{
									caste=castevalueText;
									}
								var row = $('.table-bordered tr').length;
								if (row == 1) {
									k = 0;
								}
								k = $(
										'.table-bordered tr:last-child td:nth-child(2)')
										.html();
								if (isNaN(k)) {
									k = 0;
								}
								var s = '<tr ><td align="center" style="display: none;" id="hiddencode">'
										+ response
										+ '</td><td align="center">'
										+ ++k
										+ '</td><td>'
										+ respondentdetailsText
										+ '</td><td>'
										+ respName
										+ '</td><td style="text-align: center;"  >'
										+ caste
										+ '</td><td align="center" width: 15%"  >'
										+ respProffesion
										+ '</td><td style="text-align: center;"  >'
										+ districtText
										+ '</td><td style="text-align: center;"  >'
										+ email
										+ '</td><td style="text-align: center;"  >'
										+ mobile
										+ '</td><td style="text-align: center;"   data-toggle="modal" data-target="#squarespaceModal" ><img height="22px"  data-toggle="tooltip" title="Click to delete" id="edit" src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'

								$("#respondentTable").append($(s));
								$('#respondentdiv').show();


								$('#respondentdetails')
										.prop('selectedIndex', 0);
								$('#castevalue').prop('selectedIndex', 0);
								$("#respName").val('');
								$('#district').prop('selectedIndex', 0);
								 $("#email").val('');
									$("#mobile").val('');
									$("#address").val('');
									$("#respProffesion").val('');
							}

						}

					});
		}

		//deleting land details onclick
		$(document).on('click', '#btn-remove', function() {

			var $row = $(this).closest("tr"); // Find the row
			var respcode = $row.find("#hiddencode").text();
			var petitionerId = $("#petitionerId").val();

			var con = confirm("Are you sure you want to delete?");
			if (con) {
				$.ajax({
					url : '/scst/petition/respondent/deleterespondent.htm',
					type : "POST",
					data : {
						"respcode" : respcode,
						"petitionerId" : petitionerId
					},
					success : function(response) {
						//$('#btn-remove').closest('tr').remove();
						if (response == "Y") {
							$(".table-bordered tr td").filter(function() {
								return $(this).text() === respcode;
							}).closest("tr").remove();
							var row = $("#respondentTable tr").length;
							
							if (row == 1) {
								$('#respondentdiv').hide();
							} else {
								$('#respondentdiv').show();
							}
							alert("Deleted succesfully");
						} else {
							alert(" Delete Unsuccessfull ");

						}

					}
				});

			}

		});

		//fetching land details onclick
		$(document)
				.on(
						'click',
						'#edit',
						function() {

							var $row = $(this).closest("tr"); // Find the row
							var respcode = $row.find("#hiddencode").text();
						   rowText=respcode;
							var petId = $("#petId").val();

							$
									.ajax({
										url : '/scst/petition/respondent/getRespondentdetails.htm',
										type : "GET",
										data : {
											"respcode" : respcode,
											"pid" : petId
										},
										success : function(response) {
											var obj = JSON.parse(response);

											$("#squarespaceModal #respName")
													.val(obj.respName);
											$("#squarespaceModal #castevalue")
													.val(obj.caste.trim());
											$("#squarespaceModal #address")
													.val(obj.address);
											$("#squarespaceModal #mobile").val(
													obj.mobile);
											$("#squarespaceModal #email").val(
													obj.email);
											$('#squarespaceModal #district')
													.val(obj.district).change();
											$(
													'#squarespaceModal #respondentdetails')
													.val(obj.respType).change();
											$(
													'#squarespaceModal #respProffesion')
													.val(obj.respProffesion);

										}
									});

						});

		//update respondent

		$(document).on(
				'click',
				'#updateRespondent',
				function() {

					var name = $("#squarespaceModal #respName").val();
					var address = $("#squarespaceModal #address").val();
					var mobile = $("#squarespaceModal #mobile").val();
					var email = $("#squarespaceModal #email").val();
					var district = $('#squarespaceModal #district').val();
					var respondentdetails = $(
							'#squarespaceModal #respondentdetails').val();
					var respProffesion = $('#squarespaceModal #respProffesion')
							.val();
					var castevalue = $('#squarespaceModal #castevalue').val();
					var petId = $('#petId').val();
				
					$.ajax({
						url : '/scst/petition/respondent/updaterespondent.htm/'
								+ rowText,
						type : "POST",
						data : {
							"name" : name,
							"address" : address,
							"mobile" : mobile,
							"email" : email,
							"district" : district,
							"respondentdetails" : respondentdetails,
							"respProffesion" : respProffesion,
							"caste" : castevalue,
							"petition" : petId
						},
						success : function(response) {
							if (response == "Y") {
							
								getRespondentList();
							} else {
								alert("Respondent details updation failed");
							}
						}

					});
				});

		function getRespondentList() {
			$("#myTable").empty();
			var k = 0;
			var petid = $("#petId").val();

			
			$
					.ajax({
						url : '/scst/petition/respondent/getRespondentDetailsAjax.htm',
						type : "GET",
						data : {
							"petid" : petid
						},
						success : function(response) {
							var result = JSON.parse(response);
							for (var i = 0; i < response.length; i++) {
								var caste=result[i].caste;
								caste=$.trim(caste);
								var resptype = "";
								
								if (result[i].respType == "P") {
									resptype = "Private/Individual";
									
								} 
								
								if (result[i].respType == "O") {
									resptype = "Official";
									caste="-";
								} 
							
								if (caste == "1") {
									caste="OC";
								} 
							
								if (caste == "2") {
									caste="BC";
								} 
							
		                      
								var s = '<tr><td style="display:none;" id="hiddencode" align="center">'
										+ result[i].respno
										+ '</td><td align="center">'
										+ ++k
										+ '</td><td >'
										+ resptype
										+ '</td><td>'
										+ result[i].respName
										+ '</td><td align="center">'
										+ caste	
										+ '</td><td>'
										+ result[i].respProffesion
										+ '</td><td >'
										+ result[i].district
										+ '</td><td >'
										+ result[i].email
										+ '</td><td align="center">'
										+ result[i].mobile
										+ '</td><td style="text-align: center;"   data-toggle="modal" data-target="#squarespaceModal"  ><img height="22px"   title="Click here to edit" id="edit"    src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
								$("#myTable").append(s);

							}

						}

					});
		}

		function focus() {
			document.getElementById("appeal").focus();
		}
	</script>


</body>

</html>
