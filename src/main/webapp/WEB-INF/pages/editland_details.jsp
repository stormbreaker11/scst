
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
		<table style="font-size: 20px;"  width="100%" align="center">
	<tr >
	<td style="color: #2d3990;" >

	Type of Petition: Individual
	
	</td>
	<td style="color: #2d3990;" align="right">Category of Petition : Land</td>
	</tr>
	</table>
                          <form:form name="landdetails" id="landdetails" modelAttribute="landdetails">
                          <form:input type="hidden" name="petitionerId"  path="petitionerId" id="petitionerId" value="${petitionerId}"/>
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
													<form:select class="form-control SelectStyle"
														id="landKind" path="landKind" >
														<form:option value="0">--Select--
														</form:option>
														<form:option value="1">Agricultural
															land
														</form:option>
														<form:option value="1" >Housing
															Land
														</form:option>
														<form:option value="1" >Forest
															Land
														</form:option>
													</form:select>
												</div>
											</div></div>
										
										<div class="row from group">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Type
													of Land <span class="star">*</span></label>
												<div class="col-md-6">
													<form:select class="form-control SelectStyle"
														id="pitition1" path="landType"  >
														<form:option value="0">--Select--
														</form:option>
														<form:option
															value="1">
															Patta
															land
														</form:option>
														<form:option
															value="2">
															Govt.
															Assigned
															land
														</form:option>
														<form:option
															value="3">
															Other
															Land
														</form:option>
													</form:select>
												</div>
											</div>
										</div>
										
										   <div class="otherland" id="3" style="display: none;">
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Others
													Land <span class="star">*</span></label>
												<div class="col-md-6">
													<form:input type="text"
														placeholder=" Type of land"
														class="form-control" id="olandtext" maxlength="30" path="otherland" />
												</div>
											</div>
										</div>
										
										<br>
		</div>	
												<br>
                        <div class="Petition170s1" id="land">
										
									</div>
                        <div class="ppetioner" id="pland">
										
										<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select District <span class="star">*</span> </label>
<div class="col-md-6">
<form:select class="form-control SelectStyle" path="landDistrict" id="landDistrict" name="landDistrict">
<form:option value="0">--Select--</form:option>
<form:option value="1" >Hyderabad</form:option>
<form:option value="2">Rangareddy</form:option>
<form:option value="3" >Nizamabad</form:option>
<form:option value="4" >Mahabubnagar</form:option>

</form:select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select Mandal <span class="star">*</span> </label>
<div class="col-md-6">
<form:select class="form-control SelectStyle" path="landmandal" id="landmandal" >
<form:option value="0" >--Select--</form:option>
<form:option value="0">Mandal-1</form:option>



</form:select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Revenue Village  </label>
<div class="col-md-6">
<form:select class="form-control SelectStyle"  path="landvillage"  name="landvillage" id="landvillage">
<form:option value="0">--Select--</form:option>
<form:option value="1" >Village-1</form:option>
<form:option value="2" >Village-2</form:option>
<form:option value="3" >Village-3</form:option>
</form:select>
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
														<form:input type="text" path="passbookNo" id="passbookNo" name="passbookNo"
															placeholder=" Patta number"
															class="form-control" maxlength="10" />
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
														<form:input type="text"
															placeholder=" Survey number" maxlength="15"  path="surveyNo"  id="surveyNo" name="surveyNo"
															class="form-control"/>
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
														<form:input type="text"
															placeholder="" maxlength="6" path="extentOfLand" id="extentOfLand" name="extentOfLand" 
															class="form-control"/>
													</div>	
													<div class="col-md-0">
													
<form:select class="form-control SelectStyle" path="units" style="width: 125px;" id="units" >
<form:option value="0" >--Select--</form:option>
<form:option value="1" >Acre</form:option>
<form:option value="2" >Gunta</form:option>
<form:option value="3" >Square yards</form:option>
</form:select>
</div>
																				
																					
																					</div>
																					<div class="col-md-2">
													<div class="btn btn-primary"
													style="text-align: left;" id="addmore" onclick="addLand()" >
														+ Add More
												</div>
							</div>			
																					
											</div>
										</div>
										<input type="hidden" name="pid"  value="${pid }">
										</form:form>
										
										
										
										<div id="landdiv">
										<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Land
														Details
													</h3>
												</div>
                        <div
													>
													<table id="landTable"
														class="table table-bordered" style="border: 1px solid black;	">

														<thead>
															<th style="display: none;"  >Land id</th>
															<th style="text-align: center;"> S.No
															</th>
															<th>Kind of Land
															</th>
															<th>Type of Land
															</th>
															<th style="text-align: center;" >Patta
																Number
															</th>
															<th style="text-align: center;" >Survey
																Number
															</th>
															<th style="text-align: center;" >Extent of Land
															</th>
															<th style="text-align: center;" >Edit
															</th>
															<th style="text-align: center;" >Delete
															</th>
														</thead>
														<tbody id="landtd">
														
														<c:forEach items="${lands }" var="alt" varStatus="counter">
														<tr>
														<td style="display: none;" id="hiddencode"  >${alt.landId }</td>
														<td style="text-align: center;"  >${counter.count }</td>
														<td >${alt.landKind }</td>
														<td>${alt.landType }</td>
														<td style="text-align: center;"  >${alt.passbookNo }</td>
														<td style="text-align: center;"  >${alt.surveyNo }</td>
														<td style="text-align: center;"  >${alt.extentOfLand } (${alt.units })</td>
														<td style="text-align: center;" ><img height="22px"  data-toggle="tooltip" title="Click to edit details"  src="${pageContext.request.contextPath}/static/images/edit.png"></img></td>
														<td style="text-align: center;" id="btn-remove" ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td>
														</tr>
																</c:forEach>
														</tbody>
									
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
						+ '</td><td style="text-align: center;"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/edit.png"></img></td></td> <td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/images/delete-1-icon.png"></img></td></tr>'
						
						$("#landTable").append($(s)); 
						$('#landdiv').show();
						
					alert("Land details added successfully");
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
</html>