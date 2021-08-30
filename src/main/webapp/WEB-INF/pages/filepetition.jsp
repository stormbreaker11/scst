
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="static/images/deptlogo.png" rel="icon">

<script type="text/javascript" src="static/vendor/js/jquery.min.js"></script>
<link href="static/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="static/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="static/vendor/css/font-awesome.min.css" rel="stylesheet">
<link href="static/vendor/css/animate.css" rel="stylesheet">
<link href="static/vendor/css/style.css" rel="stylesheet">
<link href="static/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="static/lib/animate/animate.min.css" rel="stylesheet">
<link href="static/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="static/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="static/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>

.groupbtn {
	margin-left: 150px;
}

h2 {
	text-align: center;
	font-size: 16px;
	font-weight: 600;
	text-transform: uppercase;
	display: inline-block;
	margin: 40px 8px 10px 8px;
	color: #cccccc;
}

/* STRUCTURE */
.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	max-width: 450px;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	position: absolute;
	left: 550px;
}

#formFooter {
	background-color: #f6f6f6;
	border-top: 1px solid #dce8f1;
	padding: 25px;
	text-align: center;
	-webkit-border-radius: 0 0 10px 10px;
	border-radius: 0 0 10px 10px;
}

/* TABS */
h2.inactive {
	color: #cccccc;
}

h2.active {
	color: #0d0d0d;
	border-bottom: 2px solid #5fbae9;
}

/* FORM TYPOGRAPHY*/
input[type=button], input[type=submit], input[type=reset] {
	background-color: #56baed;
	border: none;
	color: white;
	padding: 15px 80px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	text-transform: uppercase;
	font-size: 13px;
	-webkit-box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
	box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
	margin: 5px 20px 40px 20px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover
	{
	background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active
	{
	-moz-transform: scale(0.95);
	-webkit-transform: scale(0.95);
	-o-transform: scale(0.95);
	-ms-transform: scale(0.95);
	transform: scale(0.95);
}

input[type=text], input[type=password] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #fff;
	border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder, input[type=password]:placeholder {
	color: #cccccc;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
	-webkit-animation-name: fadeInDown;
	animation-name: fadeInDown;
	-webkit-animation-duration: 1s;
	animation-duration: 1s;
	-webkit-animation-fill-mode: both;
	animation-fill-mode: both;
}

@
-webkit-keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
none
;

    
transform
:
 
none
;

  
}
}
@
keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
none
;

    
transform
:
 
none
;

  
}
}

/* Simple CSS3 Fade-in Animation */
@
-webkit-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
-moz-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.fadeIn {
	opacity: 0;
	-webkit-animation: fadeIn ease-in 1;
	-moz-animation: fadeIn ease-in 1;
	animation: fadeIn ease-in 1;
	-webkit-animation-fill-mode: forwards;
	-moz-animation-fill-mode: forwards;
	animation-fill-mode: forwards;
	-webkit-animation-duration: 1s;
	-moz-animation-duration: 1s;
	animation-duration: 1s;
}

.fadeIn.first {
	-webkit-animation-delay: 0.4s;
	-moz-animation-delay: 0.4s;
	animation-delay: 0.4s;
}

.fadeIn.second {
	-webkit-animation-delay: 0.6s;
	-moz-animation-delay: 0.6s;
	animation-delay: 0.6s;
}

.fadeIn.third {
	-webkit-animation-delay: 0.8s;
	-moz-animation-delay: 0.8s;
	animation-delay: 0.8s;
}

.fadeIn.fourth {
	-webkit-animation-delay: 1s;
	-moz-animation-delay: 1s;
	animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
	display: block;
	left: 0;
	bottom: -10px;
	width: 0;
	height: 2px;
	background-color: #56baed;
	content: "";
	transition: width 0.2s;
}

.underlineHover:hover {
	color: #0d0d0d;
}

.underlineHover:hover:after {
	width: 100%;
}

h1 {
	color: #60a0ff;
}

/* OTHERS */
*:focus {
	outline: none;
}
/* 
input[type=text], input[type=password] {
	background: #2a313abf;
	border-radius: 15px;
	color: white;
	width: 100%;
	padding: 6px 8px;
	margin: 4px 0;
	display: inline-block;
	border: 1px solid #f1ccb7;
	box-sizing: border-box;
}
 */
.btnstylenew {
	width: 100% !important;
}

button:hover {
	opacity: 0.8;
}

button a {
	color: white;
}

button a:hover {
	color: pink;
}

.cancelbtn {
	width: auto;
	padding: 5px 13px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	border: 3px solid #2196F3;
	padding: 3px;
	background-color: #292c37;
	width: 18%;
	border-radius: 50%;
	margin-top: -99px;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

.modal1 {
	z-index: 100;
	display: none;
	position: relative;
	/*z-index: 1;  Sit on top */
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	padding-top: 60px;
}

#id01 {
	position: absolute;
	/*z-index: 1;  Sit on top */
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
}

.modal-content1 {
	padding: 10px;
	border-radius: 35px;
	color: white;
	background-color: #023443ab;
	margin: 5% auto 15% auto;
	border: 3px solid #2196F3;
	width: 28%;
}

.close1 {
	position: absolute;
	right: 25px;
	top: 0;
	color: #1a2980;
	font-size: 35px;
	font-weight: bold;
	opacity: 0.8;
}

.close1:hover, .close1:focus {
	opacity: 1;
	color: #FF9800;
	cursor: pointer;
}

.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
label {
  display: inline-block;
  display: flex;
}
</style>

</head>

<body style="margin-right: 20px; margin-left: 20px;">
	<div class="container-fluid">
	<br>
		<div class="col-md-12">
			<div class="box form_content">
	
 <h5 class="subhead">
					<h1 align="center" style="color:  #2d3990;">Petition Details</h1>
					</h5> 
				<br> <br>

				<form name="file"  action="landdetails.htm" >

					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-7 col-md-offset-2 form-group">
								<label class="col-md-6">Type of Petition <span
									class="star">*</span></label>
								<div class="col-md-6">
									<select class="form-control SelectStyle" id="typeofpetition" name="type">
										<option value="0">  --Select--</option>
										<option value="I">Individual</option>
										<option value="G">Group</option>
									</select>
								</div>
							</div>
						</div>
						<div class="individualpetition" id="individual">
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Category
													of
													Petition<span class="star">*</span></label>
												<div class="col-md-6">
													<select class="form-control SelectStyle" name="category"
														id="Petition170">
														<option>--Select--
														</option>
														<option
															value="Land">
															Land
														</option>
														<option
															value="Atrocity">
															Atrocity
														</option>
														<option
															value="Service">
															Service
														</option>
														<option
															value="General">
															General
														</option>
													</select>
												</div>
											</div>
										</div>
									</div>
					</div>
					<div align="center"><button type="submit" class="btn btn-primary" >Proceed</button></div>
					</form>
					<br>
					<br>
			</div>
		</div>
	</div>
	</body>
	</html>