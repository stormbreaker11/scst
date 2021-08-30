<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%
	response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
response.setHeader("Cache-Control", "private");
response.setHeader("Pragma", "no-cache");
response.addHeader("Cache-Control", "post-check=0, pre-check=0");
response.setDateHeader("Expires", 0);
%>
<title>SC-ST Commission</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/static/images/deptlogo.png"
	type="image/gif" sizes="16x16">
<title>SC ST COMMISSION</title>
<link href="${pageContext.request.contextPath}/static/css/header.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/app.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/images/Telengana_State.png"
	rel="icon">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function menu1() {
		history.go(1);
	}
	function disableMenu() {
		window.frames["menu"].document.oncontextmenu = function() {
			return false;
		};
		history.go(1);

	}
</script>

<script>
	document.oncontextmenu = document.body.oncontextmenu = function() {
		return false;
	}
</script>

<script type="text/javascript">
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>

<style type="text/css">
iframe {
	margin: 0px !important;
	padding: 0px !important;
	background: blue; /* this is just to make the frames easier to see */
	border: 0px !important;
}

html, body {
	margin: 0px !important;
	padding: 0px !important;
	border: 0px !important;
	width: 100%;
	height: 100%;
}
</style>
</head>
<frameset rows="120,*" frameborder="0" border="0">
	<frame name="topNav" src="headers.htm" scrolling="no">
	<frameset rows="8%,*" noresize border="0" frameborder="no"
		framespacing="0">
		<frame name="header2" src="header2.htm" marginheight="0"
			marginwidth="0" scrolling="no" noresize="noresize">
		<frameset cols="210,*" frameborder="0" border="0">
			<frame name="menu" src="menu.htm" scrolling="auto" noresize>
			<frame name="content" src="home1.htm" scrolling="auto" noresize>
		</frameset>
	</frameset>
</frameset>
</html>


