
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

				
	<div class="container-fluid">
			
<h1 align="center" style="color: #2d3990;" >Petition - Respondent</h1>
		<div class="col-md-12">
		
		<form:form name="respondent" modelAttribute="respondent"  id="respondent">
		<table style="font-size: 20px;"  width="100%" align="center">
	<tr >
	<td style="color: #2d3990;" >

	<c:if test="${ptype=='I'}">
	Type of Petition: Individual
	</c:if>
	<c:if test="${ptype}=='G'">
	Type of Petition : Group
	</c:if>
	</td>
	<td style="color: #2d3990;" align="right">Category of Petition : Land</td>
	</tr>
	</table>
            
                        
                        <div class="title1"  >
													<b style="padding-left: 5px;">Respondent Details</b>
													
												</div>
												<br>
										
                        <form:input type="hidden" path="petitionerId" id="petitionerId" value="${pid }"/>
                        <div class="row">
                        <div class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Type of Respondent<span class="star">*</span></label>
                                        <div class="col-md-6">
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
														class="col-md-6">
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
													
														<div class="col-md-6">
														<form:select class="form-control SelectStyle" path="caste" id="castevalue">
															<form:option value="0" >--Select--
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
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Designation/Profession
													<span class="star">*</span></label>
													<div
														class="col-md-6">
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
														class="col-md-6">
														<form:select class="form-control SelectStyle" path="district"
															id="district">
															<form:option value="0">--Select--
															</form:option>
															<form:option value="1" >Hyderabad
															</form:option>
															<form:option value="2" >Rangareddy
															</form:option>
															<form:option value="3">Nizamabad
															</form:option>
															<form:option value="4" >Mahabubnagar
															</form:option>
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
														class="col-md-6">
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
														class="col-md-6">
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
										
										
								
											
												
												
											
										
								
											
                          <input type="hidden" name="pid" value="${pid }"/>
                        
                           </form:form>
                       <div id="respondentdiv">
										<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Respondent
														Details
													</h3>
												</div>
                        <div>
													<table id="respondentTable"
														class="table table-bordered" style="border: 1px solid black;	">

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
															<th  style="text-align: center;" >Mobile
																No
															</th>
															<th >e-Mail
															</th>
															<th  style="text-align: center;" >Edit
															</th>
															<th  style="text-align: center;" >Delete
															</th>
														</thead>
														
														<c:forEach items="${respondents }" var="alt" varStatus="counter">
														<tbody id="landtd">
														<tr>
														<td  style="display: none;" id="hiddencode" >${alt.respno }</td>
														<td  style="text-align: center;" >${counter.count }</td>
														<td>${alt.respType }</td>
														<td>${alt.respName }</td>
														<td  style="text-align: center;" >${alt.caste }</td>
														<td>${alt.respProffesion }</td>
														<td>${alt.district }</td>
														<td style="text-align: center;" >${alt.mobile }</td>
														<td>${alt.email }</td>
														<td style="text-align: center;" ><img height="22px"  data-toggle="tooltip" title="Click to edit details"  src="${pageContext.request.contextPath}/static/images/edit.png"></img></td>
														<td style="text-align: center;" id="btn-remove" ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
														</tr>
														</tbody>
														</c:forEach>
														
														
									
								</table>
												</div>
		<div align="center">
			<div class="col-md-5 col-md-offset-4">
				<a href="${pageContext.request.contextPath}/petition/respondent/respondentdetails.htm/${petitionerId }">
					<div class="btn btn-md btn-primary">Continue</div>
				</a>
			</div>
		</div></div>    
                           
                           
                        </div>
                      
                        </div>
             
          
	


	<script>

	$(function() {
		$(document).ready(function() {
			var row=$("#respondentTable tr").length;
			if (row==1) {
				$('#respondentdiv').hide();
			} else {
				$('#respondentdiv').show();
			}
		});

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
			var respondentdetails = $("#respondentdetails option:selected").text();
			var respName = $("#respName").val();
			var castevalueText = $("#castevalue  option:selected").text();
			var castevalue = $("#castevalue").val();
			
			var respProffesion = $("#respProffesion").val();
			var districtText = $("#district  option:selected").text();
			var district = $("#district").val();
		
			var email = $("#email").val();
			var mobile = $("#mobile").val();
			alert("1")
			   var frm = $('#respondent').serialize();
			   var k=0;
				$.ajax({
					url : '/scst/petition/respondent/addrespondent.htm',
					type : "POST",
					data : frm,
					success : function(response) {
						alert(response)
						 if(response=="N")
							{
							alert("Respondent details adding failed");
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
								+ respondentdetails
								+ '</td><td>'
								+ respName
								+ '</td><td style="text-align: center;"  >'
								+ castevalueText
								+ '</td><td align="center" width: 15%"  >'
								+ respProffesion
								+ '</td><td style="text-align: center;"  >'
								+ districtText
								+ '</td><td style="text-align: center;"  >'
								+ email
								+ '</td><td style="text-align: center;"  >'
								+ mobile
								+ '</td><td style="text-align: center;"><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
								
								$("#respondentTable").append($(s)); 
								$('#respondentdiv').show();
								
							alert("Respondent details added successfully");
						} 

						
				}

		});
		}





		//deleting land details onclick
		$(document).on('click','#btn-remove', function() {
			 
		    var $row = $(this).closest("tr"); // Find the row
			var respcode = $row.find("#hiddencode").text();
			var petitionerId=$("#petitionerId").val();
			alert(respcode)
			var con = confirm("Are you sure you want to delete?");
			if (con) {
				$.ajax({
					url : '/scst/petition/respondent/deleterespondent.htm',
					type : "POST",
					data : {
						"respcode" : respcode,
						"petitionerId": petitionerId
					},
					success : function(response) {
						//$('#btn-remove').closest('tr').remove();
						if(response=="Y"){
							$(".table-bordered tr td").filter(function() {
								return $(this).text() ===respcode;
							}).closest("tr").remove();
							var row=$("#respondentTable tr").length;
							if (row == 1) {
								$('#respondentdiv').hide();
							} else {
								$('#respondentdiv').show();
							}
							alert("Deleted succesfully");
							}
						else{
							alert(" Delete Unsuccessfull ");
							
							}
						
					}
				});

			}

		});


		
	</script>
	

</body>

</html>
