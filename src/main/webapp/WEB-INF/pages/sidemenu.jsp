<jsp:include page="/WEB-INF/pages/validate.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<%
response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
response.setHeader("Cache-Control","private");
response.setHeader("Pragma", "no-cache");
response.addHeader("Cache-Control", "post-check=0, pre-check=0");
response.setDateHeader("Expires", 0);
 %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width; height=device-height">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/menustyles.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/script.js"></script>

</head>

<style>
.glyphicon{

float: right; 
} 
body {
	background: #4960b7;
}
</style>
<body>
	<div id='cssmenu'>
		<ul>
			<li><a href="registrtation.htm" target="content">Petitioner
					Details</a></li>

		<!-- 	<li><a href="viewpetitionstatus.htm" target="content">Petition
					Status<i class="glyphicon glyphicon-pencil"></i>
			</a> -->
		<!-- 	<li><a href="viewpetitionDetails.htm" target="content">Petition
					Details</a></li> -->
			<!-- <li><a href="uploaddocs" target="content">Upload Documents</a> -->
			<!-- <li><a href="#">View Petition Status</a></li> -->
			<li tabindex="-1" class='has-sub'> <a href="#" target="content">Fresh Entry<i class="caret"></i></a>
				<ul>
				<li><a  href="${pageContext.request.contextPath}/petition/viewpetitionDetails.htm" target="content"><span>Petition Entry</span></a></li>
			<!-- 	<li><a  href="#" target=""><span>Petition Details</span></a></li> -->
					
				</ul></li>
				<li tabindex="-1" class='has-sub'> <a href="#" target="content">Modify<i class="caret"></i></a>
				<ul>
					<li   ><a href="viewpetition.htm" target="content">Petition</a>
					
				</ul></li>
			 <li><a href="viewSubmittedpetition.htm" target="content">View Petition</a></li>
		</ul>
		
	</div>

</body>
</html>