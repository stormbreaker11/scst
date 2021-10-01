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
<script src="${pageContext.request.contextPath}/static/js/petitionervalidations.js"></script>
<style>
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
.select_msgupload {
	display: none;
}

.general_show {
	display: none;
}

.service_show {
	display: none;
}

.select_Status {
	display: none;
}

.select_Status02 {
	display: none;
}

.Officials_20 {
	display: none;
}

.Button {
	alighn: Center;
}

.chosen-container-single .chosen-single {
	background: white !important;
	height: 33px !important;
	padding: 5px;
}

.petitiontype {
	display: none;
}

.Petition170s1, .Petition170s2 {
	display: none;
}

.ppetioner {
	display: none;
}

.otherland {
	display: none;
}

.typeofservice_show {
	display: none;
}

.Typeofatrocity {
	display: none;
}

.courtpetione {
	display: none;
}

.courtpetione11 {
	display: none;
}

.PoliceComplaint {
	display: none;
}

.abuser_show {
	display: none;
}

.respondent_individual2 {
	display: none;
}

.Officials_22 {
	display: none;
}

.respondent_individual3 {
	display: none;
}

.Officials_23 {
	display: none;
}

.respondent_individual4 {
	display: none;
}

.Officials_4 {
	display: none;
}

.jointpetitioner_show {
	display: none;
}

.respondent_individual {
	display: none;
}

.select_ref {
	display: none;
}

.modal-dialog {
	width: 60% !important;
}

#form-control {
	display: block;
	width: 20%;
	height: 34px;
	border-radius: 5px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgb(0 0 0/ 8%);
	box-shadow: inset 0 1px 1px rgb(0 0 0/ 8%);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
}
</style>
<body style="margin-left: 30px; margin-right: 30px;">
	<div class="row">
		<div align="center"><h1 style="color: #2d3990; "  >
			Petitioner Details
		</h1></div>
		<div align="left" style="background: #2d3990; color: white; height: 30px; vertical-align: middle; padding-top: 5px; padding-left: 20px; ">
													<b>Petitioner - Entry</b>
													
												</div>
											
		<br>
		<form:form modelAttribute="register" name="register"
			enctype="multipart/form-data">
			
			<c:if test="${ empty error }">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">&nbsp;&nbsp;Are You the <span
						class="star">*</span></label>
					<div class="form-check-inline">
						<label class="col-md-2"> <form:radiobutton
							 class="form-check-input" id="check2"
							name="vehicle2" path="isPetitioner" value="Y"/>Petitioner
						</label>
					</div>
					<div class="col-md-offset-2 ">
						<label class="form-check-label"> <form:radiobutton
							 class="form-check-input" id="check3"
							name="vehicle2" path="isPetitioner" value="N"/>On behalf of the petitioner
						</label>
					</div>
				</div>
			</div></c:if>
		<div align="center" ><h3><font color="red">${error}</font></h3></div>
			<div class="applicantpetitioner" id="yes" style="display: none;">
				<!-- <h5 class="subhead">
						<b>PETITIONER DETAILS</b>
					</h5> -->
				<br>
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Name of the Petitioner <span
								class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input type="text" class="form-control"
									 path="petionerName" id="petionerName" maxlength="100" />
							</div>
						</div>
					</div><div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Relation Type <span class="star">*</span></label>
							<div class="col-md-3">
								<form:select class="form-control SelectStyle" id="relation"
									path="relationType">
									<form:option value="0">--Select--</form:option>
									<form:option value="F">Father</form:option>
									<form:option value="H">Husband</form:option>
									<form:option value="S">Spouse</form:option>
								</form:select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Relation Name<span class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input type="text" class="form-control"
									 path="relationName" id="relationName" maxlength="100" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Age of the Petitioner ( in years)<span
								class="star">*</span>
							</label>
							<div class="col-md-2">
								<form:input type="text" class="form-control" id="age"   maxlength="3"
									path="age" />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Gender <span class="star">*</span></label>
							<div class="col-md-3">
								<form:select class="form-control SelectStyle" id="gender"
									path="gender">
									<form:option value="0">--Select--</form:option>
									<form:option value="M">Male</form:option>
									<form:option value="F">Female</form:option>
									<form:option value="O">Others</form:option>
								</form:select>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Address </label>
							<div class="col-md-6">
								<form:textarea cols="40" rows="7" id="address" path="address" maxlength="200"></form:textarea>
							</div>
						</div>
					</div>

					
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Select Caste <span class="star">*</span></label>
							<div class="col-md-4">
								<form:select class="form-control SelectStyle" id="prcaste"
									path="caste">
									<form:option value="0">--Select--</form:option>
									<form:option value="1">Schedule Caste (SC)</form:option>
									<form:option value="2">Schedule Tribe (ST)</form:option>
								</form:select>
							</div>
						</div>
					</div>
					<div class="castesub1" id="stsub">

						<div class="row" >
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Select Sub Caste</label>
								<div class="col-md-3">
									<form:select class="form-control SelectStyle" id="prsubcaste" path="subcaste">
										<form:option value="0">--Select--</form:option>
									</form:select>

								</div>
							</div>
						</div>
						<!-- <div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Upload Caste certificate</label>
									<div class="col-md-6">
										<input name="" placeholder="" class="form-control" type="file">
									</div>
								</div>
							</div>
							<div class=" col-md-offset-5 form-group " style="color: red;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								File Format to be uploaded (.pdf,,.jpg,.jpeg) and its maximum
								size is 5 MB</div> -->
					</div>
					<!-- <div class="castesub2" id="scsub">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Select Sub Caste</label>
									<div class="col-md-6">
										<select class="form-control SelectStyle" id="SC">
											<option>--Select--</option>
											<option>SC sub caste1</option>
											<option>SC sub caste1</option>
											<option>SC sub caste1</option>
										</select>

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Upload Caste certificate</label>
									<div class="col-md-6">
										<input name="" placeholder="" class="form-control" type="file">
									</div>

								</div>
							</div>
							<div class="col-md-offset-5 form-group " style="color: red;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								File format to be uploaded (.pdf,,.jpg,.jpeg) and its maximum
								size is 5 MB</div>
						</div> -->
						<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Select District <span class="star">*</span>
							</label>
							<div class="col-md-4">
								<form:select class="form-control SelectStyle" id="district"
									path="district" onchange="getMandals('district', 'mandal')">
									<form:option value="0">--Select--</form:option>
									<c:forEach var="alt" items="${district }">
									<form:option value="${alt.distCode}">${alt.distName}</form:option>
									</c:forEach>
								</form:select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Select Mandal <span class="star">*</span>
							</label>
							<div class="col-md-4">
								<form:select class="form-control" path="mandal" id="mandal" >
								<form:option value="0">--Select--</form:option>
								
								</form:select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Village <span class="star">*</span>
							</label>
							<div class="col-md-4">
								<form:input class="form-control" path="village" id="village" maxlength="100"/>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Pincode <span class="star">*</span></label>
							<div class="col-md-2">
								<form:input type="text" class="form-control" path="pincode" id="pincode" maxlength="6"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Alternate Mobile Number </label>
							<div class="col-md-3">
								<form:input type="text" path="prMobile" id="prMobile" class="form-control" maxlength="10" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">E-Mail ID </label>
							<div class="col-md-4">
								<form:input type="text" class="form-control" path="prMail" id="prMail" maxlength="50"  />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Identity Type <span class="star">*</span></label>
							<div class="col-md-3">
								<form:select class="form-control SelectStyle" id="Identitype"
									path="prProofType">
									<%-- 
									<form:option value="0">--Select--</form:option>
									<form:option value="1">Aadhaar ID</form:option>
									<form:option value="2">Voter ID</form:option>
									<form:option value="3">Driving Licence</form:option>
									<form:option value="4">Passport</form:option>
									<form:option value="5">Ration card</form:option>
									<form:option value="6">Other Identity</form:option> --%>
									<form:option value="0">--Select1--</form:option>
									<c:forEach items="${identities}" var="alt" >
									<form:option value="${alt.idcode}">${alt.idname}</form:option>
									</c:forEach>
								</form:select>
							</div>
						</div>
					</div>
					<div class="identitytype22" id="otherid" style="display: none;">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Other Identity type</label>
								<div class="col-md-6">
									<form:input type="text" class="form-control"
										 path="prOtherid" id="prOtherid" maxlength="50" />
								</div>
							</div>
						</div>
					
					</div>
					<div class="identitytype1">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Identity Number<span
									class="star">*</span>
								</label>
								<div class="col-md-3">
									<form:input type="text" class="form-control" path="prProofId" id="prProofId" maxlength="35" />
								</div>
							</div>
						</div>
						<div class="select_upload" id="upload">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Upload the Identity document</label>
									<div class="col-md-6">
										<input name="prdoc" id="prdoc" class="form-control"
											type="file" onchange="validDoc('prdoc')" />
									</div>
										
								</div>
								<div class="col-md-offset-2 form-group " style="color: red;">allowed .pdf of 1 mb size
							</div>
							</div>
						</div>
						<!-- <div class="col-md-offset-5 form-group " style="color: red;">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							File format to be uploaded (.pdf,,.jpg,.jpeg) and its maximum
							size is 5 MB
							
							
							</div> -->
							
							
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6"> Upload Petitioner
							Photograph<span class="star">*</span>
						</label>
						<div class="col-md-6">
							<input type="file" name="photo" id="photo"  class="form-control"
								onchange="validPhoto('photo')">
						</div>
					</div>
					<div class="col-md-offset-2 form-group " style="color: red;">
							 allowed .jpg/jpeg of 200 kb size
							</div>
				</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6"> Upload Petitioner Signature <span
								class="star">*</span>
							</label>
							<div class="col-md-6">
								<input type="file" name="signature" id="signature" class="form-control"
								onchange="validSign('signature')"	>
							</div>
						</div>
						<div class="col-md-offset-2 form-group " style="color: red;">allowed .jpg/jpeg of 100 kb size
							</div>
					</div>
				
					</div>
					

				</div>
				
				
				
				
				
				
				

				<div class="col-md-5 col-md-offset-4">
					<a href=""><div class="btn btn-md btn-danger">Reset</div></a> <a
						href="#"><div class="btn btn-md btn-primary" data-title="Edit"
							data-toggle="modal" data-target="#edit" data-placement="top"
							data-toggle="tooltip" onclick="savePetition()">Submit</div></a>
					<!-- <a href="#"><div
								class="btn btn-md btn-info">Continue</div> </a>-->
				</div>
			</div>
	

<!-- on behalf -->
	<div class="applicantpetitioner2" id="no" style="display: none;">
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Name of person who is applying on
					behalf of the petitioner <span class="star">*</span>
				</label>
				<div class="col-md-6">
					<form:input type="text" class="form-control"
						 path="bprName" id="bprName" maxlength="100" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6"> Designation/Profession <span
					class="star">*</span></label>
				<div class="col-md-3">
					<form:input type="text" class="form-control"
					 path="bprProfession" id="bprProfession" maxlength="50" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Address </label>
				<div class="col-md-6">
					<form:textarea cols="45" rows="4" path="bprAddress" id="bprAddress" maxlength="200" placeholder=""></form:textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6"> Mobile Number</label>
				<div class="col-md-3">
					<form:input type="text" class="form-control"
						 path="bprMobile" maxlength="10" />
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">E-mail ID</label>
				<div class="col-md-4">
					<form:input type="text" class="form-control"
						 path="bprMail" maxlength="50" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Identity Type <span class="star">*</span></label>
				<div class="col-md-3">
					<form:select class="form-control SelectStyle"  id="Identitypeno"
						path="bprProofId" >
						<form:option value="0">--Select--</form:option>
									<c:forEach items="${identities}" var="alt" >
									<form:option value="${alt.idcode}">${alt.idname}</form:option>
									</c:forEach>
					</form:select>
				</div>
			</div>
		</div>
		<div id="otherid2" style="display: none;">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Other Identity type :<span
						class="star">*</span>
					</label>
					<div class="col-md-6">
						<form:input type="text" class="form-control"
							 path="bprotherid" id="bprotherid" maxlength="50"/>
					</div>
				</div>
			</div>
		</div>
		<div class="identitytype10" id="identity02">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Identity Number<span class="star">*</span>
					</label>
					<div class="col-md-3">
						<form:input type="text" class="form-control"
							 path="bprProofNo" id="bprProofNo" maxlength="35" />
					</div>
				</div>
			</div>
			<div class="select_upload" id="upload">
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Upload the Identity document </label>
						<div class="col-md-6">
							<input type="file" name="bid" id="bid" placeholder="" class="form-control" onchange="validDoc('bid')" >
						</div>
					</div>
<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .pdf of 1 mb size </div>
				</div>
				
			</div>
			
		</div>
		

		<div class="row">
			<div  class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6"> Upload signature who is
					applying on behalf of the petitioner<span class="star">*</span>
				</label>
				<div class="col-md-6">
					<input type="file" name="bSign" id="bSign" class="form-control" onchange="validSign('bSign')" ><div style="color: red;">
			</div>
				</div> 
			</div>
				<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .jpg/.jpeg of 100 kb size</div>
		</div>
		



<!-- 
<h5 class="subhead">
						<b>PETITIONER DETAILS</b>
					</h5>  -->

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Name of the Petitioner <span
					class="star">*</span>
				</label>
				<div class="col-md-6">
					<form:input type="text" class="form-control"
						 path="bprpetionerName" id="bprpetionerName" maxlength="100" />
				</div>
			</div>
		</div>
			<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Relation Type <span class="star">*</span></label>
				<div class="col-md-3">
					<form:select class="form-control SelectStyle" id="bprrelation"
						path="bprrelationType">
						<form:option value="0">--Select--</form:option>
						<form:option value="F">Father</form:option>
						<form:option value="H">Husband</form:option>
						<form:option value="S">Spouse</form:option>
					</form:select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Relation Name<span class="star">*</span>
				</label>
				<div class="col-md-4">
					<form:input type="text" class="form-control" value=""
						 path="bprrelationName" id="bprrelationName" maxlength="100" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Age of the Petitioner ( in years)<span
					class="star">*</span>
				</label>
				<div class="col-md-2">
					<form:input type="text" class="form-control" maxlength="3"
						 path="bprage" id="bprage"/>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Gender <span class="star">*</span></label>
				<div class="col-md-3">
					<form:select class="form-control SelectStyle" id="bprgender" path="bprgender">
						<form:option value="0">--Select--</form:option>
						<form:option value="M">Male</form:option>
						<form:option value="F">Female</form:option>
						<form:option value="O">Others</form:option>
					</form:select>
				</div>
			</div>
		</div>
	
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Address </label>
				<div class="col-md-6">
					<form:textarea cols="51"  rows="7" id="bpraddress" path="bpraddress" maxlength="200"></form:textarea>
				</div>
			</div>
		</div>

		
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Select Caste <span class="star">*</span></label>
				<div class="col-md-4">
					<form:select class="form-control SelectStyle" id="bprcaste"
						path="bprcaste">
						<form:option value="0">--Select--</form:option>
						<form:option value="1">Schedule Caste (SC)</form:option>
						<form:option value="2">Schedule Tribe (ST)</form:option>
					</form:select>
				</div>
			</div>
		</div>
		
						<div class="row" >
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Select Sub Caste</label>
								<div class="col-md-3">
									<form:select class="form-control SelectStyle" id="bprsubcaste" path="bprsubcaste">
										<form:option value="0">--Select--</form:option>
									</form:select>

								</div>
							</div>
						</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Select District <span class="star">*</span>
				</label>
				<div class="col-md-4">
					<form:select class="form-control SelectStyle" id="bprdistrict" path="bprdistrict" onchange="getMandals('bprdistrict','bprmandal' )" >
								<form:option value="0">--Select--</form:option>
								<c:forEach var="alt" items="${district }">
									<form:option style="text-transform:capitalize" value="${alt.distCode}">${alt.distName}</form:option>
								</c:forEach>
							</form:select>
				</div>
			</div>
		</div>
		
		<div class="castesub1" id="stsub">

			<!-- <div class="row" style="display: none;">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Select Sub Caste</label>
					<div class="col-md-6">
						<select class="form-control SelectStyle" id="st">
							<option value="0">--Select--</option>
							<option  value="0" >ST sub caste1</option>
							<option  value="0" >ST sub caste1</option>
							<option  value="0" >ST sub caste1</option>
						</select>

					</div>
				</div>
			</div> -->
			<!-- <div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Upload Caste certificate</label>
									<div class="col-md-6">
										<input name="" placeholder="" class="form-control" type="file">
									</div>
								</div>
							</div>
							<div class=" col-md-offset-5 form-group " style="color: red;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								File Format to be uploaded (.pdf,,.jpg,.jpeg) and its maximum
								size is 5 MB</div> -->
		</div>
		<!-- <div class="castesub2" id="scsub">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Select Sub Caste</label>
									<div class="col-md-6">
										<select class="form-control SelectStyle" id="SC">
											<option>--Select--</option>
											<option>SC sub caste1</option>
											<option>SC sub caste1</option>
											<option>SC sub caste1</option>
										</select>

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Upload Caste certificate</label>
									<div class="col-md-6">
										<input name="" placeholder="" class="form-control" type="file">
									</div>

								</div>
							</div>
							<div class="col-md-offset-5 form-group " style="color: red;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								File format to be uploaded (.pdf,,.jpg,.jpeg) and its maximum
								size is 5 MB</div>
						</div> -->
			<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Select Mandal <span class="star">*</span>
							</label>
							<div class="col-md-4">
								<form:select class="form-control" path="bprmandal" id="bprmandal" >
								<form:option value="0">--Select--</form:option>
								</form:select>
							</div>
							</div>
						</div>
					
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Village <span class="star">*</span>
							</label>
							<div class="col-md-4">
								<form:input class="form-control" path="bprvillage" id="bprvillage" maxlength="100"/>
							</div>
						</div>
					</div>

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Pincode <span class="star">*</span></label>
				<div class="col-md-3">
					<form:input type="text" class="form-control" path="bprpincode" id="bprpincode" size="6" maxlength="6" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Alternate Mobile Number </label>
				<div class="col-md-3">
					<form:input type="text" path="bprprMobile" id="bprprMobile" class="form-control" size="10" maxlength="10" />
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">E-Mail ID </label>
				<div class="col-md-4">
					<form:input type="text" class="form-control" value="" path="bprprMail" id="bprprMail" maxlength="50"/>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Identity Type <span class="star">*</span></label>
				<div class="col-md-3">
					<form:select class="form-control SelectStyle" id="brIdentitype"
						path="bprprProofType" >
						<form:option value="0">--Select--</form:option>
									<c:forEach items="${identities}" var="alt" >
									<form:option value="${alt.idcode}">${alt.idname}</form:option>
									</c:forEach>
					</form:select>
				</div>
			</div>
		</div>
		<div id="behalfother" style="display: none;">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Other Identity type : </label>
					<div class="col-md-6">
						<form:input type="text" class="form-control"
							 path="bprprOtherProofType" id="bprprProofType" />
					</div>
				</div>
			</div>

		</div>
		<div class="identitytype1" id="identity">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Identity Number<span class="star">*</span>
					</label>
					<div class="col-md-3">
						<form:input type="text" class="form-control" value=""  path="bprprProofId" id="bprprProofId" />
					</div>
				</div>
			</div>
			<div class="select_upload" id="upload">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Upload the Identity document</label>
								<div class="col-md-6">
									<input type="file" id="bprpetitiondoc" name="bprpetitiondoc" placeholder=""
										class="form-control" />
								</div>
							</div>
							<div class="col-md-offset-2 form-group " style="color: red;">
								allowed .pdf of 1 mb size</div>
						</div>

					</div>
		
		</div>
		

<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6"> Upload Petitioner 
					Photograph<span class="star">*</span>
				</label>
				<div class="col-md-6">
					<input type="file" id ="bprpetitonphoto" name="bprpetitonphoto" placeholder="" class="form-control"
						onchange="validPhoto('bprpetitonphoto')">
				</div>
			</div>
			<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .jpg/jpeg of 200 kb size</div>
		</div>
		<div class="select_upload" id="upload">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Upload Petitioner Signature <span
						class="star">*</span>
					</label>
					<div class="col-md-6">
						<input type="file" id="bprpetitionsign" name="bprpetitionsign" placeholder="" class="form-control"
							onchange="validSign('bprpetitionsign')">
					</div>
				</div>
				<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .jpg/jpeg of 100 kb size</div>
			</div>
			
		</div>
		
		
		<br> <br>
		<div class="col-md-5 col-md-offset-4">
			<a href=""><div class="btn btn-md btn-danger">Reset</div></a> <a
				href="#"><div class="btn btn-md btn-primary" data-title="Edit"
					data-toggle="modal" data-target="#edit" data-placement="top"
					data-toggle="tooltip" onclick="savePetition()">Submit</div></a> <a
				href="#">
				<!-- <div
								class="btn btn-md btn-info">Continue</div> -->
			</a>
		</div>
	</div>
	</form:form>
	</div>
	
	<br>
	<br>
	<br>
	


</body>

	<script>


	//radio button switching script
	$('#check2').on('click', function() {
		if ($(this).val() === "Y") {
			
			$(".applicantpetitioner").show(); //petitioner self
			$(".applicantpetitioner2").hide(); //on behalf
		} 
	});

	//radio button switching script
	$('#check3').on('click', function() {
		
		if ($(this).val() === "N") {
		
			$(".applicantpetitioner2").show(); //on behalf
			$(".applicantpetitioner").hide(); //petitioner self
		} 
	});



	//Other id text box script 
	$('#Identitype').on('change', function() {
		if ($(this).val() === "O") {
			$("#otherid").show();
		} else {
			$("#otherid").hide();
		}
	});
	
	$('#brIdentitype').on('change', function() {
	
		if ($(this).val() === "O") {
			$("#behalfother").show();
		} else {
			$("#behalfother").hide();
		}
	});
	
	$('#Identitypeno').on('change', function() {
	
		if ($(this).val() === "O") {
			$("#otherid2").show();
		} else {
			$("#otherid2").hide();
		}
	});
	
	//fetching subcaste onchange caste select option 
	$(document)
	.ready(
			function() {

				$('#prcaste')
						.on(
								'change',
								function() {
									
									var caste = $('#prcaste').val();

							
									//var dist = $('#dist').val();
									$
											.ajax({
												type : 'GET',
												url : '/scst/loadcaste/'
														+ caste,
												success : function(
														result) {

													
													$('#prsubcaste').html('');
													$("#prsubcaste").append(new Option("--Select--", "0"));
													var result = JSON
															.parse(result);
													var s = '';
													for (var i = 0; i < result.length; i++) {
														s += '<option style="text-transform:capitalize"; value="'+result[i].ccode+'">'
																+ result[i].cname
																+ '</option>';
													}
													$('#prsubcaste')
															.append(s);
												}
											});
								});

			});







	//fetching subcaste onchange caste select option 
	$(document)
	.ready(
			function() {

				$('#bprcaste')
						.on(
								'change',
								function() {
							
									var caste = $('#bprcaste').val();

							
									//var dist = $('#dist').val();
									$
											.ajax({
												type : 'GET',
												url : '/scst/loadcaste/'
														+ caste,
												success : function(
														result) {

													
													$('#bprsubcaste').html('');
													$("#bprsubcaste").append(new Option("--Select--", "0"));
													var result = JSON
															.parse(result);
													var s = '';
													for (var i = 0; i < result.length; i++) {
														s += '<option style="text-transform:capitalize"; value="'+result[i].ccode+'">'
																+ result[i].cname
																+ '</option>';
													}
													$('#bprsubcaste')
															.append(s);
												}
											});
								});

			});
	//fetch mandals onchange 
	function getMandals(ditrict,mandal){
		var district = $('#'+ditrict+'').val();
		//var dist = $('#dist').val();
		$
				.ajax({
					type : 'GET',
					url : '/scst/loadmandal/'
							+ district,
					success : function(
							result) {

						
						$('#'+mandal+'').html('');
						$('#'+mandal+'').append(new Option("--Select--", "0"));
						var result = JSON
								.parse(result);
						var s = '';
						for (var i = 0; i < result.length; i++) {
							s += '<option style="text-transform:capitalize"; value="'+result[i].mcode+'">'
									+ result[i].mname
									+ '</option>';
						}
						$('#'+mandal+'')
								.append(s);
					}
				});
		
		}
	
	
	
	</script>


</html>
