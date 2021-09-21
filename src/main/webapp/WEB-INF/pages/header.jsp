<jsp:include page="/WEB-INF/pages/validate.jsp"></jsp:include>
<!DOCTYPE html>
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

<style>
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

button {
	border-radius: 15px;
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	margin: 6px 0;
	border: none;
	cursor: pointer;
}

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
	position: fixed;
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
	color: white;
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
</style>
<div class="row">
	<div class="header">
		<img class="img-responsive" src="static/images/header.png">
	</div>
</div>