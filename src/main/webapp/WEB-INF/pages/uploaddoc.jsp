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

<!------ Include the above in your HEAD tag ---------->

<!------ Include the above in your HEAD tag ---------->
<style>

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

</style>
<body  style="margin-left: 20px; margin-right: 20px;">

				
	<div class="container-fluid">
			
<h1 align="center" style="color: #2d3990;" >Petition - Upload Documents/Evidence</h1>
<form:form name="upload" modelAttribute="upload">
		<div class="col-md-12">
		<table style="font-size: 20px;"  width="100%" align="center">
	<tr >
	<td style="color: #2d3990;" >

	<c:if test="${type=='I'}">
	Type of Petition: Individual
	</c:if>
	<c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if>
	</td>
	
	<td style="color: #2d3990;" align="right">Category of Petition :  ${category}                                                                                     </td>
	</tr>
	</table>
		<div align="left" style="background: #2d3990; color: white; height: 30px; vertical-align: middle; padding-top: 5px; padding-left: 20px; ">
													<b>Upload Documents</b>
													
												</div>
		<br>
		
    <div class="row" style="display: none;">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petitioner Id : </label>
													<div
														class="col-md-6">
														${petitionerID}<form:input type="hidden" id="petitionerId" path="petitionerId" value="${petitionerID}"/>
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
															${petitionID}<form:input type="hidden" id="petitionId" path="petitionId" value="${petitionID}"/>
													</div>
												</div>
											</div>
												
    <div class="row">
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
														<form:input type="text" style="text-transform:capitalize;" name="docDesc" id="docDesc" tabindex="1" maxlength="100" path="docDesc" class="form-control"/>
														
													
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
														<input type="file" name="file" id="file" >
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
				  <div align="center" id="savebtn" style="display: none;">
            <input type="button"  class="btn btn-primary" onclick="proceed()"  value="Save And Continue">
            </div>				
            </div></div>
            
            <input type="hidden" name="pid" value="${petitionerID}">
            <input type="hidden" name="type" value="${type}">
            <input type="hidden" name="category" id="category" value="${category}">
            </form:form>
        </div>
	
	
<script>

function proceed(){
	var category=$("#category").val();
	
	document.upload.method="POST";
	document.upload.action="/scst/petition/"+category.toLowerCase()+"/submitpetition.htm";
	document.upload.submit();
}




var k=0;
$(document).on('click','#btn-remove', function() {

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
		var fileInput = document.getElementById('file');
		var filePath = fileInput.value;
		filePath=filePath.toLowerCase();
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
						$("#savebtn").show();
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

//popup window

function openRequestedPopup(response) {
	let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
		width=1000,height=600,left=250,top=150`;
	var pid=$("#petitionId").val();
window.open("/scst/petition/documents/viewdoc?pid="+pid+"&docno="+response, 'test', params);
 
}

function printDiv() {
	
	let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
		width=1000,height=600,left=250,top=150`;
	var pid=$("#petitionId").val();
window.open("/scst/petition/land/pdfViewPointExport?pid="+pid+"&docno="+response, 'test', params);
 
}

function focus(){
	document.getElementById("docDesc").focus();
}


$(document).ready(function(){

	var table=$("#uploadTable tr").length;
	if(table>1){
				$("#savebtn").show();
		}

}); 

</script>
	
	
</body>

</html>
