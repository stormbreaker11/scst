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

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
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
	href="${pageContext.request.contextPath}/static/css/panel.css">
<link
	href="${pageContext.request.contextPath}/static/css/sb-admin-2.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.7.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/script.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/validations/petitionervalidations.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


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



	<div class="col-md-12">
	
	
		<h1 align="center" style="color: #2d3990;">Petition - Joint
			Petitioner</h1>
<table style="font-size: 20px;" width="100%" align="center">
				<tr>
					
					<td style="color: #2d3990;"><c:if test="${type=='I'}">
	Type of Petition: Individual
	</c:if> <c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if></td>
					<td style="color: #2d3990;" align="right">Category of Petition
						: ${typeOpt}</td>
				</tr>
			</table>
		<form:form name="jointpetitioner" modelAttribute="jointpetitioner">
			
<form:input type="hidden" value="${pid}" id="petionerId"
						name="petionerId" path="petionerId" />
			<div class="title1">
				<b style="padding-left: 5px;">Joint Petitioner</b>

			</div>
			<br>



			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Petitioner Name<span class="star">*</span></label>
					<div class="col-md-4">
						<form:input type="text" class="form-control" maxlength="100"
							id="petionerName" name="petionerName" path="petionerName" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-7 col-md-offset-2 form-group">
					<label class="col-md-6">Petitioner Signature<span
						class="star">*</span></label>
					<div class="col-md-4">
						<input type="file" class="form-control" id="file" name="file"
							onchange="validSign('file')" />
					</div>
				</div>
				<div class="col-md-offset-2 form-group " style="color: red;">
					<div class="col-md-offset-2 form-group " style="color: red;">allowed
						.jpg/jpeg of 100 kb size</div>
				</div>
			</div>
			<div align="center">
				<div style="text-align: center;" class="btn btn-primary"
					onclick="addpetitioners()">+ Add more</div>
			</div>
		</form:form>






		<div id="petitionerdiv" style="display: none;">
			<div align="center"
				style="background: #2d3990; color: white; height: 30px;">
				<h3>Joint Petitioner Details</h3>
			</div>
			<div>
				<table id="PetitionerTable" class="table table-bordered"
					style="border: 1px solid black;">

					<thead>
						<th style="display: none;">petid id</th>
						<th style="text-align: center;">S.No</th>
						<th>Petitioner Name</th>
						<th style="text-align: center;">Petitioner Sign</th>
						<th style="text-align: center;">Delete</th>
					</thead>
					<tbody id="myTable">

					</tbody>



				</table>
			</div>
			<div id="saveBtn" align="center" style="display: none;">
				<div class="col-md-5 col-md-offset-4">
					<a href="/scst/proceed.htm/${pid}/${type}/${typeOpt}">
						<div class="btn btn-md btn-primary">Save And Continue</div>
					</a>
				</div>
			</div>
		</div>


	</div>






	<script>




	

		//adding respondent details dynamically
		function addpetitioners(){
			
			var name = $("#petionerName").val();
			var petionerId = $("#petionerId").val();
			var filesign=document.getElementById('file');
			var filepath = filesign.value;
			var allowedExtensions = /(\.jpg)$/i;

			if(name==""){
				$("#petionerName").focus();
				alert("Joint Petitioner Name is required");
				return false;
				}
			if (filepath == "") {
				alert("File is required");
				document.getElementById('file').focus();
				return false;
			}
			if (!allowedExtensions.exec(filepath)) {
				alert('Invalid file type');
				fileInput.value = '';
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
							alert("Joint Petitioner details adding failed");
							return false;
							}
						else{
								var row = $('.table-bordered tr').length;
								if (row == 1) {
									k = 0;
								}
								k = $(
										'.table-bordered tr:last-child td:nth-child(2)').html();
										
										
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
										filesign.value='';
								
							}

						}

					});
		}

		//deleting land details onclick
		$(document).on('click', '#btn-remove', function() {

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


		function focus() {
			document.getElementById("petionerName").focus();
		}

		function openRequestedPopup(response) {
			let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
				width=1000,height=600,left=250,top=150`;
			var pid=$("#petionerId").val();
		window.open("/scst/viewSign?pid="+pid+"&docno="+response, 'test', params);
		 
		}
				$(document).ready(function(){
					
					var row = $('.table-bordered tr').length;
							if(row==1){
								 $('#PetitionerTable').show();
								}
							
					
					});
	</script>


</body>

</html>
