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
<script type="text/javascript">


function proceed(){

	document.petition.method="POST";
	document.petition.action="/scst/petition/petitiondetails.htm";
	document.petition.submit();
}
</script>
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

</head>
<body style="margin-right: 20px; margin-left: 20px;" onload="focus()">
	<div class="container-fluid">
	
					<h1 align="center" style="color:  #2d3990;">Petition - Entry</h1>
    <div class="title1"  >
													<b style="padding-left: 5px;">Petition - Entry</b>
													
												</div>
				<form:form modelAttribute="petition" name="petition"  enctype="multipart/form-data">

<br>
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Type of Petition <span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:select class="form-control SelectStyle" id="typeofpetition"
										name="type" path="petitionType">
										<form:option value="0">--Select--</form:option>
										<form:option value="I">Individual</form:option>
										<form:option value="G">Group</form:option>
									</form:select>
								</div>
							</div>
						</div>
						<div class="nodal" style="display: none;">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Name of the Organization/Group<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input  type="text" class="form-control SelectStyle" id="groupName" path="groupName"
										name="groupName" />
										
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Name of the nodal person<span
									class="star">*</span></label>
								<div class="col-md-6">
									<form:input  type="text" class="form-control SelectStyle" id="nodalName" path="nodalName"
										name="nodalName" />
										
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Designation/Profession<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input type="text" class="form-control SelectStyle" id="nodalDesign" path="nodalDesign"
										name="nodalDesign" />
										
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
							</div><div class="col-md-offset-2 form-group " style="color: red;">allowed .jpg/jpeg of 100 kb size
							</div>
						</div>  
						
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Mobile Number<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input type="text" class="form-control SelectStyle" id="nodalMobile" path="nodalMobile"
										name="nodalMobile" />
										
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Email ID<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:input type="text" class="form-control SelectStyle" id="nodalEmail" path="nodalEmail"
										name="nodalEmail" />
										
								</div>
							</div>
						</div>
						
						</div>
						
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Category of Petition<span
									class="star">*</span></label>
								<div class="col-md-4">
									<form:select class="form-control SelectStyle"  name="category"
										 required="required" path="petitionCat">
										<form:option value="0" >--Select--</form:option>
										<c:forEach var="alt" items="${categories}">
										<form:option value="${alt.ccode}" >${alt.cname}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>
						</div>
						
					</div>
					<div align="center">
						<input type="button" onclick="proceed()" class="btn btn-primary" value="Proceed">
					</div>
					<div align="center" style="color: red;">
							<b>${error }</b>
						</div>
					<input type="hidden" name="pid" value="${pid}">
				</form:form>
				<br>
				
					<br>
	</div>
	<script type="text/javascript">

	function focus(){
		document.getElementById("typeofpetition").focus();
		}


	$('#typeofpetition').on('change',function(){
	    if( $(this).val()==="G"){
	    $(".nodal").show();
	    }
	    else{
	    $(".nodal").hide();
	    }
	});
		
	</script>

	</body>
	</html>