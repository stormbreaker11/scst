<jsp:include page="/WEB-INF/pages/validate.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
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
<link rel="icon"
	href="${pageContext.request.contextPath}/static/images/deptlogo.png"
	type="image/gif" sizes="16x16">
<title>SC ST COMMISSION</title>
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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/style_smenu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/all_colors.css">
<link
	href="${pageContext.request.contextPath}/static/css/sb-admin-2.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.7.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/script.js"></script>

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
													<b>Petitioner Details</b>
													
												</div>
												<div align="center"><h3>${error}</h3></div>
		<br>
		<form:form modelAttribute="register" name="register"
			enctype="multipart/form-data">
			
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
			</div>
			<%-- <div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Are You The Applicant/Petitioner <span
						class="star">*</span></label>
					<div class="col-md-6">
						<form:select class="form-control SelectStyle" id="Applicant"
							path="isPetitioner">
							<form:option value="0">--Select--</form:option>
							<form:option value="Y">YES</form:option>
							<form:option value="N">NO</form:option>
						</form:select>
					</div>
				</div>
			</div> --%>
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
									placeholder=" Full Name" path="petionerName" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Age of the Petitioner ( in years)<span
								class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input type="text" id="form-control" placeholder=" Age " maxlength="3"
									path="age" />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Gender <span class="star">*</span></label>
							<div class="col-md-6">
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
							<label class="col-md-6">Relation Type <span class="star">*</span></label>
							<div class="col-md-6">
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
									placeholder=" Relation name " path="relationName"  />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Address </label>
							<div class="col-md-6">
								<form:textarea cols="40" rows="7" path="address"></form:textarea>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Select District <span class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:select class="form-control SelectStyle" id="district"
									path="district">
									<form:option value="0">--Select--</form:option>
									<form:option value="1">Hyderabad</form:option>
									<form:option value="2">Rangareddy</form:option>
									<form:option value="3">Nizamabad</form:option>
									<form:option value="4">Mahabubnagar</form:option>
									<form:option value="5">Medak</form:option>
									<form:option value="6">Nalgonda</form:option>
									<form:option value="7">Warangal</form:option>
									<form:option value="8">Karimnagar</form:option>
									<form:option value="9">Adilabad</form:option>
									<form:option value="10">Khammam</form:option>
									<form:option value="11">Khammam</form:option>
									<form:option value="12">Medchal</form:option>
									<form:option value="13">Vikarabad</form:option>
									<form:option value="14">Sangareddy</form:option>
									<form:option value="15">Siddipet</form:option>
									<form:option value="16">Hanmakonda</form:option>
									<form:option value="17"> Nagakarnool</form:option>
									<form:option value="18">Yadadri</form:option>
									<form:option value="19">Komaram-bheem</form:option>
								</form:select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Select Caste <span class="star">*</span></label>
							<div class="col-md-6">
								<form:select class="form-control SelectStyle" id="subcaste"
									path="caste">
									<form:option value="0">--Select--</form:option>
									<form:option value="1">ST</form:option>
									<form:option value="2">SC</form:option>
								</form:select>
							</div>
						</div>
					</div>
					<div class="castesub1" id="stsub">

						<div class="row" style="display: none;">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Select Sub Caste</label>
								<div class="col-md-6">
									<select class="form-control SelectStyle" id="st">
										<option value="0">--Select--</option>
										<option value="0">ST sub caste1</option>
										<option value="0">ST sub caste1</option>
										<option value="0">ST sub caste1</option>
									</select>

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
							<label class="col-md-6">Mandal <span class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input class="form-control" path="mandal" namxmlns="mandal"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Village <span class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input class="form-control" path="village" namxmlns="village"/>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Pincode <span class="star">*</span></label>
							<div class="col-md-6">
								<form:input type="text" class="form-control" path="pincode" maxlength="6"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Alternate Mobile Number </label>
							<div class="col-md-6">
								<form:input type="text" path="prMobile" class="form-control" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">E-Mail ID </label>
							<div class="col-md-6">
								<form:input type="text" class="form-control" path="prMail" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Identity Type <span class="star">*</span></label>
							<div class="col-md-6">
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
					<div class="identitytype22" id="otherid">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Other Identity type : </label>
								<div class="col-md-6">
									<form:input type="text" class="form-control"
										placeholder=" Type Identity Name " path="prOtherid" />
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
								<div class="col-md-6">
									<form:input type="text" class="form-control"
										placeholder=" Identity no. " path="prProofId" />
								</div>
							</div>
						</div>
						<div class="select_upload" id="upload">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Upload the Identity document</label>
									<div class="col-md-6">
										<input name="prdoc" placeholder="" class="form-control"
											type="file" />
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
							<input type="file" name="photo" placeholder="" class="form-control"
								>
						</div>
					</div>
					<div class="col-md-offset-2 form-group " style="color: red;">
							 allowed .jpg/jpeg of 1 mb size
							</div>
				</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6"> Upload signature of Petitioner <span
								class="star">*</span>
							</label>
							<div class="col-md-6">
								<input type="file" name="signature" placeholder="" class="form-control"
									>
							</div>
						</div>
						<div class="col-md-offset-2 form-group " style="color: red;">allowed .jpg/jpeg of 1 mb size
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
	

	<div class="applicantpetitioner2" id="no" style="display: none;">
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Name of person who is applying on
					behalf of the petitioner <span class="star">*</span>
				</label>
				<div class="col-md-6">
					<form:input type="text" class="form-control"
						placeholder="  Full Name " path="bprName" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6"> Designation/Profession <span
					class="star">*</span></label>
				<div class="col-md-6">
					<form:input type="text" class="form-control"
						placeholder="Profession" path="bprProfession" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Address </label>
				<div class="col-md-6">
					<form:textarea cols="45" rows="4" path="bprAddress" placeholder=""></form:textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6"> Mobile Number</label>
				<div class="col-md-6">
					<form:input type="text" class="form-control"
						placeholder="mobile no" path="bprAddress" />
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">E-mail ID</label>
				<div class="col-md-6">
					<form:input type="text" class="form-control"
						placeholder="e-Mail ID" path="bprMail" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Identity Type <span class="star">*</span></label>
				<div class="col-md-6">
					<form:select class="form-control SelectStyle" id="Identitypeno"
						path="bprProofId">
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
						<input type="text" class="form-control"
							placeholder=" Type Identity Name ">
					</div>
				</div>
			</div>
		</div>
		<div class="identitytype10" id="identity02">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Identity Number<span class="star">*</span>
					</label>
					<div class="col-md-6">
						<form:input type="text" class="form-control"
							placeholder=" Identity no. " path="bprProofNo" />
					</div>
				</div>
			</div>
			<div class="select_upload" id="upload">
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Upload the Identity document </label>
						<div class="col-md-6">
							<input type="file" name="bid" placeholder="" class="form-control" >
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
					<input type="file" name="bSign" placeholder="" class="form-control" ><div style="color: red;">
			</div>
				</div> 
			</div>
				<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .pdf of 1 mb size</div>
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
						placeholder=" Full Name" path="bprpetionerName" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Age of the Petitioner ( in years)<span
					class="star">*</span>
				</label>
				<div class="col-md-6">
					<form:input type="text" id="form-control" size="3"
						placeholder=" Age " path="bprage" />
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Gender <span class="star">*</span></label>
				<div class="col-md-6">
					<form:select class="form-control SelectStyle" id="" path="bprgender">
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
				<label class="col-md-6">Relation Type <span class="star">*</span></label>
				<div class="col-md-6">
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
				<div class="col-md-6">
					<form:input type="text" class="form-control" value=""
						placeholder=" Relation name " path="bprrelationName" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Address </label>
				<div class="col-md-6">
					<form:textarea cols="51"  rows="7" path="bpraddress"></form:textarea>
				</div>
			</div>
		</div>

		
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Select Caste <span class="star">*</span></label>
				<div class="col-md-6">
					<form:select class="form-control SelectStyle" id="bprsubcaste"
						path="bprcaste">
						<form:option value="0">--Select--</form:option>
						<form:option value="1">ST</form:option>
						<form:option value="2">SC</form:option>
					</form:select>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Select District <span class="star">*</span>
				</label>
				<div class="col-md-6">
					<form:select class="form-control SelectStyle" id="" path="bprdistrict">
						<form:option value="0">--Select--</form:option>
						<form:option value="1">Hyderabad</form:option>
						<form:option value="2">Rangareddy</form:option>
						<form:option value="3">Nizamabad</form:option>
						<form:option value="4">Mahabubnagar</form:option>
						<form:option value="5">Medak</form:option>
						<form:option value="6">Nalgonda</form:option>
						<form:option value="7">Warangal</form:option>
						<form:option value="8">Karimnagar</form:option>
						<form:option value="9">Adilabad</form:option>
						<form:option value="10">Khammam</form:option>
						<form:option value="11">Khammam</form:option>
						<form:option value="12">Medchal</form:option>
						<form:option value="13">Vikarabad</form:option>
						<form:option value="14">Sangareddy</form:option>
						<form:option value="15">Siddipet</form:option>
						<form:option value="16">Hanmakonda</form:option>
						<form:option value="17"> Nagakarnool</form:option>
						<form:option value="18">Yadadri</form:option>
						<form:option value="19">Komaram-bheem</form:option>
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
							<label class="col-md-6">Mandal <span class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input class="form-control" path="bprmandal" namxmlns="mandal"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Village <span class="star">*</span>
							</label>
							<div class="col-md-6">
								<form:input class="form-control" path="bprvillage" namxmlns="village"/>
							</div>
						</div>
					</div>

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Pincode <span class="star">*</span></label>
				<div class="col-md-6">
					<form:input type="text" class="form-control" path="bprpincode" size="6" maxlength="6" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Alternate Mobile Number </label>
				<div class="col-md-6">
					<form:input type="text" path="bprprMobile" class="form-control" size="10" maxlength="10" />
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">E-Mail ID </label>
				<div class="col-md-6">
					<form:input type="text" class="form-control" value="" path="bprprMail" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 col-md-offset-2 form-group">
				<label class="col-md-6">Identity Type <span class="star">*</span></label>
				<div class="col-md-6">
					<form:select class="form-control SelectStyle" id="brIdentitype"
						path="bprprProofType">
						<form:option value="0">--Select--</form:option>
									<c:forEach items="${identities}" var="alt" >
									<form:option value="${alt.idcode}">${alt.idname}</form:option>
									</c:forEach>
					</form:select>
				</div>
			</div>
		</div>
		<div id="bprotherid" style="display: none;">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Other Identity type : </label>
					<div class="col-md-6">
						<input type="text" class="form-control"
							placeholder=" Type Identity Name ">
					</div>
				</div>
			</div>

		</div>
		<div class="identitytype1" id="identity">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Identity Number<span class="star">*</span>
					</label>
					<div class="col-md-6">
						<form:input type="text" class="form-control" value="" placeholder=" Identity no. " path="bprprProofId" />
					</div>
				</div>
			</div>
			<div class="select_upload" id="upload">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Upload the Identity document</label>
								<div class="col-md-6">
									<input type="file" name="bprpetitiondoc" placeholder=""
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
					<input type="file" name="bprpetitonphoto" placeholder="" class="form-control"
						>
				</div>
			</div>
			<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .jpg/jpeg of 1 mb size</div>
		</div>
		<div class="select_upload" id="upload">
			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Upload signature of Petitioner <span
						class="star">*</span>
					</label>
					<div class="col-md-6">
						<input type="file" name="bprpetitionsign" placeholder="" class="form-control"
							>
					</div>
				</div>
				<div class="col-md-offset-2 form-group " style="color: red;">
				allowed .jpg/jpeg of 1 mb size</div>
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
	$(document).ready(function() {
		$('#otherid2').hide();
	});
	$(document).ready(function() {
		$('#otherid').DataTable();
	});
</script>
	<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
	<script>
	$('#subcaste').on('change', function() {
		if ($(this).val() === "stsub") {
			$(".castesub1").show();
		} else {
			$(".castesub1").hide();
		}
	});
</script>
	<script>
	$('#subcaste').on('change', function() {
		if ($(this).val() === "scsub") {
			$(".castesub2").show();
		} else {
			$(".castesub2").hide();
		}
	});
</script>

	<script>
	$('#caste_scst').on('change', function() {
		if ($(this).val() === "st") {
			$(".caste_st").show();
		} else {
			$(".caste_st").hide();
		}
	});
</script>
	<script>
	$('#caste_scst').on('change', function() {
		if ($(this).val() === "sc") {
			$(".caste_sc").show();
		} else {
			$(".caste_sc").hide();
		}
	});
</script>
	<script>
	$('#Applicant').on('change', function() {
		
		if ($(this).val() === "Y") {
			$(".applicantpetitioner").show();
		} else {
			$(".applicantpetitioner").hide();
		} 
	});
</script>

	<script>
	$('#check2').on('click', function() {
		if ($(this).val() === "Y") {
			$(".applicantpetitioner").show();
			$(".applicantpetitioner2").hide();
		} 
	});

	
	$('#check3').on('click', function() {
		if ($(this).val() === "N") {
			$(".applicantpetitioner2").show();
			$(".applicantpetitioner").hide();
		} 
	});


	
</script>

	<script>
	$('#Identitype').on('change', function() {
		if ($(this).val() === "6") {
			$("#otherid").show();
		} else {
			$("#otherid").hide();
		}
	});
	
	$('#brIdentitype').on('change', function() {
		if ($(this).val() === "6") {
			$("#bprotherid").show();
		} else {
			$("#bprotherid").hide();
		}
	});

	
</script>

	
	<script>
	$('#Identitypeno').on('change', function() {
		if ($(this).val() === "6") {
			$("#otherid2").show();
		} else {
			$("#otherid2").hide();
		}
	});
</script>

	<script>
	$('#Identityperesp').on('change', function() {
		if ($(this).val() === "identiID") {
			$(".identitytypeRespondent").show();
		} else {
			$(".identitytypeRespondent").hide();
		}
	});
</script>
	<script>
  $('#Identityperesp').on('change',function(){
    if( $(this).val()==="OtherRes"){
    $(".otheridentitytype").show();
    }
    else{
    $(".otheridentitytype").hide();
    }
});
  </script>

	<script>
	$('#cspg').on('change',function(){
    if( $(this).val()==="csp"){
    $(".cspgov").show();
    }
    else{
    $(".cspgov").hide();
    }
});
	</script>
	<script>
	$('#cspg').on('change',function(){
    if( $(this).val()==="deemed"){
    $(".deem").show();
    }
    else{
    $(".deem").hide();
    }
});
	</script>
	<script>
	$('#selectorchangedivdis').on('change',function(){
    if( $(this).val()==="ST"){
    $(".select_dis").show();
    }
    else{
    $(".select_dis").hide();
    }
});
	</script>

	<script>
	$('#selectorchangedivdis').on('change',function(){
    if( $(this).val()==="SC"){
    $(".select_dis2").show();
    }
    else{
    $(".select_dis2").hide();
    }
});
	</script>
	<script>
	$('#newexi').on('change',function(){
    if( $(this).val()==="new"){
    $(".newappy").show();
    }
    else{
    $(".newappy").hide();
    }
});
	</script>
	<script>
	$('#newexi').on('change',function(){
    if( $(this).val()==="exi"){
    $(".exiappy").show();
    }
    else{
    $(".exiappy").hide();
    }
});
	</script>
	<script>
	$('#appservice').on('change',function(){
    if( $(this).val()==="yes1"){
    $(".ifyes").show();
    }
    else{
    $(".ifyes").hide();
    }
});
	</script>
	<script>
	$('#audact').on('change',function(){
    if( $(this).val()==="yesAct"){
    $(".ifyesCosmeticsAct").show();
    }
    else{
    $(".ifyesCosmeticsAct").hide();
    }
});
	</script>
	<script>
	$('#Exemption').on('change',function(){
    if( $(this).val()==="yesExemption"){
    $(".ifyesExemption").show();
    }
    else{
    $(".ifyesExemption").hide();
    }
});
	</script>







	<script>
	$('#Institutionservices').on('change',function(){
    if( $(this).val()==="course"){
    $(".courses").show();
    }
    else{
    $(".courses").hide();
    }
});


	function savePetition(){

		document.register.method="POST";
		document.register.action="savePetition.htm";
		document.register.submit();
		}
	</script>


	<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
  </script>
	<script> 
        function printDiv() { 
            var divContents = document.getElementById("GFG").innerHTML; 
            var a = window.open(); 
            a.document.write('<html>'); 
            a.document.write('<body>'); 
            a.document.write('<table><tbody><tr><td></td></tr></tbody></table>'); 
			a.document.write(divContents); 
            a.document.write('</body></html>'); 
            a.document.close(); 
            a.print(); 
        } 
		
    </script>
</html>
