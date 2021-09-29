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
</head>
<style>

.modal-content {
    position: absolute;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
    box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
    width: 160%;
    left: -150px;
}

.table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, 
.table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td{
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


	<h1 align="center" style="color: #2d3990;">Petition - Land</h1>
	<div class="col-md-12">
		<table style="font-size: 20px;"  width="98%" align="center">
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
            
		<form:form name="landdetails" id="landdetails"
			modelAttribute="landdetails">
			<form:input type="hidden" name="petitionerId" path="petitionerId"
				id="petitionerId" value="${petitionerId}" />
			<form:input type="hidden" name="petitionId" path="petitionId"
				id="petitionId" value="${petId}" />
			<div class="title1">
				<b style="padding-left: 5px;">Land Details</b>

			</div>
			<br>
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Kind of Land <span class="star">*</span></label>
					<div class="col-md-4">
						<form:select class="form-control SelectStyle" id="landKind"
							path="landKind" tabindex="1" autofocus="true">
							<form:option value="0">--Select--
														</form:option>
							<c:forEach items="${landkinds }" var="alt">
							<form:option value="${alt.landsrno }">${alt.landKind}</form:option>
														
							
							</c:forEach>
						</form:select>
					</div>
				</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="landKind"></form:errors>
							</div>
			</div>

			<div class="row from group">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Type of Land <span class="star">*</span></label>
					<div class="col-md-4">
						<form:select class="form-control SelectStyle" id="pitition1"
							path="landType" tabindex="2">
							<form:option value="0">--Select--
														</form:option>
							<c:forEach items="${landTypes }" var="alt">
							<form:option value="${alt.landsrno }">${alt.landType}</form:option>
														
							
							</c:forEach>
						</form:select>
					</div>
				</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="landType"></form:errors>
							</div>
			</div>

			<div class="otherland" id="3" style="display: none;">
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Others Land <span class="star">*</span></label>
						<div class="col-md-4">
							<form:input type="text" placeholder=" Type of land"
								class="form-control" id="olandtext" maxlength="30"
								path="otherland" tabindex="3"/>
						</div>
					</div>
				</div>

				<br><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="otherland"></form:errors>
							</div>
			</div>
			<br>
			<div class="Petition170s1" id="land"></div>
			<div class="ppetioner" id="pland">

				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Select District <span class="star">*</span>
						</label>
						<div class="col-md-4">
							<form:select class="form-control SelectStyle" path="landDistrict"
								id="landDistrict" name="landDistrict" tabindex="4">
								<form:option value="0">--Select--</form:option>
								<c:forEach items="${district}" var="alt">
												<form:option value="${alt.distCode }" >${alt.distName }</form:option>
												</c:forEach>

							</form:select>
						</div>
					</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="landDistrict"></form:errors>
							</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Select Mandal <span class="star">*</span>
						</label>
						<div class="col-md-4">
							<form:select class="form-control SelectStyle" path="landmandal"
								id="landmandal" tabindex="5">
								<form:option value="0">--Select--</form:option>
								<form:option value="1">Mandal-1</form:option>
							</form:select>
						</div>
					</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="landmandal"></form:errors>
							</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Revenue Village </label>
						<div class="col-md-4">
							<form:input type="text" class="form-control SelectStyle" path="landvillage"
								name="landvillage" id="landvillage" tabindex="6" maxlength="50"/>
							
						</div>
					</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="landvillage"></form:errors>
							</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Patta Passbook number</label>
						<div class="col-md-3">
							<form:input type="text" path="passbookNo" id="passbookNo"
								name="passbookNo" placeholder=" Patta number"
								class="form-control" maxlength="10" tabindex="7"/>
						</div>
					</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="passbookNo"></form:errors>
							</div>
				</div>

				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Survey number <span class="star">*</span></label>
						<div class="col-md-3">
							<form:input type="text" placeholder=" Survey number"
								maxlength="15" path="surveyNo" id="surveyNo" name="surveyNo"
								class="form-control" tabindex="8" />
						</div>
					</div><div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="surveyNo"></form:errors>
							</div>
				</div>
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Extent of land </label>
						<div class="col-md-3">
							<form:input type="text" placeholder="" maxlength="6"
								path="extentOfLand" id="extentOfLand" name="extentOfLand"
								class="form-control" tabindex="9" />
						</div>
						<div class="col-md-0">

							<form:select class="form-control SelectStyle" path="units"
								style="width: 125px;" id="units">
								<form:option value="0">--Select--</form:option>
								<form:option value="1">Acre</form:option>
								<form:option value="2">Gunta</form:option>
								<form:option value="3">Square yards</form:option>
							</form:select>
						</div>


					</div>
					<div class="col-md-2">
						<div class="btn btn-primary" style="text-align: left;"
							id="addmore" onclick="addLand()">+ Add More</div>
					</div>
<div class="col-md-offset-2 form-group " style="color: red;">
											  <form:errors path="extentOfLand"></form:errors>
							</div>
				</div>
			</div>
			<input type="hidden" name="type" value="${type }">
			<input type="hidden" name="pid" value="${pid }">
		</form:form>



		<div id="landdiv">
			<div align="center"
				style="background: #2d3990; color: white; height: 30px;">
				<h3>Land Details</h3>
			</div>
			<div>
				<table id="landTable" class="table table-bordered"
					style="border: 1px solid black;">

					<thead>
						<th style="display: none;">Land id</th>
						<th style="text-align: center;">S.No</th>
						<th>Kind of Land</th>
						<th>Type of Land</th>
						<th style="text-align: center;">Patta Number</th>
						<th style="text-align: center;">Survey Number</th>
						<th style="text-align: center;">Extent of Land</th>
						<th style="text-align: center;">Edit</th>
						<th style="text-align: center;">Delete</th>
					</thead>
					<tbody id="landTabletr">

						<c:forEach items="${lands }" var="alt" varStatus="counter">
							<tr>
								<td style="display: none;" id="hiddencode">${alt.landId }</td>
								<td style="text-align: center;">${counter.count }</td>
								<td>${alt.landKind }</td>
								<td>${alt.landType }</td>
								<td style="text-align: center;">${alt.passbookNo }</td>
								<td style="text-align: center;">${alt.surveyNo }</td>
								<td style="text-align: center;">${alt.extentOfLand }
									(<c:if test="${alt.units=='1'}">Acre</c:if><c:if test="${alt.units=='2'}">Gunta</c:if><c:if test="${alt.units=='3'}">Square yards</c:if>)</td>
								<td style="text-align: center;" data-toggle="modal"
									data-target="#squarespaceModal"  ><img id="edit"  height="22px"
									data-toggle="tooltip" title="Click to edit details"
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
						href="${pageContext.request.contextPath}/petition/respondent/respondentdetails.htm/${petitionerId}/${type}/Land">
						<div class="btn btn-md btn-primary">Save And Continue</div>
					</a>
				</div>
			</div>




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
							<div align="center"><h3 class="modal-title" id="lineModalLabel">
								Edit - Land Details<span id="file"></span>
							</h3></div>
						</div>
						<div class="modal-body">

								
							<form name="editland" id="editland">
							
							<input type="hidden" name="petitionId" value="${petId }">
							<input type="hidden" name="petitionerId" value="${petitionerId }">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Kind of Land <span class="star">*</span></label>
									<div class="col-md-6">
										<select class="form-control SelectStyle" id="landKind" name="landKind">
											<option value="0">--Select--</option>
												<c:forEach items="${landkinds }" var="alt">
													<option value="${alt.landsrno }">${alt.landKind}</option>
												</c:forEach>
											</select>
									</div>
								</div>
							</div>

							<div class="row from group">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Type of Land <span class="star">*</span></label>
									<div class="col-md-6">
										<select class="form-control SelectStyle" id="pitition1" name="landType"
											>
											<option value="0">--Select--</option>
											<c:forEach items="${landTypes }" var="alt">
							<option value="${alt.landsrno }">${alt.landType}</option>
														
							
							</c:forEach>
										</select>
									</div>
								</div>
							</div>

							<div class="otherland" id="3" style="display: none;">
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Others Land <span class="star">*</span></label>
										<div class="col-md-6">
											<input type="text" placeholder=" Type of land"
												class="form-control" id="olandtext" maxlength="30"
												name="otherland" />
										</div>
									</div>
								</div>

								<br>
							</div>
							<br>
							<div class="Petition170s1" id="land"></div>
							<div class="ppetioner" id="pland">

								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Select District <span
											class="star">*</span>
										</label>
										<div class="col-md-6">
											<select class="form-control SelectStyle"
												id="landDistrict" name="landDistrict">
												<option value="0">--Select--</option>
												<c:forEach items="${district}" var="alt">
												<option value="${alt.distCode }" >${alt.distName }</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Select Mandal <span
											class="star">*</span>
										</label>
										<div class="col-md-6">
											<select class="form-control SelectStyle" 
												id="landmandal" name="landmandal">
												<option value="0">--Select--</option>
												<option value="1">Mandal-1</option>



											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Revenue Village </label>
										<div class="col-md-6">
											<input type="text" class="form-control SelectStyle" 
												name="landvillage" id="landvillage">
											
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-sm-offset-2 form-group">
										<label class="col-md-6">Patta Passbook number</label>
										<div class="col-md-6">
											<input type="text" path="passbookNo" id="passbookNo"
												name="passbookNo" placeholder=" Patta number"
												class="form-control" maxlength="10" />
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Survey number <span
											class="star">*</span></label>
										<div class="col-md-6">
											<input type="text" placeholder=" Survey number"
												maxlength="15" path="surveyNo" id="surveyNo" name="surveyNo"
												class="form-control" />
										</div>
									</div>
								</div>
							<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Extent of land </label>
						<div class="col-md-3">
							<input type="text" placeholder="" maxlength="6"
								path="extentOfLand" id="extentOfLand" name="extentOfLand"
								class="form-control" />
						</div>
						<div class="col-md-0">

							<select class="form-control SelectStyle" name="units"
								style="width: 125px;" id="units">
								<option value="0">--Select--</option>
								<option value="1">Acre</option>
								<option value="2">Gunta</option>
								<option value="3">Square yards</option>
							</select>
						</div>


					</div>
					<div class="col-md-2">
						<div style="text-align: left;"
							>&nbsp;</div>
					</div>

				</div>
								<div class="modal-footer">
									<center>
										<div role="group" aria-label="group button">

											<input type="button" class="btn btn-primary" id="updateLand"
												data-dismiss="modal" value="Update" role="button"  /> <input
												type="button" class="btn btn-danger" data-dismiss="modal"
												value="Close" role="button" />

										</div>
								</div>
							</div>
							
							<input type="hidden" id="petId" name="petId" value="${petId }">
							</form>
						</div>
					</div>
					</center>
				</div>





			</div>
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




<script type="text/javascript">

$('#pitition1').on('change', function () {
	if ($(this).val() === "3") {
		$(".otherland").show();
	}
	else {
		$(".otherland").hide();
	}
});

$(function() {
	$(document).ready(function() {
		
		var row=$("#landTable tr").length;
		if (row==1) {
			$('#landdiv').hide();
		} else {
			$('#landdiv').show();
		}
	});

});

//adding land details dynamically
function addLand(){
	
	var landkind = $("#landKind").val();
	var landkindText = $("#landKind option:selected").text();
	
	var pitition1 = $("#pitition1").val();
	var pitition1Text = $("#pitition1  option:selected").text();
	var olandtext = $("#olandtext").val();
	var landDistrict = $("#landDistrict").val();
	var landDistrictText = $("#landDistrict  option:selected").text();
	var landmandal = $("#landmandal").val();
	var landmandalText = $("#landmandal option:selected").text();
	var landvillage = $("#landvillage").val();
	var passbookNo = $("#passbookNo").val();
	var surveyNo = $("#surveyNo").val();
	var extentOfLand = $("#extentOfLand").val();
	var units = $("#units  option:selected").text();
	
	   var frm = $('#landdetails').serialize();
	   var k=0;
		$.ajax({
			url : '/scst/petition/land/addlanddetails.htm',
			type : "POST",
			data : frm,
			success : function(response) {

				if(response=="N")
					{
					alert("Land details adding failed");
					return false;
					}
				else{

					var row=$('.table-bordered tr').length;
					if(row==1){
						k=0;
						}
						k=$('.table-bordered tr:last-child td:nth-child(2)').html();

						if(isNaN(k)){
							k=0;
							}
						
					 var s = '<tr ><td align="center" style="display: none;" id="hiddencode">'
							+ response
							+ '</td><td align="center">'
						+ ++k
						+ '</td><td>'
						+ landkindText
						+ '</td><td>'
						+ pitition1Text
						+ '</td><td style="text-align: center;"  >'
						+ passbookNo
						+ '</td><td align="center" width: 15%"  >'
						+ surveyNo
						+ '</td><td style="text-align: center;"  >'
						+ extentOfLand + (units)
						+ '</td><td style="text-align: center;" data-toggle="modal" data-target="#squarespaceModal"   ><img height="22px" id="edit" data-toggle="tooltip"  title="Click to delete"   src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
						
						$("#landTable").append($(s)); 
						$('#landdiv').show();
						


					$('#landKind').prop('selectedIndex',0);
					$('#pitition1').prop('selectedIndex',0);
					$('#olandtext').val('');
					$('#landDistrict').prop('selectedIndex',0);
					$('#landmandal').prop('selectedIndex',0);
					$('#landvillage').val('');
					$('#passbookNo').val('');
					$('#surveyNo').val('');
					$('#extentOfLand').val('');
					 $("#units").val('');
					
				}
		}

});
}



//deleting land details onclick
$(document).on('click','#btn-remove', function() {
	 
    var $row = $(this).closest("tr"); // Find the row
	var landcode = $row.find("#hiddencode").text();
	var petitionerId=$("#petitionerId").val();
	var con = confirm("Are you sure you want to delete?");
	if (con) {
		$.ajax({
			url : '/scst/petition/land/deleteattachmentresult.htm',
			type : "POST",
			data : {
				"landcode" : landcode,
				"petitionerId": petitionerId
			},
			success : function(response) {
				//$('#btn-remove').closest('tr').remove();
				if(response=="Y"){
					$(".table-bordered tr td").filter(function() {
						return $(this).text() ===landcode;
					}).closest("tr").remove();
					var row=$("#landTable tr").length;
					if (row == 1) {
						$('#landdiv').hide();
					} else {
						$('#landdiv').show();
					}
				
					}
				else{
					alert(" Delete Unsuccessfull ");
					
					}
				
			}
		});

	}

});


//deleting land details onclick
$(document).on('click','#edit', function() {

	
    var $row = $(this).closest("tr"); // Find the row
	var landcode = $row.find("#hiddencode").text();
	var petitionerId=$("#petitionerId").val();
	
		$.ajax({
			url : '/scst/petition/land/getLanddetails.htm',
			type : "GET",
			data : {
				"landcode" : landcode,
				"petitionerId": petitionerId
			},
			success : function(response) {
				 var obj = JSON.parse(response);
				
				$("#squarespaceModal #extentOfLand").val(obj.extentOfLand);
				$("#squarespaceModal #passbookNo").val(obj.passbookNo);
				$("#squarespaceModal #surveyNo").val(obj.surveyNo);
				$("#squarespaceModal #landvillage").val(obj.landvillage);

				//$('#squarespaceModal #landKind option[value=+'obj.landKind+']').attr('selected','selected');
				$('#squarespaceModal #landKind').val(obj.landKind).change();
				$('#squarespaceModal #pitition1').val(obj.landType).change();
				$('#squarespaceModal #landDistrict').val(obj.landDistrict).change();

				$('#squarespaceModal #landmandal').val(obj.landmandal).change();
				$('#squarespaceModal #units').val(obj.units).change();

				
			}
		});


});


//update land

$(document).on('click','#updateLand', function() {

	   var $row = $("#edit").closest("tr"); // Find the row
		var landcode = $row.find("#hiddencode").text();
	var frm = $('#editland').serialize();
	$.ajax({
		url : '/scst/petition/land/updatelanddetails.htm/'+landcode,
		type : "POST",
		data : frm,
		success : function(response) {
		if(response=="Y"){
			getLandList();
			}
		else{
			alert("Land details updation failed try again")
			}
	}

});
});


function getLandList(){
	$("#landTabletr").empty();
	var k=0;
	var petid=$("#petId").val();

	$.ajax({
		url : '/scst/petition/land/getLandDetailsAjax.htm',
		type : "GET",
		data : {
			"petid" : petid },
		success : function(response) {
			var result = JSON.parse(response);
			 var unit;
			for (var i = 0; i < response.length; i++) {
 					if(result[i].units=="1"){
							unit="Acre";
 	 					}

					if(result[i].units=="2"){
						unit="Gunta";
	 					}
					
					if(result[i].units=="3"){
						unit="Square yards";
	 					}
					
					var s = '<tr><td style="display:none;" id="hiddencode" align="center">'
					+ result[i].landId
					+ '</td><td align="center">'
					+ ++k
					+ '</td><td >'
					+ result[i].landKind
					+ '</td><td align="center">'
					+ result[i].landType
					+ '</td><td align="center">'
					+ result[i].passbookNo
					+ '</td><td align="center">'
					+ result[i].surveyNo
					+ '</td><td align="center">'
					+ result[i].extentOfLand + '('+unit+')' 
					+ '</td><td style="text-align: center;"  data-toggle="modal" data-target="#squarespaceModal"  ><img height="22px" id="edit"   title="Click here to edit"   src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
					$("#landTabletr").append(s);
				
				}
			
	}

});
}


function focus(){
	document.getElementById("landKind").focus();
	}

</script>
</html>