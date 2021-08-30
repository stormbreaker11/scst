<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/style_smenu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/all_colors.css">
<link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
	
<style>
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
.select_msgupload {
	display: none;
}

.general_show {
	display: none;
}

.service_show {
	display: none;
}

.select_Status {
	display: none;
}

.select_Status02 {
	display: none;
}

.Officials_20 {
	display: none;
}

.Button {
	alighn: Center;
}

.chosen-container-single .chosen-single {
	background: white !important;
	height: 33px !important;
	padding: 5px;
}

.petitiontype {
	display: none;
}

.Petition170s1, .Petition170s2 {
	display: none;
}

.ppetioner {
	display: none;
}

.otherland {
	display: none;
}

.typeofservice_show {
	display: none;
}

.Typeofatrocity {
	display: none;
}

.courtpetione {
	display: none;
}

.courtpetione11 {
	display: none;
}

.PoliceComplaint {
	display: none;
}

.abuser_show {
	display: none;
}

.respondent_individual2 {
	display: none;
}

.Officials_22 {
	display: none;
}

.respondent_individual3 {
	display: none;
}

.Officials_23 {
	display: none;
}

.respondent_individual4 {
	display: none;
}

.Officials_4 {
	display: none;
}

.jointpetitioner_show {
	display: none;
}

.respondent_individual {
	display: none;
}

.select_ref {
	display: none;
}

.modal-dialog {
	width: 60% !important;
}
</style>

<body>
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="box form_content">
				<div class="title1">
					<b>VIEW PETITION DETAILS</b>
				</div>
				<br>
				<br>
				<div class="container-fluid">



					<div class="row form-group">
						<label class="col-md-2 col-md-offset-2"></label>
						<div class="col-md-4">
							<select class="chosen form-control SelectStyle"
								id="PTUID20210001">
								<option>--Select--</option>
								<option value="PID">PTID20210001</option>
								<option value="PID">Rama PTID20210002</option>
							</select>
						</div>
					</div>
					<br>
					<div class="PetitionId" id="PID">
						<div class="box_1">
							<table class="table" border=>
								<tbody>

									<tr>
										<td colspan=2 align=center><b>Petition Registration</b></td>
									</tr>

									<tr>
										<td colspan=2 align=center><b>PID: PT20210001</b></td>
										<td><b> Type of Petition :</b></span> <span>Individual/Group</span></td>

									</tr>
									<tr>
										<td><b> <span>Petitioner Name : </span> <span>Mr.Rama</span>
										</b></td>

										<td><b> <span>Caste/Subcaste: </span> <span>ST/Subcaste-1</span>
										</b></td>


										<td><span><b>Father's Name </b><span> <span>Rama
														krishna</span></td>
									</tr>
									<tr>
										<td><span><b>Age :</b><span> <span>28
														years 4 Months 2days</span></td>
										<td><span><b>District/mandal</b><span> <span>Hyderabad/nampally</span></td>

										<td><span><b>Gender:</b><span> <span>Male</span></td>
									</tr>
									<tr>
										<td><span><b>Address :</b><span><br> <span>nic
														hyderabad telangana Hyderabad,</span><br> <span>TELANGANA</span><br>
													<span>Telephone</span><br>
													<td><span><b>Mobile No :</b></span> <span>9948548208</span>
												</td>
													<td><span><b>eMail:</b><span> <span>scstpetition@abc.in</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<form>

					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-10 col-md-offset-1 form-group">
								<label class="subhead">LIST of Petitions </label>
								<div class="table-responsive">
									<table class="table" border="1">
										<thead>
											<tr class="theadStyle">
												<th rowspan="" width="15%">S.No</th>
												<th rowspan="" width="15%">Unique Petition ID</th>
												<th rowspan="" width="15%">Date of Submission</th>
												<th rowspan="" width="15%">Category of Petition</th>
												<th rowspan="" width="15%">Subject of Petition</th>
												<th rowspan="" width="15%">View Submitted Petition</th>
												<th rowspan="" width="15%">Status</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>PT2345678</td>

												<td><b>24-03-2021</b></td>
												<td><b>Land</b></td>
												<td><b>Pattadhar passbook note issued</b></td>
												<td><a href="#"><div class="btn btn-md btn-info"
															data-title="Edit" data-toggle="modal" data-target="#edit"
															data-placement="top" data-toggle="tooltip">Click to
															View</div></a></td>
												<td><a href="#"><div class="btn btn-md btn-info"
															data-title="Edit" data-toggle="modal"
															data-target="#edit1" data-placement="top"
															data-toggle="tooltip">View Status</div></a></td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>


						<br>
						<br>

					</div>

					<br>
					<br>
					<br>
				</form>
			</div>
		</div>
	</div>
</div>
</section>
</div>
</div>
<div class="modal fade" id="edit1" tabindex="-1" role="dialog"
	aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</div>
			<div id="GFG">
				<div class="container-fluid">
					<div class="col-md-offset-1 col-md-10">
						<div class="row headsty">
							<div class="col-md-1">
								<img src="static/images/logo.png" style="" class="banlogosty"
									alt="">
							</div>
							<div class="col-md-11">
								<h3>
									<b>TELANGANA STATE COMMISSION FOR SCHEDULED CASTES <br>AND
										SCHEDULED TRIBES
									</b>
								</h3>
							</div>
						</div>
						<p class="headstyp">
							3rd floor Parishrama bhavan, basheerbagh, hyderabad-500004 <br>
							(A Statutory Body exercising powers of a Civil Court under
							Chapter III Section <br>11(i)of the Act 9 of 2003 of the
							State Legislature )
						</p>




						<table class="table" border="1">
							<thead>
								<tr class="theadStyle">
									<th rowspan="" width="15%">S.No</th>
									<th rowspan="" width="15%">Date</th>
									<th rowspan="" width="15%">Status</th>
									<th rowspan="" width="15%">Download</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td><b> <span>12-02-2021 </span>
									</b></td>
									<td><b> <span> Under Process</span>
									</b></td>
									<td><a href="#"><div class="btn btn-md btn-info"
												data-title="Edit" data-toggle="modal" data-target="#edit"
												data-placement="top" data-toggle="tooltip">DOWNLOAD
												PETITION</div></a></td>
								</tr>
								<tr>
									<td>2</td>
									<td><b> <span>26-02-2021</span>
									</b></td>
									<td><b> <span>Notice Issued</span>
									</b></td>
									<td><a href="#"><div class="btn btn-md btn-info"
												data-title="Edit" data-toggle="modal" data-target="#edit2"
												data-placement="top" data-toggle="tooltip">DOWNLOAD
												Notice</div></a></td>
								</tr>
								<tr>
									<td>3</td>
									<td><b> <span>03-03-2021 </span>
									</b></td>
									<td><b> <span>Summons Issued</span>
									</b></td>
									<td><a href="#"><div class="btn btn-md btn-info"
												data-title="Edit" data-toggle="modal" data-target="#edit3"
												data-placement="top" data-toggle="tooltip">DOWNLOAD
												Sommons</div></a></td>
								</tr>


								<tr>
									<td>4</td>
									<td><b> <span>12-03-2021 </span>
									</b></td>
									<td><b> <span> Directions Issued</span>
									</b></td>
									<td><a href="#"><div class="btn btn-md btn-info"
												data-title="Edit" data-toggle="modal" data-target="#edit4"
												data-placement="top" data-toggle="tooltip">DOWNLOAD
												Directions</div></a></td>
								</tr>
								<tr>
									<td>5</td>
									<td><b> <span>24-03-2021</span>
									</b></td>
									<td><b> <span>CLOSED </span>
									</b></td>
									<td><b> <span></span>
									</b></td>
								</tr>

							</tbody>
						</table>

					</div>
					<div class="modal-footer ">
						<div class="row col-md-12"></div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<div class="modal fade" id="edit" tabindex="-1" role="dialog"
	aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</div>
			<div id="GFG">
				<div class="container-fluid">
					<div class="col-md-offset-1 col-md-10">
						<div class="row headsty">
							<div class="col-md-1">
								<img src="img/logo.png" style="" class="banlogosty" alt="">
							</div>
							<div class="col-md-11">
								<h3>
									<b>TELANGANA STATE COMMISSION FOR SCHEDULED CASTES <br>AND
										SCHEDULED TRIBES
									</b>
								</h3>
							</div>
							<img src="static/images/mahesh.png" style="" align="right"
								class="banlogosty" alt="">

							<p class="headstyp">
								3rd floor Parishrama bhavan, basheerbagh, hyderabad-500004 <br>
								(A Statutory Body exercising powers of a Civil Court under
								Chapter III Section <br>11(i)of the Act 9 of 2003 of the
								State Legislature )
							</p>
							<br> <br>
							<p class="headstyp">
								<b>Petition ID: PT20210001</b>
							</p>
							<br>


							<table class="table" border="1">
								<tbody>

									<tr>
										<td>1</td>
										<td><b> <span>Name of the district : </span>
										</b></td>
										<td><b> <span> Hyderabad </span>
										</b></td>
									</tr>
									<tr>
										<td>2</td>
										<td><b> <span>Name of Mandal </span>
										</b></td>
										<td><b> <span>Mandal-1</span>
										</b></td>
									</tr>
									<tr>
										<td>3</td>
										<td><b> <span>Category of petition: </span>
										</b></td>
										<td><b> <span>Land</span>
										</b></td>
									</tr>


									<tr>
										<td>4</td>
										<td><b> <span>Name of the Petitioner </span>
										</b></td>
										<td><b> <span> Sri _______________ S/o
													___________</span>
										</b></td>
									</tr>
									<tr>
										<td>5</td>
										<td><b> <span>Date of the petition </span>
										</b></td>
										<td><b> <span> Date : ___________ </span>
										</b></td>
									</tr>
									<tr>
										<td>6</td>
										<td><b> <span>Address : </span>
										</b></td>
										<td><b> <span> District , <br> mandal,<br>
													Village
											</span>
										</b></td>
									</tr>
									<tr>
										<td>7</td>
										<td><b> <span>Ph.No. of the petitioner </span>
										</b></td>
										<td><b> <span> 9998880001</span>
										</b></td>
									</tr>
									<tr>
										<td>8</td>
										<td><b> <span> Email of the petitioner</span>
										</b></td>
										<td><b> <span> abc@scst.in</span>
										</b></td>
									</tr>
									<tr>
										<td>9</td>
										<td><b> <span>Caste of the petitioner: </span>
										</b></td>
										<td><b> <span>Caste</span>
										</b></td>
									</tr>
									<tr>
										<td>10</td>
										<td><b> <span>Type of Petition: </span>
										</b></td>
										<td><b> <span>Individual/group</span>
										</b></td>
									</tr>
									<tr>
										<td>11</td>
										<td><b> <span>Respondent </span>
										</b></td>
										<td><b> <span>Private/Individual</span>
										</b></td>
									</tr>
									<tr>
										<td>12</td>
										<td><b> <span>Appeal / Prayer of the
													petitioner: </span>
										</b></td>
										<td><b> <span>Text entered by the Petitioner
													in appeal box</span>
										</b></td>
									</tr>
									<tr>
										<td>13</td>
										<td><b> <span>Case Details : </span>
										</b></td>
										<td><b> <span> Text entered by the Petitioner
													in Case details box </span>
										</b></td>
									</tr>

									<tr>
										<td>14</td>
										<td><b> <span>List of evidences submitted by
													petitioner : </span>
										</b></td>
										<td><b><span>1.Land ownership right copy,<br>
													2.1-b namuna copy, Adangal/ pahani copies and etc.
											</span> </b></td>
									</tr>

								</tbody>
							</table>
							<tr>
								<td><span> <b>Signature of Petitioner</b></span></td>
								<td><img src="img/signature.png" style="" align="center"
									class="banlogosty" alt=""></td>
							</tr>
						</div>
						<div class="modal-footer ">


							<div class="row col-md-12">
								<input type="button" class="btn btn-warning btn-lg"
									value="download pdf" onclick="downloadDiv()"> <input
									type="button" class="btn btn-warning btn-lg" value="Print"
									onclick="printDiv()">


							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="modal fade" id="edit2" tabindex="-1" role="dialog"
	aria-labelledby="edit2" aria-hidden="true">
	aria-labelledby="edit2" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</div>
			<div id="GFG">
				<div class="container-fluid">
					<div class="col-md-offset-1 col-md-10">
						<div class="row headsty">
							<div class="col-md-1">
								<img src="img/logo.png" class="banlogosty" alt="">
							</div>
							<div class="col-md-11">
								<h3>
									<b>TELANGANA STATE COMMISSION FOR SCHEDULED CASTES <br>AND
										SCHEDULED TRIBES
									</b>
								</h3>
							</div>
						</div>
						<p class="headstyp">
							3rd floor Parishrama bhavan, basheerbagh, hyderabad-500004 <br>
							(A Statutory Body exercising powers of a Civil Court under
							Chapter III Section <br>11(i)of the Act 9 of 2003 of the
							State Legislature )
						</p>

						<h4>
							<b>Sri G.S.Panda Das I.A.S , <br> Secretary
							</b>
						</h4>
						<tr>
							<p class="headstyp">
								<b>N O T I C E </b>
							</p>
							<p class="headstyp">(Notice for collecting basic facts)</p>

						</tr>
						<h5>
							<b>Rc.No. TSCSTC/Hyd-Land/PTID20210001/ST/2021<span
								class="datesty"> Dated:________</span></b>
						</h5>
						<tr>
							<td><b>To </b> <br> The Collector and District
								Magistrate,<br>_______________.</td>
							<br>
							<td><b>The</b> <br>CP / SP,_______________.</td>
						</tr>
						<h5>
							<b> Sir/Madam,</b>
							<h5>
								<p>
									<b>Sub: &nbsp; &nbsp;</b>Telangana State SC&ST Commission –
									Grievance Petition received – Land Issue – Forwarded to
									cause enquiry and take &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									&nbsp; necessary action – Requested – Reg.<br>

								</p>
								<p>
									<b>Ref: &nbsp; &nbsp; </b>Petition of Sri / Smt _____________
									S/o __________, R/o ______________________ , dated __________.
								</p>
								<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
								&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
								&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <b>**
									* **</b> <br>
								<br>
								<p>
									Whereas _____________ S/o ____________________ R/o
									_________Village, ___________ Mandal, _______________ District
									<br> has submitted a Grievance petition relating to Land
									Issue with a request to issue necessary instructions to the
									authorities<br> concerned for taking necessary action.
								</p>
								<br>

								<p>The petition details are as follows:</p>


								<table class="table" border="1">
									<tbody>

										<tr>
											<td><b> <span>1 </span>
											</b></td>
											<td><b> <span>Name of the district : </span>
											</b></td>
											<td><b> <span> Hyderabad </span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>2</span>
											</b></td>
											<td><b> <span>File name: </span>
											</b></td>
											<td><b> <span>
														TSCSTC/Hyd-Land/PTID20210001/ST/2021</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>3 </span>
											</b></td>
											<td><b> <span>Category: </span>
											</b></td>
											<td><b> <span> Land Issue</span>
											</b></td>
										</tr>


										<tr>
											<td><b> <span>4 </span>
											</b></td>
											<td><b> <span>Name of the Petition </span>
											</b></td>
											<td><b> <span> Sri _______________ <br>S/o
														___________
												</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span> 5</span>
											</b></td>
											<td><b> <span>Date of the petition: </span>
											</b></td>
											<td><b> <span> Date : ___________ </span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>6 </span>
											</b></td>
											<td><b> <span>Address : </span>
											</b></td>
											<td><b> <span> Village ______<br>
														Mandal______<br> District______
												</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>7 </span>
											</b></td>
											<td><b> <span>Ph.no.of the petitioner: </span>
											</b></td>
											<td><b> <span> 9998880001</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>8</span>
											</b></td>
											<td><b> <span>Caste of the Petitioner: </span>
											</b></td>
											<td><b> <span> Caste </span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>9 </span>
											</b></td>
											<td><b> <span>Authorities / Officers
														concerned : </span>
											</b></td>
											<td><b> <span> 1. District Collector,
														______________<br> 2. Commissioner of Police /SP,
												</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>10 </span>
											</b></td>
											<td><b> <span>Other private persons /
														opponents responsible </span>
											</b></td>
											<td><b> <span> Respondents</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>11 </span>
											</b></td>
											<td><b> <span>Caste of opponents responsible
												</span>
											</b></td>
											<td><b> <span>If individual – Name and
														Caste If officials – Name and Designation </span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>12 </span>
											</b></td>
											<td><b> <span>Appeal/ Prayer of the
														Petitioner : </span>
											</b></td>
											<td><b> <span> Shall be captured from the
														data entered by the petitioner</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>13</span>
											</b></td>
											<td><b> <span>Case details: </span>
											</b></td>
											<td><b> <span> Shall be captured from the
														data entered by the petitioner</span>
											</b></td>
										</tr>
										<tr>
											<td><b> <span>14 </span>
											</b></td>
											<td><b> <span>List of evidences submitted by
														petitioner: </span>
											</b></td>
											<td><b><span>1.Photos,<br>2.Land
														ownership right copy,<br> 3.1-b namuna copy, Adangal/
														pahani copies and etc.
												</span> </b></td>
										</tr>

										<tr>
											<td><b> <span>15 </span>
											</b></td>
											<td><b>Previous correspondence: </b></td>
											<td></td>
										</tr>
									</tbody>
								</table>
								<tr>
									<td><b>A Copy of the petition is enclosed </b></td>
								</tr>
								<p>Therefore, It is here by requested to cause thorough
									enquiry, take necessary action, and submit the facts of
									information and action taken report to this commission within
									30 days from the date of receipt of the notice.</p>
								<p>Please take notice that in case the commission doesn’t
									receive any reply from you in the stipulated period/time, the
									commission may exercise the power of Civil court conferred on
									it under chapter III section 11(i) of the act 9 of the state
									Legislature and issue summons for your appearance in person
									before the commission and to initiate further proceedings as
									per Law.</p>
								<p>
									<span class="datesty"> SECRETARY</span>
								</p>
								<br>
								<p>
									<b>Encl:(a.a) </b>
								</p>
								<p>
									<b>Copy to: </b><br>1.The Revenue Divisional Officer
									_________, <br> 2. The Tahsildar _________,<br> 3.
									The Petitioner __________ with a direction to approach the
									authorities concerned with all relevant documents for redressal
									of their grievance..

								</p>
					</div>
					<div class="modal-footer ">
						<div class="row col-md-12">
							<input type="button" class="btn btn-warning btn-lg"
								value="download pdf" onclick="downloadDiv()"> <input
								type="button" class="btn btn-warning btn-lg"
								value="export to word" onclick="PdfDiv()"> <input
								type="button" class="btn btn-warning btn-lg" value="Print"
								onclick="printDiv()">



						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>

		<script>
			function myFunction() {
				confirm("Your application will be submitted online");
			}
		</script>
		<script>
			$(document).ready(function() {
				$('#example').DataTable();
			});
		</script>
		<script>
			$(document).ready(function() {
				$('[data-toggle="tooltip"]').tooltip();
			});
		</script>
		<script>
			$('#noe').on('change', function() {
				if ($(this).val() === "ifgovpvt") {
					$(".govpvt").show();
				} else {
					$(".govpvt").hide();
				}
			});
		</script>
		<script>
			$('#noe').on('change', function() {
				if ($(this).val() === "other") {
					$(".otherspy").show();
				} else {
					$(".otherspy").hide();
				}
			});
		</script>
		<script>
			$('#cspg').on('change', function() {
				if ($(this).val() === "csp") {
					$(".cspgov").show();
				} else {
					$(".cspgov").hide();
				}
			});
		</script>
		<script>
			$('#cspg').on('change', function() {
				if ($(this).val() === "deemed") {
					$(".deem").show();
				} else {
					$(".deem").hide();
				}
			});
		</script>
		<script>
	$('#newexi').on('change',function(){
    if( $(this).val()==="new"){
    $(".newappy").show();
    }
    else{
    $(".newappy").hide();
    }
});
	</script>
		<script>
	$('#newexi').on('change',function(){
    if( $(this).val()==="exi"){
    $(".exiappy").show();
    }
    else{
    $(".exiappy").hide();
    }
});
	</script>
		<script>
	$('#appservice').on('change',function(){
    if( $(this).val()==="yes1"){
    $(".ifyes").show();
    }
    else{
    $(".ifyes").hide();
    }
});
	</script>
		<script>
	$('#audact').on('change',function(){
    if( $(this).val()==="yesAct"){
    $(".ifyesCosmeticsAct").show();
    }
    else{
    $(".ifyesCosmeticsAct").hide();
    }
});
	</script>
		<script>
	$('#Exemption').on('change',function(){
    if( $(this).val()==="yesExemption"){
    $(".ifyesExemption").show();
    }
    else{
    $(".ifyesExemption").hide();
    }
});
	</script>

		<script>
	$('#Institutionservices').on('change',function(){
    if( $(this).val()==="insTrust"){
    $(".insTrusts").show();
    }
    else{
    $(".insTrusts").hide();
    }
});
	</script>

		<script>
	$('#Institutionservices').on('change',function(){
    if( $(this).val()==="addloc"){
    $(".addlocs").show();
    }
    else{
    $(".addlocs").hide();
    }
});
	</script>

		<script>
	$('#Institutionservices').on('change',function(){
    if( $(this).val()==="Examining"){
    $(".Examinings").show();
    }
    else{
    $(".Examinings").hide();
    }
});
	</script>

		<script>
	$('#PTUID20210001').on('change',function(){
    if( $(this).val()==="PID"){
    $(".PetitionId").show();
    }
    else{
    $(".PetitionId").hide();
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
		
    </script>
    </body>
    </html>