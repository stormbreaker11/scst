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
    border: 1px solid rgba(0,0,0,.2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
    box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
    width: 160%;
    left: -150px;
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
			
<h1 align="center" style="color: #2d3990;" >Petition - Atrocity</h1>
		<div class="col-md-12">
		
		
		<table style="font-size: 20px; color: #2d3990;"  width="100%" align="center">
	<tr>
	<td  >

	<c:if test="${type=='I'}">
	Type of Petition : Individual
	</c:if>
	<c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if>
	</td>
	<td  align="right">Petition Category : ${category}</td>
	</tr>
	</table>
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                        <ul class="nav nav-tabs" style="font-weight: bold;">
                            <li class="active"><a href="#tab1primary" data-toggle="tab">Petition Details</a></li>
                            <li><a href="#tab5primary" data-toggle="tab">Respondent Details</a></li>
                            <li><a href="#tab6primary" data-toggle="tab">Upload Documents/Evidence</a></li>
                          
                        </ul>
                </div> 
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">
                     <form:form modelAttribute="updateatrocity" name="updatemodifyatrocity" id="updateatrocity" >               
						<form:input type="hidden" name="petition_id" path="petition_id"
				          id="petition_id" value="${petId}" />
				          <form:input type="hidden" name="petitioner_id" path="petitioner_id"
				          id="petitioner_id" value="${pid}" />
                  						<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Type
													of
													Atrocity<span class="star">*</span></label>
												<div class="col-md-4">
													<form:select class="form-control SelectStyle" path="atrocity_type"
														id="Typeofatrocity" value="${updateatrocity.atrocity_type}"  tabindex="1">
														<form:option value="0">--Select--
														</form:option>
														<c:forEach items="${atrocities}" var="alt">
														<form:option value="${alt.atrocity_type }">${alt.atrocity_name}
														</form:option>
														</c:forEach>
													</form:select>
												</div>
											</div>
										</div>

         								
         								<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6"> Date of Offense   <span class="star">*</span> </label>
<div class="col-md-4">
<form:input path="offence_date" value="${updateatrocity.offence_date}" id="offence_date" placeholder="" class="form-control" tabindex="2" autocomplete="off" type="date"/>
</div>
</div>
</div>
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Place
													of Incident/Offense<span class="star">*</span></label>
												<div class="col-md-6">
													<form:input type="text"
														path="offence_place"
														value="${updateatrocity.offence_place}"
														id="offence_place"
														placeholder=" "
														class="form-control" maxlength="50" />
												</div>
											</div>
										</div>
										<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select District
													</label>
													<div
														class="col-md-4">
														<form:select class="form-control SelectStyle" path="off_district"
															id="off_district" value="${updateatrocity.off_district}"  onchange="getMandals('off_district','off_mandal', '${updateatrocity.off_mandal}')">
															<form:option value="0">--Select--
															</form:option>
															<c:forEach items="${district}" var="alt">
														<form:option value="${alt.distCode }">${alt.distName}
														</form:option>
														</c:forEach>
														</form:select>
													</div>
												</div>
											</div>
											
										<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select Mandal</label>
													<div
														class="col-md-4">
														<form:select class="form-control SelectStyle" path="off_mandal"                
															id="off_mandal" tabindex="3" >
															<form:option value="0">--Select--
															</form:option>
														</form:select>
													</div>
												</div>
											</div>
											
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Have
													you Lodged a
													Police Complaint<span class="star">*</span></label>
												<div class="col-md-3">
													<form:select class="form-control SelectStyle" path="ps_complaint"
														id="ps_complaint" tabindex="4">
														<form:option value="0">--Select--
														</form:option>
														<form:option 
															value="1">
															Yes
														</form:option>
														<form:option value="2">No
														</form:option>
													</form:select>
												</div>
											</div>
										</div>
										<div class="PoliceComplaint "
											id="1
											" style="display: none;">
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Police
														station
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<form:input type="text"
															path="ps_name"
															id="ps_name"
															placeholder=" policestation"
															class="form-control" tabindex="5" maxlength="60"/>
													</div>
												</div>
											</div>

											
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select District
													</label>
													<div
														class="col-md-6">
														<form:select class="form-control SelectStyle" path="ps_district"
															id="ps_district" tabindex="6" onchange="getMandals('ps_district','ps_mandal', '${updateatrocity.ps_mandal}')">
															<form:option value="0">--Select--
															</form:option>
															<c:forEach items="${district}" var="alt">
														<form:option value="${alt.distCode }">${alt.distName}
														</form:option>
														</c:forEach>
														</form:select>
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">													
														Select Mandal</label>
													<div
														class="col-md-6">
														<form:select class="form-control SelectStyle" path="ps_mandal"
															id="ps_mandal" tabindex="7" >
															<form:option value="0">--Select--
															</form:option>
															

														</form:select>
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														 Select Village
													</label>
													<div
														class="col-md-6">
														<form:input class="form-control SelectStyle" path="ps_village"  tabindex="8"   maxlength="60"                        
															id="ps_village" value="${updateatrocity.ps_village }"/>
															
													</div>
												</div>
											</div>
											<div class="row">
											<div
											class="col-sm-7 col-md-offset-2 form-group">
											<label
												class="col-md-6">FIR Number
											<span class="star">*</span></label>
											<div
												class="col-md-6">
												<form:input type="text"
													path="fir_no" tabindex="9"
													id="fir_no"
													
													class="form-control" maxlength="50" />
											</div>
										</div>
										</div>
										
										<div class="row">
											<div class="col-sm-7 col-md-offset-2 form-group">
											<label class="col-md-6">Upload FIR COPY<span class="star">*</span></label>
											<div class="col-md-6">
											<input name="fir_pdfUpload"  id="fir_pdfUpload" class="form-control" type="file" tabindex="10" />
											</div>
											</div>
											
											<div class="col-md-offset-2 form-group " style="color: red;">allowed .pdf file of 1 mb size </div>         
							
										</div> 
									</div>
									 
										
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
														rows="4" maxlength="100" id="appeal" tabindex="11" path="appeal"></form:textarea>
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
												<div class="col-md-6">
													<form:textarea
														path="pet_detail"
														id="pet_detail"
														cols="39" tabindex="12"  maxlength="500" 
														rows="7"></form:textarea>
												</div>
											</div>
										</div>
					<div align="center">
						<b><div  id="warning" style="color : red;" >
						</div><div  id="message" style="color : green;" ></div></b>
						<div class="btn btn-primary" id="update"  >
						Update</div>
					</div>
					
						
			</form:form>
                    
                   
                  
                        </div>
                   
                       
                        
                        <div class="tab-pane fade" id="tab5primary">
                           <div class="title1"  >
													<b style="padding-left: 5px;">Respondent Details</b>
													
												</div>
												<br>
                                        <form:form name="respondent" modelAttribute="respondent"  id="respondent">
                                        
												<form:input type="hidden" value="${petId}"  id="petition" path="petition"/>
												<form:input type="hidden" value="${pid}"  id="petitionerId" path="petitionerId"/>
                                        
											<div class="row">
                        <div class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Type of Respondent<span class="star">*</span></label>
                                        <div class="col-md-4">
														<form:select class="form-control SelectStyle" id="respondentdetails"  path="respType">
															<form:option value="0"
															>--Select--
															</form:option>
															<form:option value="P">Private/Individual</form:option>
															<form:option value="O">Officials</form:option>
														</form:select>
													</div>
													</div></div>
													
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Name
														of the
														respondent<span class="star">*</span></label>
													<div
														class="col-md-4">
														<form:input type="text"
															placeholder=" Full Name"
															class="form-control" maxlength="100"  id="respName" path="respName"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group" style="display: none;" id="caste">
													<label
														class="col-md-6">
														Select Caste
													<span class="star">*</span></label>
													
														<div class="col-md-3">
														<form:select class="form-control SelectStyle" path="caste" id="castevalue">
															<form:option value="0" >--Select--
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
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Designation/Profession
													<span class="star">*</span></label>
													<div
														class="col-md-4">
														<form:input type="text"
															placeholder=" Designation" id="respProffesion"
															class="form-control" path="respProffesion" maxlength="50" />
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Select District
													<span class="star">*</span></label>
													<div
														class="col-md-4">
														<form:select class="form-control SelectStyle" path="district"
															id="district">
															<form:option value="0">--Select--
															</form:option>
															<c:forEach items="${district}" var="alt">
														<form:option value="${alt.distCode }">${alt.distName}
														</form:option>
														</c:forEach>
														</form:select>
													</div>
												</div>
											</div>
												<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Address </label>
							<div class="col-md-6">
								<form:textarea maxlength="200" cols="39" rows="4" id="address" path="address"></form:textarea>
							</div>
						</div>
					</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Mobile
														No
													</label>
													<div
														class="col-md-4">
														<form:input type="text"
															placeholder=" Mobile No "
															class="form-control"
														 id="mobile" path="mobile" maxlength="10" />
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">E-Mail
														ID</label>
													<div
														class="col-md-4">
														<form:input type="text"
															placeholder=" e-mail "
															class="form-control"  id="email"   path="email" maxlength="50" />
													</div>
												</div>
												<div class="col-md-offset-2 form-group " style="color: red;">
												<div
													class="btn btn-md btn-primary" onclick="addRespondent()">
													+ Add more 
												</div>
							</div>
							</div>
							
							
											
											
                                        </form:form>
											<div align="center"
				style="background: #2d3990; color: white; height: 30px;">
				<h3>Respondent Details</h3>
			</div>
													<table id="respondentTable"
														class="table table-bordered" style="border: 1px solid black;">

														<thead>
															<th style="display: none;"  >Respondent id</th>
															<th style="text-align: center;"> S.No
															</th>
															<th > Type Respondent
															</th>
															<th >Respondent
																Name
															</th>
															<th  style="text-align: center;" >Caste
															</th>
															<th>Designation/Profession
															</th>
															<th>District
															</th>
															<th >e-Mail
															</th>
															<th  style="text-align: center;" >Mobile
																No
															</th>
															<th  style="text-align: center;" >Edit
															</th>
															<th  style="text-align: center;" >Delete
															</th>
														</thead>
														<tbody id="myTable">
														<c:forEach items="${respondents }" var="alt" varStatus="counter">
														
														<tr>
														<td  style="display: none;" id="hiddencode" >${alt.respno }</td>
														<td  style="text-align: center;" >${counter.count }</td>
														 <%-- <td>${alt.respType }</td> --%>
														<c:if test="${alt.respType =='P'}"><td>Private/Individual</td> </c:if>
														<c:if test="${alt.respType =='O'}"><td>Official</td></c:if>
														<td>${alt.respName }</td>
														<td>${alt.caste}</td>
														<td >${alt.respProffesion }</td>
														<td>${alt.district }</td>
														<td>${alt.email }</td>
														<td style="text-align: center;" >${alt.mobile}</td>
														<td style="text-align: center;"  data-toggle="modal"
									data-target="#exampleModal1" ><img height="22px" id="edit"  data-toggle="tooltip" title="Click to edit details"  src="${pageContext.request.contextPath}/static/images/edit.png"></img></td>
														<td style="text-align: center;" id="btn-remove" ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
														</tr>
														
														</c:forEach></tbody>
														
														
									
								</table>
											
											
											
										
										
										
									
											
</div>

<div class="tab-pane fade" id="tab6primary">
                           <div class="title1"  >
													<b style="padding-left: 5px;">Upload Documents/Evidence</b>
													
												</div>
								<form:form name="upload" modelAttribute="upload">
		
		
		<br>
		
    <div class="row" style="display: none;">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petitioner Id : </label>
													<div
														class="col-md-6">
														${pid}<form:input type="hidden" id="petitionerId" path="petitionerId" value="${pid}"/>
													</div>
												</div>
											</div>
    <div class="row" style="display: none;">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petition Id : </label>
													<div
														class="col-md-6">
															${petitionID}<form:input type="hidden" id="petitionId" path="petitionId" value="${petId}"/>
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
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Document description</label>
													<div
														class="col-md-4">
														<form:input type="text" style="text-transform:capitalize;"
														 name="docDesc" id="docDesc" maxlength="100" path="docDesc" class="form-control"/>
														
													
													</div>
												</div>
													<div class="col-md-offset-2 form-group " style="color: red;">
							</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Upload Document</label>
													<div
														class="col-md-4">
														<input type="file" name="file" id="file">
													</div>
												</div>
													<div class="col-md-offset-2 form-group " style="color: red;">allowed .pdf of size 1 mb
							</div>
											</div>
													 <div align="center">
											<a href="#">
												<div class="btn btn-md btn-primary" id="addDoc">
													+ Add more
												</div>
											</a>  

											</div>
											<br>
	<div  id="docdiv">											
<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Uploaded documents/Evidence
													</h3>
												</div>
									
										<table id="uploadTable"
											class="table table-bordered" style="border: 1px solid black;">
											<thead>
												<tr><th style="text-align: center;" >S.No</th>
												<th> Document description </th>
												<th style="text-align: center;" >View Document</th>
												<th style="text-align: center;">  Delete</th></tr>
											</thead>
											<tbody>
											<c:forEach items="${uploadedDocsByPid }" var="alt" varStatus="counter">
											<tr>
											<td style="display: none; text-align: center;" id="hiddencode" >${alt.docNo}</td>
											<td style=" text-align: center;" >${counter.count}</td>
											<td>${alt.docDesc}</td>
											<td style="text-align: center;" onclick="openRequestedPopup(${alt.docNo})"  ><a href="#"  data-toggle="tooltip" title="Click to view"> <img height="22px"  src="${pageContext.request.contextPath}/static/images/pdf-32.png"></img></a></td>
											<td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
											</tr>
											</c:forEach>
											</tbody>
											
											
										</table>
										<br>
										<div align="center" > <input type="button" class="btn btn-primary" value="Continue" onclick="proceed()"></div>
											
											<input type="hidden" value="${petId}"  >
												<input type="hidden" value="${pid}"  name="pid"  >
												<input type="hidden" value="${type}"  name="type">
												<input type="hidden" value="${category}"  name="category">
											
											</div></form:form>
											
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



	<!-- Respondent modal starts-->
			<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <div align="center"><h3 class="modal-title" id="exampleModalLabel1">Edit - Respondent Details</h3></div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
												id="respProffesion" class="form-control"
												name="respProffesion" />
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
												class="form-control" id="email" name="email" />
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
										id="updateRespondent"  value="Update"
										role="button" /> <input type="button" class="btn btn-danger"
										data-dismiss="modal" value="Close" role="button" />

								</div>
						</div>
					</div>
					</center>
				</div>





			</div> <!-- Respondent modal -->
	
		

<script type="text/javascript">









$('#ps_complaint').on('change', function () {


	
	if ($(this).val() === "1") {
		$(".PoliceComplaint").show();
	}
	else {
		$(".PoliceComplaint").hide();
	}
});



$('#pitition1').on('change', function () {
	if ($(this).val() === "3") {
		$(".otherland").show();
	}
	else {
		$(".otherland").hide();
	}
});



//update Service onclick
$(document).on('click','#update', function() {

	 $("#message").empty();
	 $("#warning").empty();

	
	  var frm = $('#updateatrocity')[0];
	var fdata = new FormData(frm);
		$.ajax({
			url : '/scst/petition/atrocity/updateAtrocityDetails',
			type : "POST",
			data : fdata,
			 processData: false,
	            contentType: false,
			success : function(response) {

				if(response=="Y"){
                    $("#message").html("Details Updated Successfully");
					}
				else{
					
                    $("#warning").html("Updation failed, try again");
					}
			}
		});

});


</script>
		<script>

function proceed(){
	var table=$("#uploadTable tr").length;
	if(table<1){
				alert("Add atleast one document/evidence");
				$('#docDesc').focus();
				return false;				
		}
		
	document.upload.method="POST";
	document.upload.action="/scst/petition/atrocity/submitpetition.htm";
	document.upload.submit();
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



$(document).ready(function() {

	
	
	if ($("#ps_complaint").val() === "1") {
		$(".PoliceComplaint").show();
	}
	else {
		$(".PoliceComplaint").hide();
	}
});





$("#service_type").change(function(){

	var service=$("#service_type").val();
	
	if(service=="3"){
	$(".Others").show();
		}else{

	$(".Others").hide();
			}
}); 


$(document).ready(function(){

	var dist=$("#off_district").val();
	var psdist=$("#ps_district").val();
	
	$("#off_district").val(dist).change();
	$("#ps_district").val(psdist).change();

	
}); 



$(document).ready(function(){


	var casestatus=$("#Casestatus").val();
	if(casestatus=="D"){
	$("#uploaddoc").show();
		}else{
	$("#uploaddoc").hide();
			}
}); 


$("#Casestatus").change(function(){
	var casestatus=$("#Casestatus").val();
	if(casestatus=="D"){
	$("#uploaddoc").show();
		}else{
	$("#uploaddoc").hide();
			}
}); 



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
						
						}
					else{
						alert(" Document delete failed");
						}
				}
			});

		}

	});


$(function(){
    $('#addDoc').on('click', function(){ 

   
    	var petitionID=$("#petitionId").val();
		var doctext=$('#docDesc').val();
		var fileInput = document.getElementById('file');
		var filePath = fileInput.value;
		
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
			document.getElementById('file').focus();
			return false;
		}
		if (!allowedExtensions.exec(filePath)) {
			alert('Invalid file type');
			fileInput.value = '';
			return false;
		}
		if (fileInput.files[0].size > 1024 * 1024) {
			alert('1 mb pdf file allowed');
			fileInput.value = '';
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
						+ '</td><td style="text-align: center;" onclick="openRequestedPopup('+response+')"  ><a href="#" data-toggle="tooltip" title="Click to view" > <img height="22px"  src="${pageContext.request.contextPath}/static/images/pdf-32.png"></img></a></td><td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
						$("#uploadTable").append($(s));
						$("#uploadTable").show();
						$("#docdiv").show();
						$("#proceed").show();
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

function openRequestedPopup(response) {
	let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
		width=1000,height=600,left=250,top=150`;
	var pid=$("#petitionId").val();
window.open("/scst/petition/documents/viewdoc?pid="+pid+"&docno="+response, 'test', params);
 
}




///respondent Javascript



	var rowText;
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
		

		//deleting land details onclick
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
													.val(obj.caste.trim());
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


		$(document).on(
				'click',
				'#updateRespondent',
				function() {
					
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
								alert("Respondent details updated")
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
			document.getElementById("Typeofatrocity").focus();
		}

		//fetch mandals onchange 
		function getMandals(ditrict,mandal, mdl){

			
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

							$('#'+mandal+'').val(mdl)
						}
					});
			
			}
		
	

	
</script>


</html>
