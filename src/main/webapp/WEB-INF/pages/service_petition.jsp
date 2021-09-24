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

	document.filepetition.method="POST";
	document.filepetition.action="/scst/petition/service/saveService";
	document.filepetition.submit();
	
}


</script>
<script>
	document.onkeydown = function() {

		
		switch (event.keyCode) {
		case 116: //F5 button
			event.returnValue = false;
			event.keyCode = 0;
			return false;
		case 82: //R button
			if (event.ctrlKey) {
				event.returnValue = false;
				event.keyCode = 0;
				return false;
			}
		}
	}
</script>

<script>
	function my_onkeydown_handler(event) {
		
		switch (event.keyCode) {

		
		case 116: // 'F5'
			event.preventDefault();
			event.keyCode = 0;
			window.status = "F5 disabled";
			break;
		}
	}
	document.addEventListener("keydown", my_onkeydown_handler);
</script>
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
<body style="margin-right: 20px; margin-left: 20px;">
	<div class="container-fluid">
	
		<div class="col-md-12">
		
	
 <h5 class="subhead">
					<h1 align="center" style="color:  #2d3990;">Petition - Service</h1>
					</h5> 
	<table style="font-size: 20px;"  width="98%" align="center">
	<tr >
	<td style="color: #2d3990;" >

	<c:if test="${type=='I'}">
	Type of Petition: Individual
	</c:if>
	<c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if>
	</td>
	<td style="color: #2d3990;" align="right">Category of Petition : Service</td>
	</tr>
	</table>
				
				<div align="left" style="background: #2d3990; color: white; height: 30px; vertical-align: middle; padding-top: 5px; padding-left: 20px; ">
													<b>Petition Details</b>
													
												</div>
				<br>
		<!-- <div class="panel-body">
            <div class="tab-content"> -->
				<form:form modelAttribute="service" name="filepetition"  enctype="multipart/form-data">         
                
                <form:input type="hidden" path="petitioner_id" value="${pid}"/>
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Type
													Service<span class="star">*</span></label>
												<div class="col-md-6">
													<form:select class="form-control SelectStyle" path="service_type"
														id="service_type" >
														<form:option value="0">--Select--
														</form:option>
														<form:option value="1">
															 Appointments
														</form:option>
														<form:option value="2">
															 Promotions
														</form:option>
														<form:option value="3">Others
														</form:option>
													</form:select>
												</div>
											</div>
										</div>
										
										<div class="Others" id="3" style="display: none;">
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Other
														Service
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<form:input type="text"
															path="oth_name"
															id="oth_name"
															placeholder=" "
															class="form-control" />
													</div>
												</div>
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
														path="appeal"
														id="appeal"
														cols="39"
														rows="2"></form:textarea>
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
														cols="39"
														rows="7"></form:textarea>
												</div>
											</div>
										</div>
									
                        				
                        				<div align="center">
						<input type="button" onclick="proceed()" class="btn btn-primary" value="Save And Continue">
					</div>
					<input type="hidden" name="pid" value="${pid }">
					<input type="hidden" name="type" value="${type }">
					<input type="hidden" name="category" value="Service">
					<br>
										
                  </form:form>
				
		</div>
					
					
					
			
					
					
					
					
				
				
				<br>
				
					<br>
			</div>
		</div>
		
		<script>
		$('#service_type').on('change', function () {
			if ($(this).val() === "3") {
				$(".Others").show();
			}
			else {
				$(".Others").hide();
			}
		});
		
	</script>
	
	</body>
	</html>