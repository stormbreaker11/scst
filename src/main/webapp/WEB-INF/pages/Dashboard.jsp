<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>SC ST COMMISSION</title>
  <link href="#" rel="icon">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">  
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="bootstrap/css/style_smenu.css">
  <link rel="stylesheet" href="bootstrap/css/all_colors.css">
  <link href="vendor/sb-admin-2.css" rel="stylesheet">
  <link href="font-awesome/css/font-awesome.min.css"
              rel="stylesheet" type="text/css">
  <link href="" rel="icon">
  <style>
.panel-body .btn:not(.btn-block) { 
font-size: 0px;
    width: 215px;
    margin-bottom: 18px;
	    padding-top: 5px;
    height: 100px;
}
.btn-exp{
color:white;
background-color:#50398c;
}
.btn-exp:hover{
background-color:#6a4db7;
color:white;
}

.imgpan{
float:left;
}
.teststy h4{
    font-size: 14px;

}
  </style>
  
  
  
  
</head>
<body class="skin-blue sidebar-mini">
<div class="header1">
 <img class="img1" src="img/header1.png">
</div>
<div class="wrapper">
  <header class="main-header">
   <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

<li> <a href="home1.html"><i class="fa fa-home"></i> Home</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             <i class="fa fa-user" aria-hidden="true"></i>
            </a>
            <ul class="dropdown-menu">
              <li>
                <ul class="menu">
                  <li>
                    <a href="#">Change Password</a>
                  </li>
                  <li>
                    <a href="index.html">Logout </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
    <aside class="main-sidebar">
    <section class="sidebar">
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
                  <ul class="sidebar-menu">
		 <li class="treeview">
          <a href="Dashboard.html">
            <i class="fa fa-edit"></i><span>Dashboard </span>
          </a>
        </li>
		<li class="treeview">
          <a href="Status.html">
            <i class="fa fa-edit"></i><span>Action/Status update</span>
          </a>
        </li>
		    
      </ul>
    </section>
  </aside>

  <div class="content-wrapper">

    <section class="content">
	<div class="container-fluid">
<div class="col-md-12">
<div class="box form_content">
<div class="title1"><b>   Dashboard and Reports  </b></div>
		<br><br>

    <div class="container-fluid" >
	
    <div class="row">
					<div  id="primary" class="col-md-offset-2 col-lg-4 col-md-6">
						<div class="panel panel-primary" onclick="primary()">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-book fa-3x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">195</div>
										<div><b>Number of total Petitions</b></div>
									</div>
								</div>
							</div>
							<a href="#" id="Dashboard_Details">
								<div class="panel-footer"  >
									<span class="pull-left" value="viewdetails">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					
					<div  id="green"  class="col-lg-4 col-md-6">
						<div class="panel panel-green"   onclick="green()">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-male fa-3x"></i><!-- <i class="fa fa-edit fa-3x"></i> -->
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">80</div>
										<div><b>Number of Notice issued</b></div>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer" >
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					</div>
					<div class="row">
					<div id="red" class="col-md-offset-2 col-lg-4 col-md-6">
						<div class="panel panel-red"  onclick="red()">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-users fa-3x"></i><!-- <i class="fa fa-edit fa-3x"></i> -->
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">70</div>
										<div><b>Number of Petitions resolved</b></div>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer">
									<span class="pull-left" >View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div id="blue" class="col-lg-4 col-md-6">
						<div class="panel panel-blue" onclick="blue()">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-briefcase fa-3x"></i><!-- <i class="fa fa-edit fa-3x"></i> -->
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">45</div>
										<div><b>Pending Petitions</b></div>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>

            </div>
        </div><br>
		<div class="select_Pdata" id="viewdetails" style="display: none;">
	<table class="table" border="1">
	<thead>
											<tr class="theadStyle">
									            <th rowspan="" width="15%">S.No</th>
												<th rowspan="" width="15%">Petition ID</th>
									            <th rowspan="" width="15%">Type Of petition</th>
												<th rowspan="" width="15%">Date of Petition </th>
									            <th rowspan="" width="15%">Status</th>
												
												</tr>
												</thead>
	
  <tbody> 
	  
	  <tr>
	  <td>
	  1
	  </td>
        <td><b>
		<span>PT2021001: </span>
		</b></td>
		<td><b>
		<span> Land</span>
		</b></td>
		<td>
		<span>10/02/2021</span>
		</td>
		<td>
		<span> </span>
		</td>
		</tr> 
		<tr>
		<td>
	  2
	  </td>
        <td><b>
		<span>PT2021002 </span>
		</b></td>
		<td><b>
		<span>Atrocity</span>
		</b></td>
		<td>
		<span>2/02/2021</span>
		</td>
		<td>
		<span> </span>
		</td>
		</tr> 
		<tr>
		<td>
	  3
	  </td>
        <td><b>
		<span>PT2021003 </span>
		</b></td>
		<td><b>
		<span>Service</span>
		</b></td>
		<td>
		<span>25/02/2021</span>
		</td>
		<td>
		<span> </span>
		</td>
		</tr> 
	  
	  
		<tr>
		<td>
	  4
	  </td>
        <td><b>
		<span>PT2021004  </span>
		</b></td>
		<td><b>
		<span> General</span>
		</b></td>
		<td>
		<span>20/02/2021</span>
		</td>
		<td>
		<span> </span>
		</td>
		</tr> 
		<tr>
		<td>
	  5
	  </td>
        <td><b>
		<span></span>
		</b></td>
		<td><b>
		<span> </span>
		</b></td>
		<td>
		<span></span>
		</td>
		<td>
		<span> </span>
		</td>
		</tr>    
    </tbody>
  </table>
  </div>
</div>	
</div>	
    </section>
	</div>
</div>
<div class="footer">
        <p> 2020 © Copyright by National Informatics Center, Hyderabad</p>
</div>
<script src="bootstrap/js/jquery-2.2.3.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/leftmenu.min.js"></script>

<script>
function myFunction() {
  confirm("Your application will be submitted online");
}
</script>
  <script>
  $(document).ready(function() {
    $('#example').DataTable();
} );
  </script>
  <script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
    </script>
	
	<script>
	$('#Dashboard_Details').on('change',function(){
    if( $(this).val()==="viewdetails"){
    $(".select_Pdata").show();
    }
    else{
    $(".select_Pdata").hide();
    }
});
	</script>
	
<script> 
        function printDiv() { 
            var divContents = document.getElementById("GFG").innerHTML; 
            var a = window.open(); 
            a.document.write('<html>'); 
            a.document.write('<body>'); 
            a.document.write('<table><tbody><tr><td></td></tr></tbody></table>'); 
			a.document.write(divContents); 
            a.document.write('</body></html>'); 
            a.document.close(); 
            a.print(); 
        } 
		
		function primary(){
		
		document.getElementById("primary").style.display="none";
		document.getElementById("red").style.display="none";
		document.getElementById("blue").style.display="none";
		document.getElementById("green").style.display="none";
		$(".select_Pdata").show();
		
		}
		function green(){
		
		document.getElementById("primary").style.display="none";
		document.getElementById("red").style.display="none";
		document.getElementById("blue").style.display="none";
		document.getElementById("green").style.display="none";
		$(".select_Pdata").show();
		
		}
		function red(){
		
		document.getElementById("primary").style.display="none";
		document.getElementById("red").style.display="none";
		document.getElementById("blue").style.display="none";
		document.getElementById("green").style.display="none";
		$(".select_Pdata").show();
		
		}
		function blue(){
		
		document.getElementById("primary").style.display="none";
		document.getElementById("red").style.display="none";
		document.getElementById("blue").style.display="none";
		document.getElementById("green").style.display="none";
		$(".select_Pdata").show();
		
		}
    </script> 
</body>
</html>
