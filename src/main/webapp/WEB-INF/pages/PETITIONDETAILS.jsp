
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
<body  style="margin-left: 20px; margin-right: 20px;">

				
	<div class="container-fluid">
			
<h1 align="center" style="color: #2d3990;" >Petition - Land</h1>
		<div class="col-md-12">
		<table style="font-size: 20px;"  width="100%" align="center">
	<tr>
	<td  >

	<c:if test="${ptype=='I'}">
	<b>Type of Petition</b> : Individual
	</c:if>
	<c:if test="${ptype}=='G'">
	<b>Type of Petition</b> : Group
	</c:if>
	</td>
	<td  align="right"><b>Petition Category</b> : ${pcategory}</td>
	</tr>
	</table>
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                        <ul class="nav nav-tabs" style="font-weight: bold;">
                            <li class="active"><a href="#tab1primary" data-toggle="tab">Petition Details</a></li>
                            <li><a href="#tab2primary" data-toggle="tab">Land Details</a></li>
                            <!-- <li><a href="#tab3primary" data-toggle="tab">Appeal/Prayer</a></li>
                            <li><a href="#tab4primary" data-toggle="tab">Court Details</a></li> -->
                            <li><a href="#tab5primary" data-toggle="tab">Respondent</a></li>
                          
                        </ul>
                </div> 
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">
                        
                        <div class="row from group">
                        
                        <div class="title1"  >
													<b style="padding-left: 5px;">Petition Details</b>
													
												</div>
												<br>
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Kind
													of Land <span class="star">*</span></label>
												<div class="col-md-6">
													<select class="form-control SelectStyle"
														id="">
														<option>--Select--
														</option>
														<option>Agricultural
															land
														</option>
														<option>Housing
															Land
														</option>
														<option>Forest
															Land
														</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row from group">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Type
													of Land <span class="star">*</span></label>
												<div class="col-md-6">
													<select class="form-control SelectStyle"
														id="pitition1">
														<option>--Select--
														</option>
														<option
															value="pland">
															Patta
															land
														</option>
														<option
															value="pland">
															Govt.
															Assigned
															land
														</option>
														<option
															value="oland">
															Other
															Land
														</option>
													</select>
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
													<textarea
														cols=39
														rows=2></textarea>
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
												<div class="col-sm-6">
													<textarea
														cols=39
														rows=7></textarea>
												</div>
											</div>
										</div>

										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group" >
												<label class="col-md-6">Has
													the
													Petitioner
													Lodged Complaint
													in any
													court <span class="star">*</span></label>
												<div class="col-md-6">
													<select class="form-control SelectStyle"
														id="court">
														<option>--Select--
														</option>
														<option
															value="Yes">
															Yes
														</option>
														<option>No
														</option>
													</select>
												</div>
											</div>
										</div>
										<div class="courtpetione" id="Yes" style="display: none;">
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Name
														of the
														Court</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Court name "
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select State</label>
													<div
														class="col-md-6">
														<select class="form-control SelectStyle"
															id="">
															<option>--Select--
															</option>
															<option>Telangana
															</option>
															<option>Andhra Pradesh
															</option>
															<option>Karnataka
															</option>
															<option>State-4
															</option>
															<option>State-5
															</option>

														</select>
													</div>
											</div>
											</div>

											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Select District
													</label>
													<div
														class="col-md-6">
														<select class="form-control SelectStyle"
															id="">
															<option>--Select--
															</option>
															<option>Hyderabad
															</option>
															<option>Rangareddy
															</option>
															<option>Nizamabad
															</option>
															<option>Mahabubnagar
															</option>
															<option>Medak
															</option>
															<option>Nalgonda
															</option>
															<option>Warangal
															</option>
															<option>Karimnagar
															</option>
															<option>Adilabad
															</option>
															<option>Khammam
															</option>
															<option>Khammam
															</option>
															<option>Medchal
															</option>
															<option>Vikarabad
															</option>
															<option>Sangareddy
															</option>
															<option>Siddipet
															</option>
															<option>Hanmakonda
															</option>
															<option>Nagakarnool
															</option>
															<option>Yadadri
															</option>
															<option>Komaram-bheem
															</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select Mandal</label>
													<div
														class="col-md-6">
														<select class="form-control SelectStyle"
															id="">
															<option>--Select--
															</option>
															<option>Mandal-1
															</option>
															<option>Mandal-2
															</option>
															<option>Mandal-3
															</option>

														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Case Number
														
														</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Type case number"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">
													Status of Case
													</label>
												<div class="col-md-6">
													<select class="form-control SelectStyle"
														id="Casestatus">
														<option>--Select--
														</option>
														<option>
															
															Pending
														</option>
														<option value="Disposed">Disposed
														</option>
													</select>
												</div>
											</div>
										</div>
										<div class="select_Status" id="Disposed">
                    <div class="row">
                    <div class="col-sm-7 col-md-offset-2 form-group">
                    <label class="col-md-6">Upload the Court Orders</label>
                    <div class="col-md-6">
                    <input name="" placeholder="" class="form-control" type="file">
                    </div>
                    </div>
                    
                    <div class="col-md-offset-2 form-group " style="color: red;">allowed .pdf of 1 mb size
							</div>
                    </div>
                        </div>
                        </div>
                        
                        <table width="100%">
                        <tr><td>&nbsp;</td>
                        <td align="right"><img src="${pageContext.request.contextPath}/static/images/next-button.gif" alt="prev"></td>
                        </tr>
                        </table>
                        
                        </div>
                        <div class="tab-pane fade" id="tab2primary">
                        
                          
                        <div class="title1"  >
													<b style="padding-left: 5px;">Land Details</b>
													
												</div>
												<br>
                        <div class="Petition170s1" id="land">
										
									</div>
                        <div class="ppetioner" id="pland">
										<br>
										<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select District <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Hyderabad</option>
<option>Rangareddy</option>
<option >Nizamabad</option>
<option >Mahabubnagar</option>
<option >Medak</option>
<option >Nalgonda</option>
<option >Warangal</option>
<option >Karimnagar</option>
<option >Adilabad</option>
<option >Khammam</option>
<option >Khammam</option>
<option>Medchal</option>
<option>Vikarabad</option>
<option >Sangareddy</option>
<option >Siddipet</option>
<option >Hanmakonda</option>
<option >Nagakarnool</option>
<option >Yadadri</option>
<option >Komaram-bheem</option>
</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select Mandal <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Mandal-1</option>
<option>Mandal-2</option>
<option >Mandal-3</option>
<option >AMBERPET</option>
<option >HIMAYATNAGAR</option>
<option >Nampally</option>
<option >Vikarabad</option>
<option >Ashifabad</option>
<option >Adilabad</option>
<option >Kotpally</option>
<option >Bhadradree</option>

</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Revenue Village  </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Village-1</option>
<option>Village-2</option>
<option>Village-3</option>
</select>
</div>
</div>
</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Patta Passbook
														number</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Patta number"
															class="form-control">
													</div>
												</div>
											</div>

											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Survey
														number
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Survey number "
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Extent
														of land
													</label>
													<div class="col-md-2">
														<input type="text"
															placeholder=""
															class="form-control">
													</div>	
																						
														<label
														class="col-md-1">Units
													</label>
													<div class="col-md-1">
													
<select class="form-control SelectStyle" id="" style="width: 125px;">
<option value="0" >--Select--</option>
<option value="1" >Acre</option>
<option value="2" >Gunta</option>
<option value="3" >Square yards</option>
</select>
</div>
																				
																					
																					</div>
																					<div class="col-md-2">
													<div class="btn btn-primary"
													style="text-align: left;">
														+ Add More
												</div>
							</div>			
																					
											</div>
										</div>
										
                        
                        
                        <div class="otherland" id="oland" style="display: none;">
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Others
													Land <span class="star">*</span></label>
												<div class="col-md-6">
													<input type="text"
														placeholder=" Type of land"
														class="form-control">
												</div>
											</div>
										</div>
										
										<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select District <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Hyderabad</option>
<option>Rangareddy</option>
<option >Nizamabad</option>
<option >Mahabubnagar</option>
<option >Medak</option>
<option >Nalgonda</option>
<option >Warangal</option>
<option >Karimnagar</option>
<option >Adilabad</option>
<option >Khammam</option>
<option >Khammam</option>
<option>Medchal</option>
<option>Vikarabad</option>
<option >Sangareddy</option>
<option >Siddipet</option>
<option >Hanmakonda</option>
<option >Nagakarnool</option>
<option >Yadadri</option>
<option >Komaram-bheem</option>
</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Select Mandal <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Mandal-1</option>
<option>Mandal-2</option>
<option >Mandal-3</option>
<option >AMBERPET</option>
<option >HIMAYATNAGAR</option>
<option >Nampally</option>
<option >Vikarabad</option>
<option >Ashifabad</option>
<option >Adilabad</option>
<option >Kotpally</option>
<option >Bhadradree</option>

</select>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-7 col-md-offset-2 form-group">
<label class="col-md-6">Revenue Village  <span class="star">*</span> </label>
<div class="col-md-6">
<select class="form-control SelectStyle" id="">
<option>--Select--</option>
<option>Village-1</option>
<option>Village-2</option>
<option>Village-3</option>
</select>
</div>
</div>
</div>
										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Patta Passbook
													number</label>
												<div class="col-md-6">
													<input type="text"
														placeholder=" Patta number"
														class="form-control">
												</div>
											</div>
										</div>

										<div class="row">
											<div
												class="col-sm-7 col-md-offset-2 form-group">
												<label class="col-md-6">Survey
													number <span class="star">*</span></label>
												<div class="col-md-6">
													<input type="text"
														placeholder=" Survey number "
														class="form-control">
												</div>
											</div>
										</div> <!-- extent of land -->
										<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Extent
														of land
													</label>
													<div class="col-md-2">
														<input type="text"
															placeholder=""
															class="form-control">
													</div>	
																						
														<label
														class="col-md-1">Units
													</label>
													<div class="col-md-1">
													
<select class="form-control SelectStyle" id="" style="width: 125px;">
<option value="0" >--Select--</option>
<option value="1" >Acre</option>
<option value="2" >Gunta</option>
<option value="3" >Square yards</option>
</select>
</div>
																				
																					
																					</div>
																					<div class="col-md-2">
													<div class="btn btn-primary"
													style="text-align: left;">
														+ Add More
												</div>
							</div>			
																					
											</div>
										<br>
										
										
											</div>
											<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Land
														Details
													</h3>
												</div>
                        <div
													class="table-responsive">
													<table id="example"
														class="table table-striped table-bordered">

														<thead>
															<th>S.No
															</th>
															<th>Land Type
															</th>
															<th>Patta
																Number
															</th>
															<th>Survey
																Number
															</th>
															<th>Extent of Land(in acres)
															</th>
															
															
															<th>Delete
															</th>
														</thead>
									<tbody>
										<td>1</td>
										<td>Patta</td>
										<td>22501</td>
										<td>S140</td>
										<td>0.5 acre</td>

										<td><button>Delete</button></td>
									</tbody>
								</table>
												</div>
											
                         <table width="100%">
                        <tr><td><img src="${pageContext.request.contextPath}/static/images/prev-button.gif" alt="prev"></td>
                        <td align="right"><img src="${pageContext.request.contextPath}/static/images/next-button.gif" alt="prev"></td>
                        </tr>
                        </table>
                        
                        </div>
                        
                        
                        <div class="tab-pane fade" id="tab5primary">
                           <div class="title1"  >
													<b style="padding-left: 5px;">Respondent Details</b>
													
												</div>
												<br>
                        <div class="row">
                        <div class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Type of Respondent<span class="star">*</span></label>
                                        <div class="col-md-6">
														<select class="form-control SelectStyle" id="respondentdetails">
															<option>--Select--
															</option>
															<option Value="Private">Private/Individual</option>
															<option Value="off">Officials</option>
														</select>
													</div>
													</div></div>
													<div class="respondent_individual" id="Private" style="display: none;">
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Name
														of the
														respondent<span class="star">*</span></label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Full Name"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">
														Select Caste
													<span class="star">*</span></label>
													
														<div class="col-md-6">
														<select class="form-control SelectStyle" id="">
															<option>--Select--
															</option>
															<option>OC
															</option>
															<option>BC
															</option>
														
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Designation/Profession
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Designation "
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Select District
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<select class="form-control SelectStyle"
															id="">
															<option>--Select--
															</option>
															<option>Hyderabad
															</option>
															<option>Rangareddy
															</option>
															<option>Nizamabad
															</option>
															<option>Mahabubnagar
															</option>
															<option>Medak
															</option>
															<option>Nalgonda
															</option>
															<option>Warangal
															</option>
															<option>Karimnagar
															</option>
															<option>Adilabad
															</option>
															<option>Khammam
															</option>
															<option>Khammam
															</option>
															<option>Medchal
															</option>
															<option>Vikarabad
															</option>
															<option>Sangareddy
															</option>
															<option>Siddipet
															</option>
															<option>Hanmakonda
															</option>
															<option>Nagakarnool
															</option>
															<option>Yadadri
															</option>
															<option>Komaram-bheem
															</option>
														</select>
													</div>
												</div>
											</div>
												<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Address </label>
							<div class="col-md-6">
								<textarea cols="39" rows="4"></textarea>
							</div>
						</div>
					</div>

											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Mobile
														No
													</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Mobile No "
															class="form-control"
															type="number">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">E-Mail
														ID</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" e-mail "
															class="form-control">
													</div>
												</div>
												<div class="col-md-offset-2 form-group " style="color: red;">
												<div
													class="btn btn-md btn-primary">
													+ Add more
												</div>
							</div>
							</div>
										<div class="box form_content">
												<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Respondent
														Details
													</h3>
												</div>
												<div
													class="table-responsive">
													<table id="example"
														class="table table-striped table-bordered">

														<thead>
															<th>S.No
															</th>
															<th> Type Respondent
															</th>
															<th>Respondent
																Name
															</th>
															<th>Caste
															</th>
															<th>Designation/Profession
															</th>
															<th>District
															</th>
															<th>Address
															</th>
															<th>Mobile
																No
															</th>
															<th>e-Mail
															</th>
															
															<th>Delete
															</th>
														</thead>
														<tbody>
															<td>1
															</td>
															<td>Private
															</td>
															<td>Raju
															</td>
															<td>OC
															</td>
															<td>Designation
															</td>
															<td>Hyderabad
															</td>
															<td>hyd
															</td>
															<td>9998887770
															</td>
															<td>abc@scst
															</td>
															
															<td><button>Delete</button>
															</td>
														</tbody>
														
													</table>
												</div>
											</div>	
											</div>
										<div align="center" >
											  <div class="col-md-5 col-md-offset-4">
											<a href="#">
												
											</a>  

										</div>
											</div>
											
												
												
											
											<div class="Officials_20" id="Off" style="display: none;">
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Name
														of the
														respondent<span class="star">*</span></label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Full Name"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Designation/Profession
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Designation "
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Select District
													
													<span class="star">*</span></label>
													<div
														class="col-md-6">
														<select class="form-control SelectStyle"
															id="">
															<option>--Select--
															</option>
															<option>Hyderabad
															</option>
															<option>Rangareddy
															</option>
															<option>Nizamabad
															</option>
															<option>Mahabubnagar
															</option>
															<option>Medak
															</option>
															<option>Nalgonda
															</option>
															<option>Warangal
															</option>
															<option>Karimnagar
															</option>
															<option>Adilabad
															</option>
															<option>Khammam
															</option>
															<option>Khammam
															</option>
															<option>Medchal
															</option>
															<option>Vikarabad
															</option>
															<option>Sangareddy
															</option>
															<option>Siddipet
															</option>
															<option>Hanmakonda
															</option>
															<option>Nagakarnool
															</option>
															<option>Yadadri
															</option>
															<option>Komaram-bheem
															</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
						<div class="col-sm-7 col-md-offset-2 form-group">
							<label class="col-md-6">Address </label>
							<div class="col-md-6">
								<textarea cols="39" rows="4"></textarea>
							</div>
						</div>
					</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Mobile
														No
													</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" Mobile No "
															class="form-control"
															type="number">
													</div>
												</div>
											</div>
											<div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">E-Mail
														ID</label>
													<div
														class="col-md-6">
														<input type="text"
															placeholder=" e-mail "
															class="form-control">
													</div>
												</div>
												<div class="col-md-offset-2 form-group " style="color: red;">
												<div
													class="btn btn-md btn-primary">
													+ Add more
												</div>
							</div>
											</div>
											
											<div class="box form_content">
												<div align="center" style="background: #2d3990; color: white; height: 30px; ">
													<h3>Respondent
														Details
													</h3>
												</div>
												<div
													class="table-responsive">
													<table id="example"
														class="table table-striped table-bordered" style="border: 1px solid black;">

														<thead>
															<th>S.No
															</th>
															<th> Type Respondent
															</th>
															<th>Respondent
																Name
															</th>
															<th>Caste
															</th>
															<th>Designation/Profession
															</th>
															<th>District
															</th>
															<th>Address
															</th>
															<th>Mobile
																No
															</th>
															<th>e-Mail
															</th>
															
															<th>Delete
															</th>
														</thead>
														<tbody>
															<td>1
															</td>
															<td> Official
															</td>
															<td>Raju
															</td>
															<td>OC
															</td>
															<td>Designation
															</td>
															<td>Hyderabad
															</td>
															<td>hyd
															</td>
															<td>9998887770
															</td>
															<td>abc@scst
															</td>
															
															<td><button>Delete</button>
															</td>
														</tbody>
														
													</table>
												</div>
											</div>
											
											</div>
											<br>
											<br>
											
										
										
										
											
										<div align="center" >
											  <div class="col-md-5 col-md-offset-4">
											<a href="#">
												<div
													class="btn btn-md btn-primary">
													Save as Draft
												</div>
											</a>  

										</div>
										
										<table width="100%">
                        <tr><td><img src="${pageContext.request.contextPath}/static/images/prev-button.gif" alt="prev"></td>
                        </tr>
                        </table>
											</div>
											
</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	
	<script type="text/javascript">

		function menu3(){
			  $('a[href="#tab2primary"]').tab('show');
			}
	
	</script>
		<script>
		$(document).ready(function () {
			$('#example').DataTable();
		});
	</script>
	<script>
		$(document).ready(function () {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<script>
		$('#typeofpetition').on('change', function () {
			if ($(this).val() === "grp") {
				$(".petitiontype").show();
			}
			else {
				$(".petitiontype").hide();
			}
		});
	</script>
	<script>
		$('#typeofpetition').on('change', function () {
			if ($(this).val() === "grp") {
				$(".jointpetitioner_show").show();
			}
			else {
				$(".jointpetitioner_show").hide();
			}
		});
	</script>
	<script>
		$('#noe').on('change', function () {
			if ($(this).val() === "other") {
				$(".otherspy").show();
			}
			else {
				$(".otherspy").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "land") {
				$(".Petition170s1").show();
			}
			else {
				$(".Petition170s1").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "atrocity") {
				$(".Petition170s2").show();
			}
			else {
				$(".Petition170s2").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "service") {
				$(".service_show").show();
			}
			else {
				$(".service_show").hide();
			}
		});
	</script>
	<script>
		$('#typesevice').on('change', function () {
			if ($(this).val() === "otherser") {
				$(".typeofservice_show").show();
			}
			else {
				$(".typeofservice_show").hide();
			}
		});
	</script>
	<script>
		$('#Petition170').on('change', function () {
			if ($(this).val() === "general") {
				$(".general_show").show();
			}
			else {
				$(".general_show").hide();
			}
		});
	</script>
	<script>
		$('#pitition1').on('change', function () {
			if ($(this).val() === "pland") {
				$(".ppetioner").show();
			}
			else {
				$(".ppetioner").hide();
			}
		});
	</script>
	<script>
		$('#court').on('change', function () {
			if ($(this).val() === "Yes") {
				$(".courtpetione").show();
			}
			else {
				$(".courtpetione").hide();
			}
		});
	</script>
	<script>
		$('#court22').on('change', function () {
			if ($(this).val() === "yss") {
				$(".courtpetione11").show();
			}
			else {
				$(".courtpetione11").hide();
			}
		});
	</script>
	<script>
		$('#Casestatus').on('change', function () {
			if ($(this).val() === "Disposed") {
				$(".select_Status").show();
			}
			else {
				$(".select_Status").hide();
			}
		});
	</script>
	<script>
		$('#Casestatus21').on('change', function () {
			if ($(this).val() === "Disposed1") {
				$(".select_Status02").show();
			}
			else {
				$(".select_Status02").hide();
			}
		});
	</script>
	
	<script>
		$('#astrotype').on('change', function () {
			if ($(this).val() === "yesss") {
				$(".PoliceComplaint").show();
			}
			else {
				$(".PoliceComplaint").hide();
			}
		});
	</script>

	<script>
		$('#pitition1').on('change', function () {
			if ($(this).val() === "oland") {
				$(".otherland").show();
			}
			else {
				$(".otherland").hide();
			}
		});
	</script>
	<script>
		$('#typeofatrocity').on('change', function () {
			if ($(this).val() === "abuser") {
				$(".abuser_show").show();
			}
			else {
				$(".abuser_show").hide();
			}
		});
	</script>
	<script>
		$('#respondentdetails').on('change', function () {
			if ($(this).val() === "Private") {
				$(".respondent_individual").show();
			}
			else {
				$(".respondent_individual").hide();
			}
		});
	</script>
<script>
		$('#respondentdetails').on('change', function () {
			if ($(this).val() === "off") {
				$(".Officials_20").show();
			}
			else {
				$(".Officials_20").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Atrocity').on('change', function () {
			if ($(this).val() === "Private2") {
				$(".respondent_individual2").show();
			}
			else {
				$(".respondent_individual2").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Atrocity').on('change', function () {
			if ($(this).val() === "off2") {
				$(".Officials_22").show();
			}
			else {
				$(".Officials_22").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Service').on('change', function () {
			if ($(this).val() === "Private3") {
				$(".respondent_individual3").show();
			}
			else {
				$(".respondent_individual3").hide();
			}
		});
	</script>
	<script>
		$('#respondent_Service').on('change', function () {
			if ($(this).val() === "off3") {
				$(".Officials_23").show();
			}
			else {
				$(".Officials_23").hide();
			}
		});
	</script>
	
	
	<script>
		$('#respondent_General').on('change', function () {
			if ($(this).val() === "Private4") {
				$(".respondent_individual4").show();
			}
			else {
				$(".respondent_individual4").hide();
			}
		});
	</script>
	<script>
		$('#respondent_General').on('change', function () {
			if ($(this).val() === "Off4") {
				$(".Officials_4").show();
			}
			else {
				$(".Officials_4").hide();
			}
		});
	</script>
	
	<script>
		$('#newexi').on('change', function () {
			if ($(this).val() === "new") {
				$(".newappy").show();
			}
			else {
				$(".newappy").hide();
			}
		});
	</script>
	<script>
		$('#newexi').on('change', function () {
			if ($(this).val() === "exi") {
				$(".exiappy").show();
			}
			else {
				$(".exiappy").hide();
			}
		});
	</script>
	<script>
		$('#appservice').on('change', function () {
			if ($(this).val() === "yes1") {
				$(".ifyes").show();
			}
			else {
				$(".ifyes").hide();
			}
		});
	</script>
	<script>
		$('#audact').on('change', function () {
			if ($(this).val() === "yesAct") {
				$(".ifyesCosmeticsAct").show();
			}
			else {
				$(".ifyesCosmeticsAct").hide();
			}
		});
	</script>
	<script>
		$('#Exemption').on('change', function () {
			if ($(this).val() === "yesExemption") {
				$(".ifyesExemption").show();
			}
			else {
				$(".ifyesExemption").hide();
			}
		});
	</script>

	<script>
		$('#Institutionservices').on('change', function () {
			if ($(this).val() === "insTrust") {
				$(".insTrusts").show();
			}
			else {
				$(".insTrusts").hide();
			}
		});
	</script>

	<script>
		$('#Institutionservices').on('change', function () {
			if ($(this).val() === "addloc") {
				$(".addlocs").show();
			}
			else {
				$(".addlocs").hide();
			}
		});
	</script>

	<script>
		$('#Institutionservices').on('change', function () {
			if ($(this).val() === "Examining") {
				$(".Examinings").show();
			}
			else {
				$(".Examinings").hide();
			}
		});
	</script>
	
	
	
	
</body>

</html>
