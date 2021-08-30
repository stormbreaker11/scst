

 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>


</style><%-- <div class="skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<li><a href="home.htm"><i class="fa fa-home"></i>
								&nbsp;Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-user"
								aria-hidden="true"></i>&nbsp;&nbsp;<i class="fa fa-caret-down"></i>
						</a>
							<ul class="dropdown-menu">
								<li>
									<ul class="menu">
										<li><a href="#">Change Password</a></li>
										<li><a href="home">Logout </a></li>
									</ul>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<aside class="main-sidebar">
			<section class="sidebar">
				<ul class="sidebar-menu">
					<li class="treeview"><a
						href="${pageContext.request.contextPath}/registrtation.htm"> <i
							class="fa fa-edit"></i><span>PETITIONER DETAILS</span>
					</a></li>

					<li class="treeview"><a
						href="${pageContext.request.contextPath}/registrtationdetails.htm">
							<i class="fa fa-edit"></i><span>PETITION DETAILS</span>
					</a></li>
					<li class="treeview"><a
						href="${pageContext.request.contextPath}/viewpetitionstatus.htm">
							<i class="fa fa-edit"></i><span>VIEW PETITION STATUS</span>
					</a></li>

				</ul>
			</section>
		</aside>
		<div class="content-wrapper">

			<section class="content">
				<div class="row">
					<div class="container-fluid"></div>
				</div>
			</section>
		</div>
	</div>
</div>
 --%>


	<nav class="navbar header-top navbar-expand-lg" style="background: #4960b7; color: white;">
		
		<div class="collapse navbar-collapse" id="navbarText" style="display: flex;">
			<ul class="navbar-nav ml-md-auto d-md-flex">
				<!-- <li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-user"></i> Profile</a></li> -->
						<li class="nav-item" ><a  style="color: white;" class="nav-link"  href="#"><i
						class="fas fa-user"></i> User : ${login.mobile }</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="nav-item" ><a  style="color: white;" class="nav-link" target="_top" href="home"><i
						class="fas fa-key"></i> Logout</a></li>
			</ul>
		</div>
	</nav>

<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>