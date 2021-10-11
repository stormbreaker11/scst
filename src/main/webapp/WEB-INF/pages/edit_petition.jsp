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

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/respondent.js"></script>
<script src="${pageContext.request.contextPath}/static/js/petitionervalidations.js"></script>


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

		<h1 align="center" style="color: #2d3990;">Petition - Land</h1>
		<div class="col-md-12">


			<table style="font-size: 20px; color: #2d3990;" width="100%"
				align="center">
				<tr>
					<td><c:if test="${type=='I'}">
	Type of Petition : Individual
	</c:if> <c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if></td>
					<td align="right">Petition Category : ${category}</td>
				</tr>
			</table>
			<div class="panel with-nav-tabs panel-primary">
				<div class="panel-heading">
					<ul class="nav nav-tabs" style="font-weight: bold;">
						<li class="active"><a href="#tab1primary" data-toggle="tab">Petition
								Details</a></li>
						<li><a href="#tab2primary" data-toggle="tab">Land Details</a></li>
						<!-- <li><a href="#tab3primary" data-toggle="tab">Appeal/Prayer</a></li>
                            <li><a href="#tab4primary" data-toggle="tab">Court Details</a></li> -->
						<li><a href="#tab5primary" data-toggle="tab">Respondent
								Details</a></li>
						<li><a href="#tab6primary" data-toggle="tab">Upload
								Documents/Evidence</a></li>

					</ul>
				</div>
				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-pane fade in active" id="tab1primary">
							<form:form name="petitionland" id="petitionland"
								modelAttribute="petitionland">

								<form:input type="hidden" name="petitionerId"
									path="petitionerId" id="petitionerId" value="${pid}" />
								<form:input type="hidden" name="petitionId" path="petitionId"
									id="petitionId" value="${petId}" />
								<div class="row from group">

									<div class="title1">
										<b style="padding-left: 5px;">Petition Details</b>

									</div>
									<br>

								</div>



								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Appeal/prayer of the
											petitioner(100 words) <span class="star">*</span>
										</label>
										<div class="col-md-6">
											<form:textarea cols="39" rows="2" maxlength="100" id="appeal"
												path="appeal" tabindex="1" value="${landAppeal.appeal }"></form:textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Petition in Detail (500 words)
											<span class="star">*</span>
										</label>
										<div class="col-sm-6">
											<form:textarea cols="39" path="pet_detail" tabindex="2"
												value="${landAppeal.pet_detail}" maxlength="500"
												id="pet_detail" rows="7"></form:textarea>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-7 col-md-offset-2 form-group">
										<label class="col-md-6">Has the Petitioner Lodged
											Complaint in any court <span class="star">*</span>
										</label>
										<div class="col-md-3">
											<form:select class="form-control SelectStyle" tabindex="3"
												id="court" path="courtComp">
												<%-- <form:option value="0" >--Select--
														</form:option> --%>
												<%-- <form:option
															value="Yes">
															Yes
														</form:option>
														<form:option value="No" >No
														</form:option> --%>

												<c:if test="${landAppeal.courtComp == 'Y'}">
													<form:option selected="true" value="Y">
															Yes
														</form:option>
													<form:option value="N">No
														</form:option>
												</c:if>

												<c:if test="${landAppeal.courtComp == 'N'}">
													<form:option value="Y">
															Yes
														</form:option>
													<form:option selected="true" value="N">No
														</form:option>
												</c:if>
												<c:if test="${empty landAppeal.courtComp}">
													<form:option value="0">
															--Select--
														</form:option>
													<form:option value="Y">
															Yes
														</form:option>
													<form:option value="N">No
														</form:option>
												</c:if>
											</form:select>
										</div>
									</div>
								</div>

								<div class="courtpetione" id="Yes" style="display: none;">
									<div class="row">
										<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6">Name of the Court</label>
											<div class="col-md-6">
												<form:input type="text" id="courtName" maxlength="50"
													placeholder=" Court name " tabindex="4"
													class="form-control" path="courtName"
													value="${landAppeal.courtName}" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6"> Select State</label>
											<div class="col-md-4">
												<form:select class="form-control SelectStyle" tabindex="5"
													id="courtState" path="courtState">
													<form:option value="${petitionland.courtStateCode}">${petitionland.courtState}</form:option>
													<c:forEach items="${states}" var="alt">
														<form:option value="${alt.scode}">${alt.sname}</form:option>
													</c:forEach>
												</form:select>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6">Select District </label>
											<div class="col-md-4">
												<form:select class="form-control SelectStyle"
													path="courtDist" tabindex="6" id="courtDist">
													<form:option value="${petitionland.courtDistCode}">${petitionland.courtDist}
															</form:option>

												</form:select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6"> Mandal</label>
											<div class="col-md-4">
												<form:input id="courtMandal"
													class="form-control SelectStyle" tabindex="6"
													maxlength="100" path="courtMandal"
													value="${landAppeal.courtMandal}" />

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6">Case Number </label>
											<div class="col-md-3">
												<form:input type="text" placeholder=" Type case number"
													path="caseNo" id="caseNo" class="form-control"
													value="${landAppeal.caseNo}" maxlength="30" tabindex="7" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6"> Status of Case </label>
											<div class="col-md-3">
												<form:select class="form-control SelectStyle"
													id="Casestatus" path="caseStatus">

													<c:if test="${landAppeal.caseStatus=='P'}">
														<form:option value="P" selected="selected">
															Pending
														</form:option>
														<form:option value="D">Disposed
														</form:option>
													</c:if>
													<c:if test="${landAppeal.caseStatus=='D'}">
														<form:option value="P">
															Pending
														</form:option>
														<form:option value="D" selected="selected">Disposed
														</form:option>
													</c:if>
													<c:if test="${empty landAppeal.caseStatus}">

														<form:option value="0">
															--Select--
														</form:option>
														<form:option value="P">
															Pending
														</form:option>
														<form:option value="D">Disposed
														</form:option>
													</c:if>
												</form:select>
											</div>
										</div>
									</div>
									<div class="select_Status" id="Disposed">
										<div class="row" id="uploaddoc">
											<div class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Upload the Court Orders</label>
												<div class="col-md-4">
													<input name="filecourt" id="filecourt" placeholder=""
														class="form-control" type="file">
												</div>
											</div>
											<br>

											<div class="col-md-offset-2 form-group " style="color: red;">allowed
												.pdf of 1 mb size</div>
										</div>
							</form:form>


						</div>
					</div>

					<div align="center">
						<table align="center">
							<tr>
								<td align="center"><b><font id="message" color="green"></font></b></td>
							</tr>
						</table>
						<table align="center">
							<tr>
								<td align="center"><b><font id="warning" color="green"></font></b></td>
							</tr>
						</table>
						<input type="button" value="Update" id="update"
							class="btn btn-primary">

					</div>


				</div>
				<div class="tab-pane fade" id="tab2primary">


					<div class="title1">
						<b style="padding-left: 5px;">Land Details</b>

					</div>
					<br>

					<form:form name="landdetails" id="landdetails"
						modelAttribute="landdetails">
						<form:input type="hidden" name="petitionerId" path="petitionerId"
							id="petitionerId" value="${pid}" />
						<form:input type="hidden" name="petitionId" path="petitionId"
							id="petitionId" value="${petId}" />

						<br>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Kind of Land <span class="star">*</span></label>
								<div class="col-md-4">
									<form:select class="form-control SelectStyle" id="landKind"
										path="landKind" autofocus="true">
										<form:option value="0">--Select--</form:option>

										<c:forEach items="${landkinds }" var="alt">
											<form:option value="${alt.landsrno }">${alt.landKind}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>
						</div>

						<div class="row from group">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Type of Land <span class="star">*</span></label>
								<div class="col-md-4">
									<form:select class="form-control SelectStyle" id="pitition1"
										path="landType">
										<form:option value="0">--Select--
														</form:option>


										<c:forEach items="${landTypes }" var="alt">
											<option value="${alt.landsrno }">${alt.landType}</option>


										</c:forEach>
									</form:select>
								</div>
							</div>
						</div>

						<div class="otherland" id="3" style="display: none;">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Others Land <span class="star">*</span></label>
									<div class="col-md-4">
										<form:input type="text" placeholder=" Type of land"
											class="form-control" id="olandtext" maxlength="30"
											path="otherland" />
									</div>
								</div>
							</div>

						</div>
						<div class="ppetioner" id="pland">
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Select District <span
										class="star">*</span>
									</label>
									<div class="col-md-4">
										<form:select class="form-control SelectStyle"
											path="landDistrict" id="landDistrict" name="landDistrict"
											onchange="getMandals('landDistrict','landmandal', '')">
											<form:option value="0">--Select--</form:option>
											<c:forEach items="${district}" var="alt">
												<form:option value="${alt.distCode}">${alt.distName}</form:option>
											</c:forEach>

										</form:select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Select Mandal <span
										class="star">*</span>
									</label>
									<div class="col-md-4">
										<form:select class="form-control SelectStyle"
											path="landmandal" id="landmandal">
											<form:option value="0" selected="true">--Select--</form:option>




										</form:select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Revenue Village </label>
									<div class="col-md-4">
										<form:input type="text" class="form-control SelectStyle"
											path="landvillage" name="landvillage" id="landvillage"
											maxlength="50" />

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Patta Passbook number</label>
									<div class="col-md-3">
										<form:input type="text" path="passbookNo" maxlength="10"
											id="passbookNo" name="passbookNo" placeholder=" Patta number"
											class="form-control" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Survey number <span
										class="star">*</span></label>
									<div class="col-md-3">
										<form:input type="text" placeholder=" Survey number"
											maxlength="15" path="surveyNo" id="surveyNo" name="surveyNo"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-7 col-md-offset-2 form-group">
									<label class="col-md-6">Extent of land </label>
									<div class="col-md-3">
										<form:input type="text" placeholder="" maxlength="6"
											path="extentOfLand" id="extentOfLand" name="extentOfLand"
											class="form-control" />
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

							</div>
						</div>
						<input type="hidden" name="type" value="${type }">
						<input type="hidden" name="pid" value="${pid }">
						<input type="hidden" name="category" value="${category}">
					</form:form>


					<div align="center"
						style="background: #2d3990; color: white; height: 30px;">
						<h3>Land Details</h3>
					</div>
					<div class="table-responsive">
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
										<td style="text-align: center;">${alt.extentOfLand }(<c:if
												test="${alt.units=='1'}">Acre</c:if>
											<c:if test="${alt.units=='2'}">Gunta</c:if>
											<c:if test="${alt.units=='3'}">Square yards</c:if>)
										</td>
										<td style="text-align: center;" data-toggle="modal"
											data-target="#exampleModal"><img id="edit"
											height="22px" data-toggle="tooltip"
											title="Click to edit details"
											src="${pageContext.request.contextPath}/static/images/edit.png"></img></td>
										<td style="text-align: center;" id="btn-remove"><img
											height="22px" data-toggle="tooltip" title="Click to delete"
											src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
					</div>



				</div>


				<div class="tab-pane fade" id="tab5primary">
					<div class="title1">
						<b style="padding-left: 5px;">Respondent Details</b>

					</div>
					<br>
					<form:form name="respondent" modelAttribute="respondent"
						id="respondent">

						<form:input type="hidden" value="${petId}" id="petition"
							path="petition" />
						<form:input type="hidden" value="${pid}" id="petitionerId"
							path="petitionerId" />

						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Type of Respondent<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:select class="form-control SelectStyle"
										id="respondentdetails" path="respType">
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
										path="respName" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group"
								style="display: none;" id="caste">
								<label class="col-md-6"> Select Caste <span class="star">*</span></label>

								<div class="col-md-3">
									<form:select class="form-control SelectStyle" path="caste"
										id="castevalue">
										<form:option value="0">--Select--
															</form:option>
										<form:option value="1">Other caste (OC)
															</form:option>
										<form:option value="2">Backward Class (BC)
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
										id="respProffesion" class="form-control" path="respProffesion"
										maxlength="50" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Select District <span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:select class="form-control SelectStyle" path="district"
										id="district">
										<form:option value="0">--Select--
															</form:option>
										<c:forEach items="${district}" var="alt">
											<form:option value="${alt.distCode }">${alt.distName }</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Address </label>
								<div class="col-md-6">
									<form:textarea maxlength="200" cols="39" rows="4" id="address"
										path="address"></form:textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Mobile No </label>
								<div class="col-md-4">
									<form:input type="text" placeholder=" Mobile No "
										maxlength="10" class="form-control" id="mobile" path="mobile" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">E-Mail ID</label>
								<div class="col-md-4">
									<form:input type="text" placeholder=" e-mail "
										class="form-control" id="email" path="email" maxlength="50" />
								</div>
							</div>
							<div class="col-md-offset-2 form-group " style="color: red;">
								<div class="btn btn-md btn-primary" onclick="addRespondent()">
									+ Add more</div>
							</div>
						</div>




					</form:form>
					<div align="center"
						style="background: #2d3990; color: white; height: 30px;">
						<h3>Respondent Details</h3>
					</div>
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
									<td>${alt.caste}</td>
									<td>${alt.respProffesion }</td>
									<td>${alt.district }</td>
									<td>${alt.email }</td>
									<td style="text-align: center;">${alt.mobile }</td>
									<td style="text-align: center;" data-toggle="modal"
										data-target="#exampleModal1"><img height="22px"
										id="edit" data-toggle="tooltip" title="Click to edit details"
										src="${pageContext.request.contextPath}/static/images/edit.png"></img></td>
									<td style="text-align: center;" id="btn-remove"><img
										height="22px" data-toggle="tooltip" title="Click to delete"
										src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
								</tr>

							</c:forEach>
						</tbody>



					</table>


					<br>

					<%-- <input type="hidden" name="pid" value="${pid}">
										<input type="hidden" name="type" value="${type}">
										<input type="hidden" name="category" value="${category}">
										<div align="center"><input type="button" class="bnt btn-primary" value="Continue" onclick="proceed()"></div>	 --%>





				</div>

				<div class="tab-pane fade" id="tab6primary">
					<div class="title1">
						<b style="padding-left: 5px;">Upload Documents/Evidence</b>

					</div>
					<form:form name="upload" modelAttribute="upload">


						<br>

						<div class="row" style="display: none;">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Petitioner Id : </label>
								<div class="col-md-6">
									${pid}
									<form:input type="hidden" id="petitionerId" path="petitionerId"
										value="${pid}" />
								</div>
							</div>
						</div>
						<div class="row" style="display: none;">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Petition Id : </label>
								<div class="col-md-6">
									${petitionID}
									<form:input type="hidden" id="petitionId" path="petitionId"
										value="${petId}" />
								</div>
							</div>
						</div>


						<!-- <div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Type of Petition: </label>
													<div
														class="col-md-6">
														Individual
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petition Category </label>
													<div
														class="col-md-6">
														Land
													</div>
												</div>
											</div> -->
						<!-- <div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petition Submitted Date </label>
													<div
														class="col-md-6">
														25/08/2021
													</div>
												</div>
											</div> -->
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Document description</label>
								<div class="col-md-4">
									<form:input type="text" style="text-transform:capitalize;"
										name="docDesc" id="docDesc" maxlength="100" path="docDesc"
										class="form-control" />


								</div>
							</div>
							<div class="col-md-offset-2 form-group " style="color: red;">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Upload Document</label>
								<div class="col-md-4">
									<input type="file" name="file" id="file" onchange="validDoc('file')">
								</div>
							</div>
							<div class="col-md-offset-2 form-group " style="color: red;">allowed
								.pdf of size 1 mb</div>
						</div>
						<div align="center">
							<a href="#">
								<div class="btn btn-md btn-primary" id="addDoc">+ Add more
								</div>
							</a>

						</div>
						<br>
						<div id="docdiv">
							<div align="center"
								style="background: #2d3990; color: white; height: 30px;">
								<h3>Uploaded documents/Evidence</h3>
							</div>

							<table id="uploadTable" class="table table-bordered"
								style="border: 1px solid black;">
								<thead>
									<tr>
										<th style="text-align: center;">S.No</th>
										<th>Document description</th>
										<th style="text-align: center;">View Document</th>
										<th style="text-align: center;">Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${uploadedDocsByPid }" var="alt"
										varStatus="counter">
										<tr>
											<td style="display: none; text-align: center;"
												id="hiddencode">${alt.docNo}</td>
											<td style="text-align: center;">${counter.count}</td>
											<td>${alt.docDesc}</td>
											<td style="text-align: center;"
												onclick="openEvidence(${alt.docNo})"><a href="#"
												data-toggle="tooltip" title="Click to view"> <img
													height="22px"
													src="${pageContext.request.contextPath}/static/images/pdf-32.png"></img></a></td>
											<td style="text-align: center;" id="btn-remove"><img
												height="22px" data-toggle="tooltip" title="Click to delete"
												src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
										</tr>
									</c:forEach>
								</tbody>


							</table>

						</div>

						<input type="hidden" value="${petId}">
						<input type="hidden" value="${pid}" name="pid">
						<input type="hidden" value="${type}" name="type">
						<input type="hidden" value="${category}" name="category">
						<div align="center">
							<input  type="button" class="btn btn-md btn-primary"
								value="Continue" onclick="proceed()">
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	</div>

	</div>

	<!-- 	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button> -->



	<!-- Land details modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div align="center">
						<h3 class="modal-title" id="exampleModalLabel">Edit - Land
							Details</h3>
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<form name="editland" id="editland">

						<input type="hidden" name="petitionId" value="${petId }">
						<input type="hidden" name="petitionerId" value="${pid }">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Kind of Land <span class="star">*</span></label>
								<div class="col-md-6">
									<select class="form-control SelectStyle" id="landKind"
										name="landKind">
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
									<select class="form-control SelectStyle" id="pitition1"
										name="landType">
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
										<select class="form-control SelectStyle" id="landDistrictedit"
											name="landDistrict"
											onchange="getMandals('landDistrictedit', 'landmandaledit', '')">
											<option value="0">--Select--</option>
											<c:forEach items="${district}" var="alt">
												<option value="${alt.distCode }">${alt.distName }</option>
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
										<select class="form-control SelectStyle" id="landmandaledit"
											name="landmandal">
											<option value="0">--Select--</option>



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
										<input type="text" placeholder=" Survey number" maxlength="15"
											path="surveyNo" id="surveyNo" name="surveyNo"
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
									<div style="text-align: left;">&nbsp;</div>
								</div>

							</div>
							<div class="modal-footer">
								<center>
									<div role="group" aria-label="group button">

										<input type="button" class="btn btn-primary" id="updateLand"
											value="Update" role="button" /> <input type="button"
											class="btn btn-danger" data-dismiss="modal" value="Close"
											role="button" />

									</div>
							</div>
						</div>

						<input type="hidden" id="petId" name="petId" value="${petId }">
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- land detail modal end -->


	<!-- Respondent modal starts-->
	<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div align="center">
						<h3 class="modal-title" id="exampleModalLabel1">Edit -
							Respondent Details</h3>
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<form name="editRespondent" id="editRespondent">

						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Type of Respondent<span
									class="star">*</span></label>
								<div class="col-md-6">
									<select class="form-control SelectStyle" id="respondentdetails"
										name="respType">
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
								<label class="col-md-6"> Select Caste <span class="star">*</span></label>

								<div class="col-md-6">
									<select class="form-control SelectStyle" name="caste"
										id="castevalue">
										<option value="0">--Select--</option>
										<option value="1">Other caste (OC)</option>
										<option value="2">Backward Class (BC)</option>

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
										id="respProffesion" class="form-control" name="respProffesion" />
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
										<c:forEach items="${district}" var="alt">
											<option value="${alt.distCode }">${alt.distName }</option>
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
									<input type="text" placeholder=" e-mail " class="form-control"
										id="email" name="email" />
								</div>
							</div>

						</div>

						<input type="hidden" name="petitionerId" value="${pid }">
						<input type="hidden" name="petition" id="petId" value="${petId }">
						<input type="hidden" name="type" id="type" value="${type }">

					</form>
				</div>
				<div class="modal-footer">
					<center>
						<div role="group" aria-label="group button">

							<input type="button" class="btn btn-primary"
								id="updateRespondent" value="Update" role="button" /> <input
								type="button" class="btn btn-danger" data-dismiss="modal"
								value="Close" role="button" />

						</div>
				</div>
			</div>
			</center>
		</div>



		<input type="hidden" id="mandalvalue" value="">

	</div>
	<!-- Respondent modal -->



	<script type="text/javascript">



$('#pitition1').on('change', function () {
	if ($(this).val() === "3") {
		$(".otherland").show();
	}
	else {
		$(".otherland").hide();
	}
});



//adding land details dynamically
function addLand(){



	


	
	var landkind = $("#landdetails #landKind").val();
	var landkindText = $("#landdetails #landKind option:selected").text();
	
	var pitition1 = $("#landdetails #pitition1").val();
	var pitition1Text = $("#landdetails #pitition1  option:selected").text();
	var olandtext = $("#landdetails #olandtext").val();
	var landDistrict = $("#landdetails #landDistrict").val();
	var landDistrictText = $("#landdetails #landDistrict  option:selected").text();
	var landmandal = $("#landdetails #landmandal").val();
	var landmandalText = $("#landdetails #landmandal option:selected").text();
	var landvillage = $("#landdetails #landvillage").val();
	var passbookNo = $("#landdetails #passbookNo").val();
	var surveyNo = $("#landdetails #surveyNo").val();
	var extentOfLand = $("#landdetails #extentOfLand").val();
	var units = $("#landdetails #units  option:selected").text();




 var regex=/^[a-zA-z]+([\s][a-zA-Z]+)*$/;


	if (landkind == "0") {
		$("#landdetails #landKind").focus();
		alert("Select Kind of Land");
		return false;
	}
	if (pitition1 == "0") {
		alert("Select Type of Land");
		$("#landdetails #pitition1").focus();
		return false;
	}
	if (pitition1 == "O") {
		$("#landdetails #olandtext").focus();
		alert("Other land is required");
		return false;
	}

	if (landDistrict == "0") {
		$("#landdetails #landDistrict").focus();
		alert("Select District");
		return false;
	}

	if (landmandal == "0") {
		
		$("#landdetails #landmandal").focus();
		alert("Select Mandal");
		return false;
	}

	if (landvillage.length == 0) {
		
		$("#landdetails #landvillage").focus();
		alert("Village is required");
		return false;
	}
	if (regex.test(landvillage) == false) {
		alert("Invalid Village");


		$("#landdetails #landvillage").focus();
		return false;
	}
	if (passbookNo.length == 0) {
		$("#landdetails #passbookNo").focus();
		alert("Patta Passbook number is required");
		return false;
	}

	var bankregex = /^[a-zA-Z0-9]*$/;
	if (bankregex.test(passbookNo) == false) {
		alert("Enter a valid Patta Passbook number");
		$("#landdetails #passbookNo").focus();
		return false;
	}

   if (surveyNo.length == 0) {
		$("#landdetails #surveyNo").focus();
		alert("Survey number is required");
		return false;
	}

	var bankregex = /^[a-zA-Z0-9]*$/;
	if (bankregex.test(surveyNo) == false) {
		alert("Enter a valid Survey number");
		$("#landdetails #surveyNo").focus();
		return false;
	}
	

	var decimalregex = /^[0-9]+\.?[0-9]*$/;
	
	 if (extentOfLand.length == 0) {
		$("#landdetails #extentOfLand").focus();
		alert("Extend of land is required");
		return false;
	}

	if (decimalregex.test(extentOfLand) == false) {
		alert("Invalid Extend of land");
		$("#landdetails #extentOfLand").focus();
		return false;
	}
	if ( $("#landdetails #units").val() == "0") {
		$("#landdetails #units").focus();
		alert("Select Units");
		return false;
	}
	 var frm = $('#landdetails').serialize();

	 if(pitition1=="3"){
		 pitition1Text=olandtext;
		 }

	
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
						+ '</td><td style="text-align: center;" data-toggle="modal" data-target="#exampleModal"   ><img height="22px" id="edit" data-toggle="tooltip"  title="Click to delete"   src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
						
						$("#landTable").append($(s)); 
						$('#landdiv').show();
						
					//alert("Land details added successfully");


					$('#landKind').prop('selectedIndex',0);
					$('#pitition1').prop('selectedIndex',0);
					$('#olandtext').val('');
					$('#landDistrict').prop('selectedIndex',0);
					$('#landmandal').prop('selectedIndex',0);
					$('#landvillage').val('');
					$('#passbookNo').val('');
					$('#surveyNo').val('');
					$('#extentOfLand').val('');
					$('#units').prop('selectedIndex',0);
					
				}
		}

});
}



//update land appeal onclick
$(document).on('click','#update', function() {





	var appeal=$("#appeal").val().trim();
	
	var pet_detail=$("#pet_detail").val().trim();
	var court=$("#court").val();
	var courtName=$("#courtName").val().trim();
	var courtState=$("#courtState").val();
	var courtDist=$("#courtDist").val();
	var courtMandal=$("#courtMandal").val();
	var caseNo=$("#caseNo").val().trim();
	var casestatus=$("#Casestatus").val().trim();
	var courtorders=document.getElementById("filecourt");
	var regex = /^[a-zA-Z]+(\s+[a-zA-Z]+)*$/;
	if (appeal.length == 0) {
			document.getElementById("appeal").focus();
			alert("Appeal/prayer of the petitioner is required");
			return false;
		}
	if (regex.test(appeal) == false) {
		document.getElementById("appeal").focus();
		alert("Invalid Appeal/prayer of the petitioner");
		return false;
	}
	if (pet_detail.length == 0) {
		document.getElementById("pet_detail").focus();
		alert("Petition in Detail is required");
		return false;
	}
	if (regex.test(pet_detail) == false) {
		document.getElementById("pet_detail").focus();
		alert("Invalid Petition in Detail");
		return false;
	}
	if (court == "0") {
		document.getElementById("court").focus();
		alert("Has the Petitioner Lodged Complaint in any court?");
		return false;
	}
	if(court=="Y"){
		if (courtName == "") {
			document.getElementById("courtName").focus();
			alert("Name of the Court");
			return false;
		}
		if (regex.test(courtName) == false) {
			document.getElementById("courtName").focus();
			alert("Invalid Court Name");
			return false;
		}
		if (courtState == "0") {
			document.getElementById("courtState").focus();
			alert("Select State");
			return false;
		}
		if (courtDist == "0") {
			document.getElementById("courtDist").focus();
			alert("Select District");
			return false;
		}
		if (courtMandal == "") {
			document.getElementById("courtMandal").focus();
			alert("Mandal is required");
			return false;
		}
		
		if (casestatus == "0") {
			document.getElementById("Casestatus").focus();
			alert("Select Status of Case");
			return false;
		}
		if(casestatus=="D"){
			if (courtorders.value == "") {
				alert("Upload Court Orders");
				document.getElementById("filecourt").focus();
				return false;
			}
		}
	}
	
	


	


	
	var form = $('#petitionland')[0];
	var fdata = new FormData(form);
	$("#message").empty();
		$.ajax({
			url : '/scst/petition/land/updateLandAppeal.htm',
			type : "POST",
			data : fdata,
		    processData: false,
            contentType: false,
			success : function(response) {

				if(response=="Y"){
                    $("#message").html("Details Updated Successfully");
					}
			}
		});

});

//deleting land details onclick
$(document).on('click','#landTable #btn-remove', function() {

	
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
					}
				else{
					alert(" Delete Unsuccessfull ");
					}
				
			}
		});

	}

});


//edit land details onclick
$(document).on('click','#landTable  #edit', function() {

	
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
				
				$("#exampleModal #extentOfLand").val(obj.extentOfLand);
				$("#exampleModal #passbookNo").val(obj.passbookNo);
				$("#exampleModal #surveyNo").val(obj.surveyNo);
				$("#exampleModal #landvillage").val(obj.landvillage);

				//$('#exampleModal #landKind option[value=+'obj.landKind+']').attr('selected','selected');
				$('#exampleModal #landKind').val(obj.landKind).change();
				$('#exampleModal #pitition1').val(obj.landType).change();
				$('#exampleModal #landDistrictedit').val(obj.landDistrict).change();
				//$('#exampleModal #castevalue').val(obj.landDistrict).change();

				$('#exampleModal #landmandaledit').val(obj.landmandal).change();
				$('#exampleModal #units').val(obj.units).change();

			
				
			}
		});


});


//update land onclick
$(document).on('click','#exampleModal #updateLand', function() {





	var landKind = $("#exampleModal #landKind").val();
	var pitition1 = $("#exampleModal #pitition1").val();
	var olandtext = $("#exampleModal #olandtext").val();
	var landDistrict = $("#exampleModal #landDistrictedit").val();
	var landmandal = $("#exampleModal #landmandaledit").val();
	var landvillage = $("#exampleModal #landvillage").val().trim();
	var passbookNo = $("#exampleModal #passbookNo").val().trim();
	var surveyNo = $("#exampleModal #surveyNo").val().trim();
	var extentOfLand = $("#exampleModal #extentOfLand").val().trim();
	var units = $("#exampleModal #units").val().trim();

   var regex=/^[a-zA-z]+([\s][a-zA-Z]+)*$/;


	if (landKind == "0") {
		$("#exampleModal #landKind").focus();
		alert("Select Kind of Land");
		return false;
	}

	
	if (pitition1 == "0") {
		alert("Select Type of Land");
		$("#exampleModal #pitition1").focus();
		return false;
	}
	if (pitition1 == "O") {
		$("#exampleModal #olandtext").focus();
		alert("Other land is required");
		return false;
	}

	if (landDistrict == "0") {
		$("#exampleModal #landDistrictedit").focus();
		alert("Select District");
		return false;
	}

	if (landmandal == "0") {
		$("#exampleModal #landmandaledit").focus();
		alert("Select Mandal");
		return false;
	}

	if (landvillage.length == 0) {
		$("#exampleModal #landvillage").focus();
		alert("Village is required");
		return false;
	}
	if (regex.test(landvillage) == false) {
		alert("Invalid Village");
		$("#exampleModal #landvillage").focus();
		return false;
	}
	if (passbookNo.length == 0) {
		$("#exampleModal #passbookNo").focus();
		alert("Patta Passbook number is required");
		return false;
	}

	var bankregex = /^[a-zA-Z0-9]*$/;
	if (bankregex.test(passbookNo) == false) {
		alert("Enter a valid Patta Passbook number");
		$("#exampleModal #passbookNo").focus();
		return false;
	}

   if (surveyNo.length == 0) {
	   $("#exampleModal #surveyNo").focus();
		alert("Survey number is required");
		return false;
	}

	var bankregex = /^[a-zA-Z0-9]*$/;
	if (bankregex.test(surveyNo) == false) {
		alert("Enter a valid Survey number");
		$("#exampleModal #surveyNo").focus();
		return false;
	}
	

	var decimalregex = /^[0-9]+\.?[0-9]*$/;
	
	 if (extentOfLand.length == 0) {
		 $("#exampleModal #extentOfLand").focus();
		alert("Extend of land is required");
		return false;
	}

	if (decimalregex.test(extentOfLand) == false) {
		alert("Invalid Extend of land");
		$("#exampleModal #extentOfLand").focus();
		return false;
	}
	if (units == "0") {
		$("#exampleModal #units").focus();
		alert("Select Units");
		return false;
	}

	


	
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
			alert("Updated land details")
			}
		else{
			alert("Land details updation failed try again")
			}
	}

});
});

//get land details 
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
					+ '</td><td style="text-align: center;"  data-toggle="modal" data-target="#exampleModal"  ><img height="22px" id="edit"   title="Click here to edit"   src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
					$("#landTabletr").append(s);
				
				}
			
	}

});
}

</script>
	<script>

		//submit 
function proceed(){

	var table=$("#uploadTable tr").length;
	if(table<1){
				alert("Add atleast one document/evidence");
				$('#docDesc').focus();
				return false;				
		}
			
	
	document.landdetails.method="POST";
	document.landdetails.action="/scst/petition/land/submitpetition.htm";
	document.landdetails.submit();
}




var k=0;

$(document).ready(function(){

	var court=$("#court").val();
	
	if(court=="Y"){
	$(".courtpetione").show();
		}else{

	$(".courtpetione").hide();
			}
}); 

$("#court").change(function(){

	var court=$("#court").val();
	
	if(court=="Y"){
	$(".courtpetione").show();
		}else{

	$(".courtpetione").hide();
			}
}); 


$(document).ready(function(){
	var casestatus=$("#Casestatus").val();
	if(casestatus=="D"){
	$("#uploaddoc").show();
		}else{
	$("#uploaddoc").hide();
			}
}); 

// case pending and dispose show on chnage
$("#Casestatus").change(function(){
	var casestatus=$("#Casestatus").val();
	if(casestatus=="D"){
	$("#uploaddoc").show();
		}else{
	$("#uploaddoc").hide();
			}
}); 


//delete evidence 
$(document).on('click','#docdiv #btn-remove', function() {

	    var petitionID=$("#petitionId").val();
	    var $row = $(this).closest("tr"); // Find the row
		var scode = $row.find("#hiddencode").text();
		var con = confirm("Are you sure you want to delete this Document?");
		if (con) {
			$.ajax({
				url : '/scst/petition/documents/deletedoc.htm',
				type : "POST",
				data : {
					"docid" : scode,
					"pid": petitionID
				},
				success : function(response) {
					if(response=="Y"){
						$("#uploadTable tr td").filter(function() {
							return $(this).text() ===scode;
						}).closest("tr").remove();
						var rowCount = $('#uploadTable tr').length;

						if(rowCount==1){
							document.getElementById("docdiv").style.display="none";
					}
						alert(" Document deleted succesfully");
						}
					else{
						alert(" Document delete failed");
						}
				}
			});

		}

	});



//add evidence

$(function(){
    $('#addDoc').on('click', function(){ 

   
    	var petitionID=$("#petitionId").val();
		var doctext=$('#docDesc').val();
		var fileInput =$('#tab6primary #file');
		var filePath =$('#tab6primary #file').val();
		
		var allowedExtensions = /(\.pdf)$/i;
		 var form = $('#upload')[0];
		 var fdata = new FormData(form);
		if(doctext==""){
			$('#docDesc').focus();
			alert("Document description is required");
			return false;
			}
		if (fileInput.value == "") {
			alert("Pdf file is required");
			$('#tab6primary #file').focus();
			return false;
		}
		if (!allowedExtensions.exec(filePath)) {
			alert('Invalid file type');
			$('#tab6primary #file').val('');
			return false;
		}
		if (fileInput.files[0].size > 1024 * 1024) {
			alert('1 mb pdf file allowed');
			$('#tab6primary #file').val('');
			return false;
		}
		
		/* var myTab = document.getElementById('eduTable');
		for (i = 1; i < myTab.rows.length; i++) {
			var objCells = myTab.rows.item(i).cells;
			var s1 = objCells.item(0).innerHTML;
			if (doctext == s1) {
				alert(doctext + " Document already Uploaded ");
				$("#doccode").focus();
				return false;
			}
		} */
		
		$.ajax({
			url : '/scst/petition/documents/savedoc.htm',
			type : "POST",
			data : fdata,
		 processData: false,
         contentType: false,
			success : function(response) {
				
				if(response!="N"){
					 k=$('#uploadTable tr:last-child td:nth-child(2)').html();
					 if(isNaN(k)){
						 k=0;
						 }
					var s = '<tr><td style="text-align: center; display: none;" id="hiddencode"  >'
						+ response
						+ '</td><td align="center">'
						+ ++k
						+ '</td><td>'
						+ doctext
						+ '</td><td style="text-align: center;" onclick="openEvidence('+response+')"  ><a href="#" data-toggle="tooltip" title="Click to view" > <img height="22px"  src="${pageContext.request.contextPath}/static/images/pdf-32.png"></img></a></td><td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
						$("#uploadTable").append($(s));
						$("#uploadTable").show();
						$("#docdiv").show();
						$("#proceed").show();
						$('#docDesc').val('')
					alert("Document added successfully")
					}
				else{
						alert("Document upload failed, try again");
						return false;
					}
				 
			}
		});

		
    });
});


//popup window

function openEvidence(response) {
	let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
		width=1000,height=600,left=250,top=150`;
	var pid=$("#petitionId").val();
window.open("/scst/petition/documents/viewdoc?pid="+pid+"&docno="+response, 'test', params);
 
}

//edit land details onclick
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
				
				$("#exampleModal #extentOfLand").val(obj.extentOfLand);
				$("#exampleModal #passbookNo").val(obj.passbookNo);
				$("#exampleModal #surveyNo").val(obj.surveyNo);
				$("#exampleModal #landvillage").val(obj.landvillage);

				//$('#exampleModal #landKind option[value=+'obj.landKind+']').attr('selected','selected');
				$('#exampleModal #landKind').val(obj.landKind).change();
				$('#exampleModal #pitition1').val(obj.landType).change();
				$('#exampleModal #landDistrictedit').val(obj.landDistrict).change();

				$('#exampleModal #landmandaledit').val(obj.landmandal).change();
				$('#exampleModal #units').val(obj.units).change();

				getMandals('landDistrictedit','landmandaledit', obj.landmandal);
			}
		});


});

///respondent Javascript



	var rowText;
		//adding respondent details dynamically
		function addRespondent(){




			var status=respondentValidation();

			if(status==false){
					return false;
				}
			
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
				   caste="-";
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
										+ '</td><td style="text-align: center;"   data-toggle="modal" data-target="#exampleModal1" ><img height="22px"  data-toggle="tooltip" title="Click to delete" id="edit" src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'

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
							}

						}

					});
		}

		//caste hide and display for respondent details
		$('#respondentdetails').on('change', function () {
			if ($(this).val() === "P") {
				$("#caste").show();
			}
			else {
				$("#caste").hide();
			}
		});

		$('#exampleModal1 #respondentdetails').on('change', function () {
			if ($(this).val() === "P") {
				$("#exampleModal1 #caste").show();
			}
			else {
				$("#exampleModal1 #caste").hide();
			}
		});
		

		//deleting respondent details onclick
		$(document).on('click', '#respondentTable #btn-remove', function() {

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



		//fetching respondent details onclick
		$(document)
				.on(
						'click',
						'#respondentTable #edit',
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
                                           
											$("#exampleModal1 #respName")
													.val(obj.respName);
											$("#exampleModal1 #castevalue")
													.val(obj.caste.trim()).change();
											$("#exampleModal1 #address")
													.val(obj.address);
											$("#exampleModal1 #mobile").val(
													obj.mobile);
											$("#exampleModal1 #email").val(
													obj.email);
											$('#exampleModal1 #district')
													.val(obj.district).change();
											$(
													'#exampleModal1 #respondentdetails')
													.val(obj.respType).change();
											$(
													'#exampleModal1 #respProffesion')
													.val(obj.respProffesion);

											
										}
									});

						});


		//update respondent details on click
		$(document).on(
				'click',
				'#updateRespondent',
				function() {

			
					var regex = /^[a-zA-z]+([\s][a-zA-Z]+)*$/;
					var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
					var phoneRegex = /^[6-9]\d{9}$/;
					
					var name = $("#exampleModal1 #respName").val();
					var address = $("#exampleModal1 #address").val();
					var mobile = $("#exampleModal1 #mobile").val();
					var email = $("#exampleModal1 #email").val();
					var district = $('#exampleModal1 #district').val();
					var respondentdetails = $(
							'#exampleModal1 #respondentdetails').val();
					var respProffesion = $('#exampleModal1 #respProffesion')
							.val();
					var castevalue = $('#exampleModal1 #castevalue').val();
					var petId = $('#petId').val();



					if (respondentdetails == "0") {
						$(
						'#exampleModal1 #respondentdetails').focus();
						alert("Select Type of Respondent");
						return false;
					}
					if (name.length == 0) {
						$(
						'#exampleModal1 #respName').focus();
						alert("Name of the respondent is required");
						return false;
					}
					if (regex.test(name) == false) {
						$(
						'#exampleModal1 #respName').focus();
						alert("Invalid name of the respondent");
						return false;
					}

					if (respondentdetails == "P") {
						if (castevalue == "0") {
							alert("Select Caste");
							$('#exampleModal1 #castevalue').focus();
							return false;
						}
					}
					if (respProffesion.length == 0) {
						$('#exampleModal1 #respProffesion').focus();
						alert("Designation/Profession is required");
						return false;
					}
					if (regex.test(respProffesion) == false) {
						$('#exampleModal1 #respProffesion').focus();
						alert("Invalid Designation/Profession");
						return false;
					}

					if (district == "0") {
						$('#exampleModal1 #district').focus();
						alert("Select District");
						return false;
					}

					var newaddregex = /^[a-zA-Z0-9/(),+\-_.\s]+$/;
					if (address.length == 0) {
						
						$('#exampleModal1 #address').focus();
						alert("Address is required");
						return false;
					}

					if (newaddregex.test(address) == false) {
						$('#exampleModal1 #address').focus();
						alert("Invalid Address");
						return false;
					}

					if (mobile.length == 0) {
						alert("Mobile  Number is required");
						$('#exampleModal1 #mobile').focus();
						return false;
					}

					if (phoneRegex.test(mobile) == false) {
						alert("Not a valid mobile number");
						$('#exampleModal1 #mobile').focus();
						return false;
					}


					if (email.length == 0) {
						alert("Email is required");
						$('#exampleModal1 #email').focus();
						return false;
					}

					if (emailRegex.test(email) == false) {
						alert("Enter a valid Email");
						$('#exampleModal1 #email').focus();
						return false;
					}

					
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
								alert("Updated respondent details")
								getRespondentList();
							} else {
								alert("Respondent details updation failed");
							}
						}

					});
				});

		//fetches respondent list 
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
									caste="Other caste (OC)";
								} 
							
								if (caste == "2") {
									caste="Backward Class (BC)";
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
										+ '</td><td style="text-align: center;"   data-toggle="modal" data-target="#exampleModal1"  ><img height="22px"   title="Click here to edit" id="edit"    src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
								$("#myTable").append(s);

							}

						}

					});
		}

		function focus() {
			document.getElementById("appeal").focus();
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
										///alert(stateid)
								
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
		//fetch mandals onchange 
		function getMandals(ditrict,mandal,mandalvalue){
			
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

							if(mandalvalue!=''){
								$("#landmandaledit").val(mandalvalue);	
								}
							
							}
					});
			
			}

				
		
</script>
</html>
