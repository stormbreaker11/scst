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
<script src="${pageContext.request.contextPath}/static/js/validations/respondent.js"></script>
<script src="${pageContext.request.contextPath}/static/js/validations/generalpetition.js"></script>

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

.table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, 
.table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td{
border-color: black;

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
			
<h1 align="center" style="color: #2d3990;" >Petition - General</h1>
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
                            <li class="active"><a href="#tab2primary" data-toggle="tab">Nodal Officer details</a></li>
                            <li ><a href="#tab3primary" data-toggle="tab">Joint Petitioner Details</a></li>
                            <li ><a href="#tab1primary" data-toggle="tab">Petition Details</a></li>
                            <li><a href="#tab5primary" data-toggle="tab">Respondent Details</a></li>
                            <li><a href="#tab6primary" data-toggle="tab">Upload Documents/Evidence</a></li>
                          
                        </ul>
                </div> 
                <div class="panel-body">
                    <div class="tab-content">
                    
                    <div class="tab-pane fade in active" id="tab2primary">
                    
                    <form:form modelAttribute="petition" name="petition"  enctype="multipart/form-data">

						<div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Name of the Organization/Group<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input  type="text" class="form-control SelectStyle" id="groupName" path="groupName"
										name="groupName" value="${petition.groupName }" />
										
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Name of the nodal person<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input  type="text" class="form-control SelectStyle" id="nodalName" path="nodalName"
										name="nodalName"  value="${petition.nodalName}"/>
										
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Designation/Profession<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input type="text" class="form-control SelectStyle" id="nodalDesign" path="nodalDesign"
										name="nodalDesign" value="${petition.nodalDesign }" />
										
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Upload Signature of the nodal person<span
									class="star">*</span></label>
								<div class="col-md-4">
									<input type=file class="form-control SelectStyle" id="file" 
										name="file">
								</div>
							</div><div class="col-md-offset-2 form-group " style="color: red;">allowed .jpg/jpeg of 1 mb size
							</div>
						</div>  
						
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Mobile Number<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input type="text" class="form-control SelectStyle" id="nodalMobile" path="nodalMobile"
									value="${petition.nodalMobile }" 	name="nodalMobile" />
										
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Email ID<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input type="text" class="form-control SelectStyle" id="nodalEmail" path="nodalEmail" 
									value="${petition.nodalEmail}"	name="nodalEmail" />
										
								</div>
							</div>
						</div>
						
						</div>
						
					
				<table align="center"><tr><td align="center"> <b><font id="message" color="green"></font></b></td></tr></table>
                    <table align="center"><tr><td align="center"> <b><font id="warning" color="red"></font></b></td></tr></table>
					<div align="center">
						<input type="button" id="updateNodal" class="btn btn-primary" value="Update">
					</div>
					
				</form:form>
                    
                    </div>
                    <div class="tab-pane fade " id="tab3primary">
                    
                    

			<form:form name="jointpetitioner" modelAttribute="jointpetitioner" >
				
					<form:input type="hidden" value="${pid}" id="petionerId" name="petionerId" path="petionerId"/>

				<div class="title1">
					<b style="padding-left: 5px;">Joint Petitioner</b>

				</div>
				<br>

				
				
				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Petitioner Name<span
							class="star">*</span></label>
						<div class="col-md-4">
							<form:input type="text" 
								class="form-control" maxlength="100" id="petionerName"
								name="petionerName" path="petionerName" />
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-7 col-md-offset-2 form-group">
						<label class="col-md-6">Petitioner Sign<span
							class="star">*</span></label>
						<div class="col-md-4">
							<input type="file" 
								class="form-control" name="file" id="signfile"
								/>
						</div>
					</div>
						<div class="col-md-offset-2 form-group " style="color: red;">
						<div class="btn btn-md btn-primary" onclick="addpetitioners()">
							+ Add more</div>
					</div>
				</div>
				

			</form:form>

			




			<div id="petitionerdiv" >
				<div align="center"
					style="background: #2d3990; color: white; height: 30px;">
					<h3>Joint Petitioner Details</h3>
				</div>
				<div>
					<table id="PetitionerTable" class="table table-bordered"
						style="border: 1px solid black; ">

						<thead>
							<th style="display: none;">petid id</th>
							<th style="text-align: center;">S.No</th>
							<th>Petitioner Name</th>
							<th style="text-align: center;"  >Petitioner Sign</th>
							<th style="text-align: center;">Delete</th>
						</thead>
						<tbody id="myTable">
							<c:forEach var="alt" items="${jplist}" varStatus="counter">
								<tr>
								<td style="display:none;" id="hiddencode">${alt.prProofId}</td>
								<td align="center" >${counter.count}</td>
								<td>${alt.petionerName }</td>
								<td style="text-align: center;"    ><img height="22px" onclick="openRequestedPopup('${alt.prProofId}')" data-toggle="tooltip" title="Click to view Sign" id="edit" src="${pageContext.request.contextPath}/static/images/imageview.png"></img></td>
								<td style="text-align: center;" id="btn-remove" ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
								</tr>							
							</c:forEach>
						</tbody>



					</table>
				</div>
			
			</div>
                    
                    </div>
                        <div class="tab-pane fade " id="tab1primary">
                     						
						<form:form modelAttribute="updategeneral" name="updatemodifygeneral" id="updategeneral" >               
						<form:input type="hidden" name="petition_id" path="petition_id"
				          id="petition_id" value="${petId}" />
                  						
									 
										
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
														rows="4" maxlength="100" id="appeal" path="appeal"></form:textarea>
												</div>
											</div>
										</div>
         								
         								
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group" >
												<label class="col-md-6">Petition
													in Detail
													(1000 words)
												<span class="star">*</span></label>
												<div class="col-md-6">
													<form:textarea
														path="pet_detail"
														id="pet_detail"
														cols="39"
														rows="7" maxlength="1000"></form:textarea>
												</div>
											</div>
										</div>
					
					
						
			</form:form>
                    
                    <div align="center">
                    <b><font id="messageGeneral" color="green"></font><font id="warningGeneral" color="red"></font></b>
                    
                    </div>
                   <div align="center">
                         
                    <input type="button" value="Update" id="update" class="btn btn-primary">
                    
                    </div>
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
															class="form-control" path="respProffesion" />
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
												<form:option value="${alt.distCode }" >${alt.distName }</form:option>
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
														 id="mobile" path="mobile" />
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
															class="form-control"  id="email"   path="email" />
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
														<td>${alt.caste }</td>
														<td >${alt.respProffesion }</td>
														<td>${alt.district }</td>
														<td>${alt.email }</td>
														<td style="text-align: center;" >${alt.mobile }</td>
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
														<form:input type="text" style="text-transform:capitalize;" name="docDesc" id="docDesc" maxlength="100" path="docDesc" class="form-control"/>
														
													
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
														<input type="file" name="file" id="filename">
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
											<td style="text-align: center;" onclick="openEvidence(${alt.docNo})"  ><a href="#"  data-toggle="tooltip" title="Click to view"> <img height="22px"  src="${pageContext.request.contextPath}/static/images/pdf-32.png"></img></a></td>
											<td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
											</tr>
											</c:forEach>
											</tbody>
											
											
										</table>
										
										<input type="hidden" value="${petId}"  >
												<input type="hidden" value="${pid}"  name="pid"  >
												<input type="hidden" value="${type}"  name="type">
												<input type="hidden" value="${category}"  name="category">
											</div>
											<div align="center"><input type="button" class="btn btn-md btn-primary" value="Continue" onclick="proceed()"></div></form:form>				
											
											</div>
											
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
										id="updateRespondent"  value="Update" data-dismiss="modal"
										role="button" /> <input type="button" class="btn btn-danger"
										data-dismiss="modal" value="Close" role="button" />

								</div>
						</div>
					</div>
					</center>
				</div>





			</div> <!-- Respondent modal -->
	
		

<script type="text/javascript">









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



	 var status=generalpetition();

		if(status==false){
				return false;
			}

	 
	    var frm = $('#updategeneral')[0];
		var fdata = new FormData(frm);
		   var k=0;
			$.ajax({
				url : '/scst/petition/general/updateGeneralDetails',
				type : "POST",
				data : fdata ,
				processData : false,
				contentType : false,
			success : function(response) {
				if(response=="Y"){
                    $("#messageGeneral").html("Details Updated Successfully");
					}
				else{
                    $("#warningGeneral").html("Updation failed, try again");
					}
			}
		});

});


</script>
		<script>

function proceed(){
	var table=$("#uploadTable tr").length;
	if(table==1){
				alert("Add atleast one document/evidence");
				$('#docDesc').focus();
				return false;				
		}
	document.upload.method="POST";
	document.upload.action="/scst/petition/general/submitpetition.htm";
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

$("#service_type").change(function(){

	var service=$("#service_type").val();
	
	if(service=="3"){
	$(".Others").show();
		}else{

	$(".Others").hide();
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
						alert(" Document deleted succesfully");
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
		var fileInput = document.getElementById('filename');
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
						+ '</td><td style="text-align: center;" onclick="openEvidence('+response+')"  ><a href="#" data-toggle="tooltip" title="Click to view" > <img height="22px"  src="${pageContext.request.contextPath}/static/images/pdf-32.png"></img></a></td><td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
						$("#uploadTable").append($(s));
						$("#uploadTable").show();
						$("#docdiv").show();
						$("#proceed").show();
						
						fileInput.value = '';
						$('#docDesc').val('');
					
					}
				else{
						alert("Document upload failed, try again");
						return false;
					}
				 
			}
		});

		
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

					var regex = /^[a-zA-z]+([\s][a-zA-Z]+)*$/;

					var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
					var phoneRegex = /^[6-9]\d{9}$/;

					if (respondentdetails == "0") {
						$(
						'#exampleModal1 #respondentdetails').focus();
						alert("Select Type of Respondent");
						return false;
					}

					if (name.length == 0) {
						$("#exampleModal1 #respName").focus();
						alert("Name of the respondent is required");
						return false;
					}
					if (regex.test(name) == false) {
						$("#exampleModal1 #respName").focus();
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
						$('#exampleModal1 #respProffesion')
						.val();
						$('#exampleModal1 #respProffesion')
						.focus();
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
						$("#exampleModal1 #address").focus();
						alert("Address is required");
						return false;
					}

					if (newaddregex.test(address) == false) {
						$("#exampleModal1 #address").focus();
						alert("Invalid Address");
						return false;
					}

					if (mobile.length == 0) {
						alert("Mobile  Number is required");
						$("#exampleModal1 #mobile").focus();

						
						return false;
					}

					if (phoneRegex.test(mobile) == false) {
						alert("Not a valid mobile number");
						$("#exampleModal1 #mobile").focus();
						return false;
					}


					if (email.length == 0) {
						alert("Email is required");
						$("#exampleModal1 #email").focus();
						return false;
					}

					if (emailRegex.test(email) == false) {
						alert("Enter a valid Email");
						$("#exampleModal1 #email").focus();
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
								alert("Respondent details updated");
								getRespondentList();
							} else {
								alert("Respondent details updation failed");
							}
						}

					});
				});

		function getRespondentList() {
			$("#respondentTable #myTable").empty();
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
								$("#respondentTable #myTable").append(s);

							}

						}

					});
		}

		function focus() {
			document.getElementById("service_type").focus();
		}



		//update nodal onclick
		$(document).on('click','#updateNodal', function() {



			  var groupName=$("#groupName").val().trim();
			  var nodalName=$("#nodalName").val().trim();
			  var nodalDesign=$("#nodalDesign").val().trim();
			  var nodalMobile=$("#nodalMobile").val().trim();
			  var nodalEmail=$("#nodalEmail").val().trim();
			  var file=document.getElementById("nodalfile");


			    var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			  	var regex = /^[a-zA-Z]+(\s+[a-zA-Z]+)*$/;
			  	var phoneRegex = /^[6-9]\d{9}$/;
			  	

					if (groupName == "") {
				  		document.getElementById("groupName").focus();
				  		alert("Name of the Organization/Group is required");
				  		return false;
				  	}
				  	if (regex.test(groupName) == false) {
				  		document.getElementById("groupName").focus();
				  		alert("Invalid Name of the Organization/Group");
				  		return false;
				  	}
				  	if (nodalName == "") {
				  		document.getElementById("nodalName").focus();
				  		alert("Name of the nodal person is required");
				  		return false;
				  	}
				  	if (regex.test(nodalName) == false) {
				  		document.getElementById("nodalName").focus();
				  		alert("Invalid Name of the nodal person");
				  		return false;
				  	}
				  	if (nodalDesign == "") {
				  		document.getElementById("nodalDesign").focus();
				  		alert("Designation/Profession is required");
				  		return false;
				  	}
				  	if (regex.test(nodalDesign) == false) {
				  		document.getElementById("nodalDesign").focus();
				  		alert("Invalid Designation/Profession");
				  		return false;
				  	}

				  	if(file.value==""){
				  		document.getElementById("nodalfile").focus();
				  		alert("Upload Signature of the nodal person ");
				  		return false;0
				  	  	}

					if (nodalMobile.length == 0) {
						alert("Nodal Mobile  Number is required");
						document.getElementById("nodalMobile").focus();
						return false;
					}

					if (phoneRegex.test(nodalMobile) == false) {
						alert("Not a valid mobile number");
						document.getElementById("nodalMobile").focus();
						return false;
					}
					
					if (nodalEmail.length == 0) {
						alert("Email is required");
						document.getElementById("nodalEmail").focus();
						return false;
					}

					if (emailRegex.test(nodalEmail) == false) {
						alert("Enter a valid Email");
						document.getElementById("nodalEmail").focus();
						return false;
					}

			
			var form = $('#petition')[0];
			var fdata = new FormData(form);
			$("#message").empty();
				$.ajax({
					url : '/scst/updateNodal.htm',
					type : "POST",
					data : fdata,
				    processData: false,
		            contentType: false,
					success : function(response) {
						if(response=="Y"){
		                    $("#message").html("Details Updated Successfully");
							}
						else{
							 $("#warning").html("Updation failed");
							}
					}
				});

		});



		//adding joint-petitioner details dynamically
		function addpetitioners(){

			


			var name = $("#petionerName").val();
			var petionerId = $("#petionerId").val();
			var filesign=document.getElementById('signfile');
			var filepath = filesign.value;
			var allowedExtensions = /(\.jpg)$/i;


			if(name==""){
				$("#petionerName").focus();
				alert("Joint Petitioner Name is required");
				return false;
				}
			if (filepath == "") {
				alert("File is required");
				document.getElementById('signfile').focus();
				return false;
			}
			if (!allowedExtensions.exec(filepath)) {
				alert('Invalid file type');
				filepath.value = '';
				return false;
			}
			
			  var form1 = $('#jointpetitioner')[0];
			  var fdata = new FormData(form1);
			  fdata.append('name', name);
				fdata.append('petid', petionerId);
			
			   var k=0;
				$.ajax({
					url : '/scst/addjointpetitioner.htm',
					type : "POST",
					data : fdata,
				 processData: false,
		         contentType: false,
					success : function(response) {
						 if(response=="N")
							{
							alert("Respondent details adding failed");
							return false;
							}
						else{
								var row = $('#PetitionerTable tr').length;
							
								k = $('#PetitionerTable tr:last-child td:nth-child(2)')
										if(row==1){
											 $('#saveBtn').show();
											 $('#petitionerdiv').show();
											}
									
								if (isNaN(k)) {
									k = 0;
								}
								var s = '<tr ><td align="center" style="display: none;" id="hiddencode">'
										+ response
										+ '</td><td align="center">'
										+ ++k
										+ '</td><td>'
										+ name
										+ '</td><td style="text-align: center;"    ><img height="22px" onclick="openRequestedPopup('+response+')" data-toggle="tooltip" title="Click to view Sign" id="edit" src="${pageContext.request.contextPath}/static/images/imageview.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
										$("#PetitionerTable").append($(s));
										$("#petionerName").val('')
										$("#signfile").val('')
							}

						}

					});
		}
		
		//deleting joint petitioners onclick 
		$(document).on('click', '#PetitionerTable #btn-remove', function() {

			var $row = $(this).closest("tr"); // Find the row
			var doccode = $row.find("#hiddencode").text();
			
			var petitionerId = $("#petionerId").val();
			var con = confirm("Are you sure you want to delete?");
			if (con) {
				$.ajax({
					url : '/scst/deletesign.htm',
					type : "POST",
					data : {
						"doccode" : doccode,
						"petitionerId" : petitionerId
					},
					success : function(response) {
						//$('#btn-remove').closest('tr').remove();
						if (response == "Y") {
							$(".table-bordered tr td").filter(function() {
								return $(this).text() === doccode;
							}).closest("tr").remove();
							var row = $('.table-bordered tr').length;
							if(row==1){
								 $('#petitionerdiv').hide();
								 $('#saveBtn').hide();
								}
						} else {
							alert(" Delete Unsuccessfull ");
						}

					}
				});

			}

		});


		//popup window
		function openEvidence(response) {
			let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
				width=1000,height=600,left=250,top=150`;
			var pid=$("#petitionId").val();
		window.open("/scst/petition/documents/viewdoc?pid="+pid+"&docno="+response, 'test', params);

		}

		function openRequestedPopup(response) {

			let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
				width=1000,height=600,left=250,top=150`;
			var pid=$("#petionerId").val();

		window.open("/scst/viewSign?pid="+pid+"&docno="+response, 'test', params);
		 
		}
			
</script>


</html>
