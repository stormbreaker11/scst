<jsp:include page="/WEB-INF/pages/validate.jsp"></jsp:include>
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
<link href="${pageContext.request.contextPath}/static/images/deptlogo.png" rel="icon">

<script type="text/javascript" src="static/vendor/js/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/static/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/static/vendor/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/vendor/css/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/vendor/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">
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
	<!--==========================
  Header
  ============================-->
		<div class="container-fluid">
		 <h1 align="center" style="color:  #2d3990;">Petition Details</h1>
		
		<c:if test="${empty petitions }">
		<br>
		<br>
		<br>
		<h4 align="center" style="color:  red;">Data Not Found</h4>
		</c:if>
			<c:if test="${not empty petitions }">
			<table class="table table-bordered" >
		<tr style="    background: #2d3990;
    background-image: linear-gradient(to left, #6b59cabf, #05246b00 20%, #e91e1e00 82%, #6858c8b8); color: white;" >
		<th style="text-align: center;"  >S.No</th>
		<th >Petiotioner ID</th>
		<th >Petitioner Type</th>
		<th >Petitioner Name</th>
		<th >Age</th>
		<th  style="text-align: center;" >Created Date</th>
		<th  style="text-align: center;"  >Action</th>
		</tr>
		<tbody>
		<c:forEach var="alt" varStatus="counter" items="${petitions }">
		
		<tr>
		<td>${counter.count }</td>
		<td>${alt.petionerId }</td>
		<c:choose>
		<c:when test="${alt.isPetitioner=='N'}">
		<td>On behalf</td>
		</c:when>
		<c:otherwise>
		<td>Self</td>
		</c:otherwise>
		</c:choose>
		<td>${alt.petionerName }</td>
		<td>${alt.age }</td>
			
		<td  align="center"  >${alt.entry }</td>
			<td align="center" ><a href="${pageContext.request.contextPath}/filepetion.htm/${alt.petionerId }/${type}" target="content"> <button class="btn btn-success btn-sm"  >Proceed to file Petition</button></a></td>
		</tr>
		</c:forEach>
		</tbody>
		</table>

		</c:if>
	
</div>

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
        	$
			.ajax({
				url : 'getotp.htm',
				type : "GET",
				success : function(response) {
					alert(response + " is your OTP to register");
					document.getElementById('serverotp').value=response;
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



				$("#submitbtn").click(function() {

					var enterotp = $("#enterotp").val();
					var serverotp = $("#serverotp").val();

					if (enterotp != serverotp) {
						alert("OTP is incorrect, Re-enter OTP");
						$("#enterotp").focus();
						return false;
					}
					document.home.method = "POST";
					document.home.action = "login.htm";
					document.home.submit();

				});

				$("#reload_captcha")
						.click(
								function() {

									document.getElementById("captcha_image").src = "${pageContext.request.contextPath}/getcaptcha.htm";
								});
			</script>
			<script type="text/javascript">
$(function(){$(".ticker1").modernTicker({effect:"scroll",scrollType:"continuous",scrollStart:"inside",scrollInterval:20,transitionTime:500,autoplay:true});
$(".ticker2").modernTicker({effect:"fade",displayTime:4e3,transitionTime:300,autoplay:true});$(".ticker3").modernTicker({effect:"type",typeInterval:10,displayTime:4e3,transitionTime:300,autoplay:true});$(".ticker4").modernTicker({effect:"slide",slideDistance:100,displayTime:4e3,transitionTime:350,autoplay:true})})
</script>
</body>
</html>
