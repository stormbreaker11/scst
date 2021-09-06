
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
			
<h1 align="center" style="color: #2d3990;" >Petition - Upload Documents/Evidences</h1>
		<div class="col-md-12">
		
		<form name="upload" modelAttribute="upload"  id="upload">
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
													<b style="padding-left: 5px;">Upload documents/Evidences</b>
													
												</div>
												<br>
										
                        <input type="hidden" path="petitionerId" id="petitionerId" value="${pid }"/>
                        <div class="row">
                        <div class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Upload Document/Evidence<span class="star">*</span></label>
                                        <div class="col-md-6">
														 <input type="file" name="document" id="document"/>
													</div>
													</div>
												<div class="col-md-offset-2 form-group " style="color: red;">
												<div
													class="btn btn-md btn-primary" onclick="addRespondent()">
													+ Add more 
												</div>
							</div>		
													</div>
													
											
											
											
											
												
										
                        
                           </form>
                       <div id="uploaddiv">
										<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Uploaded Documents/Evidences
													</h3>
												</div>
                        <div>
													<table id="uploadTable"
														class="table table-bordered" style="border: 1px solid black;	">

														<thead>
															<th style="display: none;"  >doc id</th>
															<th style="text-align: center;"> S.No
															</th>
															<th > Document Description
															</th>
															<th >View
															</th>
															<th  style="text-align: center;" >Delete
															</th>
															
														</thead>
														
														
														
														
									
								</table>
												</div>
		<%-- <div align="center">
			<div class="col-md-5 col-md-offset-4">
				<a href="${pageContext.request.contextPath}/petition/respondent/respondentdetails.htm/${petitionerId }">
					<div class="btn btn-md btn-primary">Continue</div>
				</a>
			</div>
		</div> --%></div>    
                           
                           
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


		$(function(){
		    $('#addDoc').on('click', function(){ 

				var user=$('#user').val().trim();
				var pid=$('#pid').val().trim();
				var ipsbatch=$('#ipsbatch').val().trim();
				var doccode=$('#doccode').val().trim();
				var doctext=$('#doccode option:selected').text();
				var fileInput = document.getElementById('file');
				var filePath = fileInput.value;
				filePath=filePath.toLowerCase();
			
				var allowedExtensions = /(\.pdf)$/i;

				
				 var form = $('#documents')[0];
				 var fdata = new FormData(form);
				if(doccode=="00"){
					$('#doccode').focus();
					alert("Select Upload Document");
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
				var myTab = document.getElementById('eduTable');
				for (i = 1; i < myTab.rows.length; i++) {
					var objCells = myTab.rows.item(i).cells;
					var s1 = objCells.item(0).innerHTML;
					if (doctext == s1) {
						alert(doctext + " Document already Uploaded ");
						$("#doccode").focus();
						return false;
					}
				}
				
				$.ajax({
					url : 'saveprobdoc.htm',
					type : "POST",
					data : fdata,
				 processData: false,
		         contentType: false,
					success : function(response) {
						
						if(response!="0"){
							 k=$('#eduTable tr:last-child td:nth-child(2)').html();
							 if(isNaN(k)){

								 k=0;

								 }
							var s = '<tr><td style="text-align: center; display: none;" id="hiddensubcode"  >'
								+ response
								+ '</td><td align="center">'
								+ ++k
								+ '</td><td>'
								+ doctext
								+ '</td><td style="text-align: center;"  ><a href="viewdoc?pid='+user+'&dsrno='+response+'"  data-toggle="tooltip" title="Click to view" target="_blank"> <img height="30px"  src="${pageContext.request.contextPath}/static/image/pdf-logo.png"></img></a></td><td style="text-align: center;" id="btn-remove"   ><img height="22px"  data-toggle="tooltip" title="Click to delete"  src="${pageContext.request.contextPath}/static/image/delete-1-icon.png"></img></td></tr>'
								$("#eduTable").append($(s));
								$("#eduTable").show();
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
		
	</script>
	

</body>

</html>
