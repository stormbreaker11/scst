<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%><!DOCTYPE html>
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
	border: none;
	color: #0d0d0d;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px;
	width: 85%;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	-webkit-border-radius: 5px 5px 5px 5px;
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
}
</style>

</head>

<body onload="getcaptcha()" >
	<!--==========================
  Header
  ============================-->


			<!-- <div class="row">
				<nav class="navbar-default nav-style">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navbar-collapse">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="index.html">Skip to main Content</a></li>
							<li><a href="index.html"> Screen Reader Access</a></li>
							<li><a href="index.html"> RTI</a></li>
							<li><a href="index.html"> Key Contacts</a></li>
							<li><a href="index.html" class="">Feedback</a></li>
							<li>
								<button id="linkIncrease" class="btn btn-xs btnstyle">
									<b>A+</b>
								</button>
								<button id="linkReset" class="btn btn-xs btnstyle">
									<b>A</b>&nbsp;
								</button>
								<button id="linkDecrease" class="btn btn-xs btnstyle">
									<b>A-</b>
								</button>
							</li>
							<li>&nbsp;&nbsp;</li>
							<li>
								<button class="btn btn-xs btnstyle1" id="co">&nbsp;T&nbsp;</button>
								<button class="btn btn-xs btnstyle2" id="co1">&nbsp;T&nbsp;</button>
								<button class="btn btn-xs btnstyle4" id="co3">&nbsp;T&nbsp;</button>
							</li>
							<li>&nbsp;&nbsp;</li>
							<li>
								<div id="google_translate_element"></div>
							</li>
							<li class='time-frame'><a> <span id='date-part'></span>
									&nbsp; <span id='time-part'></span></a></li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>

						</ul>

					</div> 
				</nav>
			</div> -->

<%-- 
<% String username = (String)request.getSession().getAttribute("captcha_security"); 
out.print("Pkk"+ username);
%> --%>
			<div class="row">
				<div class="header">
					<img class="img-responsive" src="static/images/header.png">
				</div>
			</div>
			<header id="header">
				<div   class="row">

					<div class="menu">
						<div id="navbar">
							<nav
								class="navbar1 navbar-default navbar-fnt navbar-backgrnd nav-size"
								role="navigation">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle"
										data-toggle="collapse" data-target="#navbar-collapse-1">
										<span class="icon-bar"></span> <span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>

								<!-- *********************General Information *************************** -->

								<div class="collapse navbar-collapse" id="navbar-collapse-1">
									<ul class="nav navbar-nav">

										<li><a href="${pageContext.request.contextPath}/home">Home</a></li>

										<li class="dropdown"><a href="" class="dropdown-toggle"
											data-toggle="dropdown">State Committee <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<%-- <li><a href="${pageContext.request.contextPath}/chairman.htm">Chairman</a></li>
												<li><a href="${pageContext.request.contextPath}/member.htm">Members</a></li>
 --%>
												<li><a href="#">Chairman</a></li>
												<li><a href="#">Members</a></li>
											</ul></li>
										<%-- 	<li><a href="${pageContext.request.contextPath}/districtvigilance.htm">District
												Committe</a></li>
										<li><a href="${pageContext.request.contextPath}/civilrightsday.htm">Civil Rights Day
												Programme</a></li>
										<li><a href="${pageContext.request.contextPath}/courthearing.htm">Court Hearing</a></li>
										<li><a href="${pageContext.request.contextPath}/reviewmeeting.htm">Review Meeting</a></li>
										<li><a href="${pageContext.request.contextPath}/achievementsandinitiatives.htm">Achievements
												and Initiatives</a></li> --%>
										<li><a href="#">District Committe</a></li>
										<li><a href="#">Civil Rights Day Programme</a></li>
										<li><a href="#">Court Hearing</a></li>
										<li><a href="#">Review Meeting</a></li>
										<li><a href="#">Achievements and Initiatives</a></li>
										<!--<li class="dropdown"><a href="" class="dropdown-toggle"
           data-toggle="dropdown">News & Media <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
									<li><a href="#">Photos</a></li>
                                                <li><a href="">Videos</a></li>
                                                <li><a href="">Press Clippings</a></li>
                                               
                                           </ul></li>	
<li><a href="#">Related Links</a></li>	
<li><a href="#">Contact Us</a></li>	

<li><a href="OrientationProgrammes.html">Orientation Programmes</a></li>
<li><a href="FieldVisitoftheCommission.html">Field Visit of the Commission</a></li>
                                        <li class="dropdown"><a href="" class="dropdown-toggle"
                                                                data-toggle="dropdown">ABOUT US <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
									<li><a href="#">Aims & Objectives</a></li>
                                                <li><a href="">Organogram</a></li>
                                               
                                           </ul></li>
-->





									</ul>
									<ul class="nav navbar-nav navbar-right">
										<li><a
											onclick="document.getElementById('id01').style.display='block'"
											class="" href="#"><span
												class="glyphicon glyphicon-log-in"></span>&nbsp; Petition
												Login</a></li>

										<li>&nbsp; &nbsp;</li>

										<li>&nbsp; &nbsp;</li>
									</ul>
									<!--<ul class="nav navbar-nav navbar-right">
<li><a href="http://164.100.112.24/PetitionMonitoring/" target="_blank"><i class="fa fa-television" aria-hidden="true"></i> Petition Monitoring</a></li>
     								<li>&nbsp; &nbsp; </li>

	 <li>&nbsp; &nbsp; </li>
    </ul>-->
								</div>
							</nav>
						</div>
					</div>
				</div>
			</header>
			<div class="ticker1 modern-ticker mt-round">
				<div class="mt-body">
					<div class="mt-label btn-default2">Flash News</div>
					<div class="mt-news">
						<ul>
							<li><a href="#" target="_blank"> <img
									src="static/images/new4.gif"> Telangana State Commission
									For Scheduled Castes And Scheduled Tribes
							</a>
								<div class="headline2"></div></li>

							<li><a href="#" target="_blank"> <img
									src="static/images/new4.gif"> Telangana State Commission
									For Scheduled Castes And Scheduled Tribes
							</a>
								<div class="headline2"></div></li>


							<li><a href="#" target="_blank"> <img
									src="static/images/new4.gif"> Telangana State Commission
									For Scheduled Castes And Scheduled Tribes
							</a>
								<div class="headline2"></div></li>

							<li><a href="#" target="_blank"> <img
									src="static/images/new4.gif"> Telangana State Commission
									For Scheduled Castes And Scheduled Tribes
							</a>
								<div class="headline2"></div></li>

							<li><a href="#" target="_blank"> <img
									src="static/images/new4.gif"> Telangana State Commission
									For Scheduled Castes And Scheduled Tribes
							</a>
								<div class="headline2"></div></li>






						</ul>
					</div>
					<div class="mt-controls">
						<div class="mt-prev"></div>
						<div class="mt-play"></div>
						<div class="mt-next"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<!--  <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>-->

					<div class="carousel-inner">

						<div class="item active">
							<img src="static/images/banner.png" alt="aiims" class=""
								style="width: 100%; height: 400px;">
						</div>
						<div class="item">
							<img src="static/images/banner.png" alt="aiims" class=""
								style="width: 100%; height: 400px;">
						</div>

					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <!--   <span class="glyphicon glyphicon-chevron-left"></span>-->
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <!--  <span class="glyphicon glyphicon-chevron-right"></span>-->
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>




			<!-- 
			<div class="container-fluid">
				<div class="row bgc">
					<div class="gallery">
						<div class="col-lg-6">
							<div class="why-us-img">
								<div class="panel">
									<div class="panel-heading2 panel-headstyle2">
										<h4>
											<span class="headcap"></span>Chief Minister
										</h4>
									</div>
									<div class="panel-gallery panel-gallery-sty">
										<img src="static/images/kcr.png" class="msg_img">
									</div>

									<div class="panel-footer panel-gallery-sty">
										<p>
											<b>Sri. K Chandrashekar Rao <br> Hon'ble Chief
												Minister
											</b>
										</p>
										<a href="#"> <span class="pull-right">Read More <i
												class="fa fa-arrow-circle-right"></i></span>
										</a>
										<div class="clearfix"></div>
									</div>

								</div>
							</div>
						</div>


						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading2 panel-headstyle2">
									<h4>
										News & Events<span class="headcap"></span>
									</h4>
								</div>
								<div class="panel-gallery_1">
									<ul>
										<br>
										<a href="#"><li class="liststyle1"><i
												class="ion-android-checkmark-circle"></i>&nbsp; Telangana
												State Commission</li></a>
										<a href="#"><li class="liststyle1"><i
												class="ion-android-checkmark-circle"></i>&nbsp; Telangana
												State Commission for SC & ST</li></a>
										<a href="#"><li class="liststyle1"><i
												class="ion-android-checkmark-circle"></i>&nbsp; TS
												Commission for Scheduled Castes</li></a>
									</ul>
								</div>
								<a href="#">
									<div class="panel-footer">
										<span class="pull-right">Read More <i
											class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div></div>
			 -->

			<%-- 
			<div class="row">
				<section id="why-us" class="wow fadeIn ">



					<div class="col-md-4">
						<br>
						<div class="panel">
							<div class="panel-heading3 panel-headstyle2">
								<h4>
									<span class="headcap"> </span>Notifications
								</h4>
							</div>
							<div class="panel-gallery_1">
								<div class="Noticeboard_list">
									<div class="vticker">
										<ul class="indent4">

											<li class="liststyle"><a href="#"></a><img
												src="static/images/new4.gif"> <a href="#"
												target="_blank"><b>&nbsp;&nbsp;</b>Telangana State
													Commission For Scheduled Castes And Scheduled Tribes</a></li>
											<li class="liststyle"><a href="#"></a><img
												src="static/images/new4.gif"> <a href="#"
												target="_blank"><b>&nbsp;&nbsp;</b>Telangana State
													Commission For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><a href="#"></a><img
												src="static/images/new4.gif"> <a href="#"
												target="_blank"><b>&nbsp;&nbsp;</b>Telangana State
													Commission For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><a href="#"></a><img
												src="static/images/new4.gif"> <a href="#"
												target="_blank"><b>&nbsp;&nbsp;</b>Telangana State
													Commission For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><a href="#"></a><img
												src="static/images/new4.gif"> <a href="#"
												target="_blank"><b>&nbsp;&nbsp;</b>Telangana State
													Commission For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><a href="#"></a><img
												src="static/images/new4.gif"> <a href="#"
												target="_blank"><b>&nbsp;&nbsp;</b>Telangana State
													Commission For Scheduled Castes And Scheduled Tribes</a></li>

										</ul>
									</div>
								</div>
							</div>

							<a href="#">
								<div class="pfbg">
									<span class="pull-right">Read More <i
										class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>

					<div class="col-lg-4 bgstys">
						<div class="why-us-content">
							<br>
							<div class="features wow  clearfix">
								<div class="row">
									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/civilsrightday.htm">
												<div class="col-md-12 dashboard-body">Civil Rights Day
													Programme</div>
											</a>
										</div>
									</div>


									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/districtvigilance.htm">
												<div class="col-md-12 dashboard-body">District
													Vigilance and Monitoring Committee</div>
											</a>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/courthearing.htm">
												<div class="col-md-12 dashboard-body">Court Hearing</div>
											</a>
										</div>
									</div>

									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/fieldvisitofthecommission.htm">
												<div class="col-md-12 dashboard-body">Field Visit of
													the Commission</div>
											</a>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/reviewmeeting.htm">
												<div class="col-md-12 dashboard-body">Review Meeting</div>
											</a>
										</div>

									</div>
									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/OrientationProgrammes.htm">
												<div class="col-md-12 dashboard-body">Orientation
													Programmes</div>
											</a>
										</div>
									</div>


								</div>

								<div class="row">
									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="${pageContext.request.contextPath}/achievementsandinitiatives.htm">
												<div class="col-md-12 dashboard-body">Achievements and
													Initiatives</div>
											</a>
										</div>
									</div>


									<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 wow "
										data-wow-duration="1.4s">
										<div class="dashboard_sty">
											<a href="#">
												<div class="col-md-12 dashboard-body">Help Desk</div>
											</a>
										</div>
									</div>
								</div>

							</div>


						</div>

					</div>
					<div class="col-md-4">
						<br>
						<div class="panel">
							<div class="panel-heading3 panel-headstyle2">
								<h4>
									<span class="headcap"> </span>GOs and Circulars
								</h4>
							</div>
							<div class="panel-gallery_1">
								<marquee id="scroll_news4" direction="up" behavior="scroll"
									onmouseover="stop()" onmouseout="start()" class="circulars">
									<div class="Noticeboard_list">
										<ul class="indent2">

											<li class="liststyle"><b>&#x21e8;</b>&nbsp; <a class=""
												href="#"><b>&nbsp;&nbsp;</b>Telangana State Commission
													For Scheduled Castes And Scheduled Tribes</a></li>
											<li class="liststyle"><b>&#x21e8;</b>&nbsp; <a class=""
												href="#"><b>&nbsp;&nbsp;</b>Telangana State Commission
													For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><b>&#x21e8;</b>&nbsp; <a class=""
												href="#"><b>&nbsp;&nbsp;</b>Telangana State Commission
													For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><b>&#x21e8;</b>&nbsp; <a class=""
												href="#"><b>&nbsp;&nbsp;</b>Telangana State Commission
													For Scheduled Castes And Scheduled Tribes</a></li>

											<li class="liststyle"><b>&#x21e8;</b>&nbsp; <a class=""
												href="#"><b>&nbsp;&nbsp;</b>Telangana State Commission
													For Scheduled Castes And Scheduled Tribes</a></li>


										</ul>
									</div>
								</marquee>
							</div>
							<a href="#">
								<div class="pfbg">
									<span class="pull-right">Read More <i
										class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>


				</section>

			</div>
 --%>
			<!-- modal -->
			<div id="id01" class="modal1">
				<div>
					<div id="formContent" align="center">
						<br>
						<!-- Tabs Titles -->

						<!-- Icon -->
						<div class="fadeIn first">
							<img
								src="${pageContext.request.contextPath}/static/images/deptlogo.png"
								width="100px" alt="User Icon" />
						</div>
						<span
							onclick="document.getElementById('id01').style.display='none'"
							class="close1" title="Close Modal">&times;</span>
						<!-- Login Form -->
						<form name="home" class="fadeIn first">

							<input type="text" id="mobile" class="fadeIn second"
								style="border-bottom: 2px solid #00BCD4;" name="mobile"
								placeholder="Mobile Numer" maxlength="10" class="form-control">

							<div class="input-group">

								<span class=" " class="groupbtn">
									<button id="getotp" style="text-align: left;" class="btn btn-primary btn-sm"
										type="button">Get OTP</button>
									<button class="btn btn-primary btn-sm"  style="text-align: right; display: none;" id="resend" type="button">Re-Send
										OTP</button>
								</span>
							</div>

							<input type="text" id="enterotp"
								style="border-bottom: 2px solid #00BCD4;" class="fadeIn third"
								name="enterotp" placeholder="Enter OTP" maxlength="6" class="form-control">
							<div class="captcha"  >
							
							<img src="${pageContext.request.contextPath}/getcaptcha.htm" alt="captcha"
							style="width: 110px;" id="captcha_image" class="fadeIn third" >
									
							<img src="${pageContext.request.contextPath}/static/images/refresh_blue.png"
							alt="" title="refresh" id="reload_captcha" class="fadeIn third" > 
									
							<input type="text" id="captcha" name="captcha" class="fadeIn third" maxlength="6" 
							style="border-bottom: 2px solid #00BCD4; width: 200px;" placeholder="Enter Captcha">
						</div>
							
							
							
							<span style="float: left; margin-left: 28px; margin-right: 28px;"><p>This portal is for submission of petitions by SCs & STs (or) others on behalf of SCs & STs only.</p></span>
						<div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="d-flex flex-wrap justify-content-between align-items-center">
                                <div class="custom-checkbox d-block"> <label >
                                        <div><input type="checkbox" name="box1"  value="Accept and Procced">&nbsp;Accept and Procced</div>
                                    </label> 
                            </div>
                        </div>
                    </div>
                    </div>
								
								
								<input
								style="width: 50%; text-align: center; background: linear-gradient(208deg, #2196F3, #102976) !important;"
								type="button" class="fadeIn third" id="submitbtn" class="login" value="Sign in">
								
						
						</form>

					</div>
				</div>
			</div>
			<!-- modal end  -->
			<div id="id02" class="modal1">
				<form class="modal-content1 animate" action="">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('id02').style.display='none'"
							class="close1" title="Close Modal">&times;</span> <img
							src="static/images/userForget.png" alt="forgetPWicon"
							class="avatar">
					</div>

					<div class="">
						<label for="uname"><b>Username</b></label> <input type="text"
							placeholder="Enter Username" name="uname" required> <label
							for="psw"><b>Enter New Password</b></label> <input
							type="password" placeholder="Enter Password" name="psw" required>
						<label for="psw"><b>Re Enter Password</b></label> <input
							type="password" placeholder="Enter Password" name="psw" required>
						<button type="submit" class="btnstylenew">Update</button>

					</div>

					<div class="">
						<button type="button"
							onclick="document.getElementById('id02').style.display='none'"
							class="cancelbtn">Cancel</button>
					</div>
					
					<input type="hidden" name="server"  id="serverotp">
					<input type="hidden" name="servercaptcha"  id="servercaptcha">
				</form>
			</div>

			
			<br>
			<br>
			<br>
			<br>
			<div class="row footer">
				<div class="">
					<div class="col-md-12">
						<p>2020 © Copyright by National Informatics Center</p>

					</div>

				</div>
			</div>
			</footer>
			<!-- #footer -->

			<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>


			<!-- JavaScript Libraries -->

			<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="static/vendor/js/pdfview.js"></script>
			<script type="text/javascript" src="static/vendor/js/lan.js"></script>
			<script src="static/vendor/js/easy-ticker.js" type="text/javascript"></script>
			<script type="text/javascript" src="static/vendor/js/ticker.js"></script>

			<script src="static/lib/jquery/jquery-migrate.min.js"></script>
			<script src="static/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
			<script src="static/lib/easing/easing.min.js"></script>
			<script src="static/lib/mobile-nav/mobile-nav.js"></script>
			<script src="static/lib/waypoints/waypoints.min.js"></script>
			<script src="static/js/jquery.modern-ticker.min.js"></script>
			<script src="static/lib/counterup/counterup.min.js"></script>
			<script src="static/lib/owlcarousel/owl.carousel.min.js"></script>
			<script src="static/lib/isotope/isotope.pkgd.min.js"></script>
			<script src="static/lib/lightbox/js/lightbox.min.js"></script>
			<script type="text/javascript"
				src="static/js/pignose.calendar.full.min.js"></script>
			<script src="static/lib/wow/wow.min.js"></script>
			<script src="static/js/main.js"></script>


			<script>
        function blinker() {
            $('.blink_me').fadeOut(500);
            $('.blink_me').fadeIn(500);
        }
        setInterval(blinker, 1000);
    </script>

			<script type="text/javascript">
                                                function googleTranslateElementInit() {
                                                    new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
                                                }
    </script>
			<script>
        function myFunctionmap() {
            document.getElementById("navMap").submit();
        }
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
			<SCRIPT LANGUAGE="JavaScript">
        function button_click()
        {
            if (document.getElementById('b1').value == "Start") {
                document.getElementById('b1').value = "Stop";
                document.getElementById('scroll_news4').start();
            } else {
                document.getElementById('b1').value = "Start";
                document.getElementById('scroll_news4').stop();
            }
        }
    </script>

			<script type="text/javascript">
        $(document).ready(function () {
            $('#linkIncrease').click(function () {
                modifyFontSize('increase');
            });

            $('#linkDecrease').click(function () {
                modifyFontSize('decrease');
            });

            $('#linkReset').click(function () {
                modifyFontSize('reset');
            })

            function modifyFontSize(flag) {
                var divElement = $('#divContent');
                var currentFontSize = parseInt(divElement.css('font-size'));

                if (flag == 'increase')
                    currentFontSize += 3;
                else if (flag == 'decrease')
                    currentFontSize -= 3;
                else
                    currentFontSize = 16;

                divElement.css('font-size', currentFontSize);
            }
        });


        $("#getotp").click(function(){

var mobile=$("#mobile").val();

if (mobile == "") {
	alert("Mobile Number is required");
	$("#mobile").focus();
	return false;
}

var phoneRegex = /^[6-9]\d{9}$/;
if (phoneRegex.test(mobile)== false) {
	alert("Mobile Number is Invalid");
	$("#mobile").focus();
	return false;
}
      	$
			.ajax({
				url : 'getotp.htm',
				type : "GET",
				success : function(response) {
					/* alert(response + " is your OTP to register"); */
					document.getElementById('serverotp').value=response;
					$("#enterotp").val(response);
					$("#enterotp").css("font-size", "bold");
					$("#resend").show();
				}
				
			});
    	
        	});
    </script>

			<script>
$(document).ready(function() {
    var interval = setInterval(function() {
        var momentNow = moment();
        $('#date-part').html(momentNow.format('DD-MMMM-YYYY,') + ' '
                            + momentNow.format('dddd')
                             .substring(0,10).toUpperCase());
        $('#time-part').html(momentNow.format('hh:mm:ss A'));
    }, 100);
    
    $('#stop-interval').on('click', function() {
        clearInterval(interval);
    });
});



				//fetches captcha code 
				function getcaptcha() {  

				        $.ajax({
							url : '${pageContext.request.contextPath}/getcaptchacode',
							type : "GET",
							success : function(response) {
								
							$("#servercaptcha").val(response);
							}
						});

				        //relaod captcha image 
				        $(document).ready(function(e) {
				      	  $('#reload_captcha').on('click', function() {
				      		  d = new Date();
				            $('#captcha_image').attr('src', '${pageContext.request.contextPath}/getcaptcha.htm?'+d.getTime());
				          
				      	  });
				      	});
						//get captcha code on load		
				        $(document).ready(function(e) {
							 
					        getcaptcha();
						
						});
				      
				        
					};
					
					




				$("#submitbtn").click(function() {

					var mobile = $("#mobile").val().trim();
					var enterotp = $("#enterotp").val().trim();
					var serverotp = $("#serverotp").val().trim();
					getcaptcha();
					var servercaptchaa = $("#servercaptcha").val();
					var captcha= $("#captcha").val();
					resend
					if (mobile == "") {
						alert("Mobile Number is required");
						$("#mobile").focus();
						return false;
					}
					if (enterotp != serverotp) {
						alert("OTP is incorrect, Re-enter OTP");
						$("#enterotp").focus();
						return false;
					}
					if(servercaptchaa != captcha){
						alert("Invalid Captcha");
						$("#captcha").focus();
						return false;
						}
					
					if($('input[type=checkbox]:checked').length == 0)
					{
					    alert ( "Must check checkbox before sign in" );
					    return false;
					}
					
					document.home.method = "POST";
					document.home.action = "login.htm";
					document.home.submit();

				});
/* 
				$("#reload_captcha")
						.click(
								function() {

									document.getElementById("captcha_image").src = "${pageContext.request.contextPath}/getcaptcha.htm";
								}); */

				

				
			</script>
			<script type="text/javascript">
$(function(){$(".ticker1").modernTicker({effect:"scroll",scrollType:"continuous",scrollStart:"inside",scrollInterval:20,transitionTime:500,autoplay:true});
$(".ticker2").modernTicker({effect:"fade",displayTime:4e3,transitionTime:300,autoplay:true});$(".ticker3").modernTicker({effect:"type",typeInterval:10,displayTime:4e3,transitionTime:300,autoplay:true});$(".ticker4").modernTicker({effect:"slide",slideDistance:100,displayTime:4e3,transitionTime:350,autoplay:true})})
</script>
</body>
</html>
