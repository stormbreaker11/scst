

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<jsp:include page="/WEB-INF/pages/validate.jsp"></jsp:include>
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<style>

.table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, 
.table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td{
border-color: black;

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

<body style="margin-left: 20px; margin-right: 20px;">
	
		<div class="container-fluid">
			
<h1 align="center" style="color: #2d3990;" >Petition - ${category }</h1>
<form name="submitpetition">
		<div class="col-md-12">
		<table style="font-size: 20px;"  width="100%" align="center">
	<tr >
	<td style="color: #2d3990;" >

	<c:if test="${type=='I'}">
	Type of Petition: Individual
	</c:if>
	<c:if test="${type=='G'}">
	Type of Petition : Group
	</c:if>
	</td>
	
	<td style="color: #2d3990;" align="right">Category of Petition : ${category }</td>
	</tr>
	</table>
		<div align="left" style="background: #2d3990; color: white; height: 30px; vertical-align: middle; padding-top: 5px; padding-left: 20px; ">
													<b>Submit Petition</b>
													
												</div>
		<br>
		<div align="center" style="color: red;">
		<b>${error}</b>
		</div>
		
   <%--  <div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petitioner Id : </label>
													<div
														class="col-md-6">
														${petition.petitionerId}
													</div>
												</div>
											</div> --%>
   <div class="row" align="center"><div class="col-md-1">
								<img src="${pageContext.request.contextPath}/static/images/deptlogo.png" style="" class="banlogosty" alt="">
							</div>	<h3>
									<b>TELANGANA STATE COMMISSION FOR SCHEDULED CASTES <br>AND
										SCHEDULED TRIBES
									</b>
								</h3><p>
							
								3rd floor Parishrama bhavan, basheerbagh, hyderabad-500004 <br>
								(A Statutory Body exercising powers of a Civil Court under
								Chapter III Section <br>11(i)of the Act 9 of 2003 of the
								State Legislature )
							</p>
							<%-- <h3>Petition ID : ${petid}</h3> --%>
							</div>
							
							<table width="100%">
							<tr>
							<td width="30%" align="left">&nbsp;</td>
							<td width="30%" align="center"><h3>Petition ID : ${petid}</h3></td>
							<td  width="30%"	 align="right"><img src="${pageContext.request.contextPath}/getphotobypid/${petition.petitionerId}"  width="30%"  
								class="banlogosty" alt=""></td>
							</tr> 
							</table>
							<%-- <img src="${pageContext.request.contextPath}/static/images/mahesh.png" style="" align="right"
								class="banlogosty" alt=""> --%>
											</div>
												
    <!-- <div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Type of Petition: </label>
													<div
														class="col-md-6">
														Individual
	
													</div>
												</div>
											</div> -->
											<!-- <div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petition Category </label>
													<div
														class="col-md-6">
														Land
													</div>
												</div>
											</div> -->
											<!-- <div class="row">
												<div
													class="col-sm-7 col-md-offset-2 form-group">
													<label
														class="col-md-6">Petition Submitted Date </label>
													<div
														class="col-md-6">
														25/08/2021
													</div>
												</div>
											</div> -->
											
										
											
											<br>

									
										
				  <div align="center">
            </div>				
          
            <input type="hidden" name="petitionerId" value="${petition.petitionerId}">
            <input type="hidden" name="pid" value="${pid}">
            <input type="hidden" name="category" value="${category}">
            <input type="hidden" name="type" value="${type}">
            </form>
         
							<table class="table table-bordered">
								<tbody>

								<tr>
										<td style="vertical-align: middle;" >1</td>
										<td style="vertical-align: middle;"><b> <span>Name of the Petitioner </span>
										</b></td>
										<td style="vertical-align: middle; border-collapse: collapse; "  ><b> ${petition.petitionerName}
										</b></td>
										
										
										
									</tr>
									<tr>
										<td>2</td>
										<td><b> <span>Name of the district</span>
										</b></td>
										<td ><b> <span> Hyderabad </span>
										</b></td>
									</tr>
									<tr>
										<td>3</td>
										<td><b> <span>Name of Mandal </span>
										</b></td>
										<td   ><b> <span>${petition.mandal}</span>
										</b></td>
									</tr>
									<tr>
										<td>4</td>
										<td><b> <span>Category of petition</span>
										</b></td>
										<td   ><b> <span>${category }</span>
										</b></td>
									</tr>


									
									<tr>
										<td>5</td>
										<td><b> <span>Date of the petition Submitted</span>
										</b></td>
										<td   ><b> <span> ${petition.submit} </span>
										</b></td>
									</tr>
									<tr>
										<td>6</td>
										<td><b> <span>Address</span>
										</b></td>
										<td   ><b> <span> Hyderabad , <br>${petition.mandal},<br>
													${petition.village}
											</span>
										</b></td>
									</tr>
									<tr>
										<td>7</td>
										<td><b> <span>Ph.No. of the petitioner </span>
										</b></td>
										<td   ><b> <span> ${petition.mobile}</span>
										</b></td>
									</tr>
									<tr>
										<td>8</td>
										<td><b> <span> Email of the petitioner</span>
										</b></td>
										<td   ><b> <span> ${petition.email}</span>
										</b></td>
									</tr>
									<tr>
										<td>9</td>
										<td><b> <span>Caste of the petitioner</span>
										</b></td>
										<td   ><b> <span>${petition.village}</span>
										</b></td>
									</tr>
									<tr>
										<td>10</td>
										<td><b> <span>Type of Petition</span>
										</b></td>
										<td   ><b> <span><c:if test="${petition.petitionType=='I'}">Individual</c:if>
														<c:if test="${petition.petitionType=='G'}">Group</c:if></span>
										</b></td>
									</tr>
									<tr>
										<td>11</td>
										<td><b> <span>Respondent </span>
										</b></td>
										<td   ><b> <span>Private/Individual</span>
										</b></td>
									</tr>
									<tr>
										<td>12</td>
										<td><b> <span>Appeal / Prayer of the
													petitioner: </span>
										</b></td>
										<td   ><b> <span>${petition.appeal}</span>
										</b></td>
									</tr>
									<tr>
										<td>13</td>
										<td><b> <span>Case Details</span>
										</b></td>
										<td   ><b> <span> ${petition.courtPet}</span>
										</b></td>
									</tr>

									<tr>
										<td>14</td>
										<td><b> <span>List of evidences submitted by
													petitioner</span>
										</b></td>
										<td   ><b><span><c:forEach varStatus="counter" var="alt" items="${petitionEvidence}">
										${counter.count }. ${alt.docdesc} <br>
										</c:forEach>
											</span> </b></td>
									</tr>

								</tbody>
							</table>
							<tr>
							
							 <div class="checkbox">
      <label><input type="checkbox" name="checkbox" value=""> <p>Declaration: I hereby declare that the details furnished above are true and correct to the best of my knowledge and belief and I undertake the responsibility to inform you of any changes therein, immediately.</p></label>
    </div>
							
								<td><span> <b>Signature of Petitioner</b></span></td>
								<td align="left"><img src="${pageContext.request.contextPath}/getsign/${petition.petitionerId}" width="10%"
									class="banlogosty" alt=""></td>
							</tr>
						</div>
						<div align="center" >
							<div class="row col-md-12">
								<input type="button" class="btn btn-primary" onclick="proceed()"
									value="Final Submit"> <input
									type="button" class="btn btn-warning" value="Downlad PDF"
									onclick="printDiv()">
							</div>
						</div>  </div>
					</div>

		<script> 
      /*   function printDiv() { 
            var divContents = document.getElementById("GFG").innerHTML; 
            var a = window.open(); 
            a.document.write('<html>'); 
            a.document.write('<body>'); 
            a.document.write('<table><tbody><tr><td></td></tr></tbody></table>'); 
			a.document.write(divContents); 
            a.document.write('</body></html>'); 
            a.document.close(); 
            a.print(); 
        }  */

		function proceed(){
/* 
        	var radios = document.getElementsByID("checkbox");

        	
            if (radios[0].checked == false) {
                alert("Must check the declaration checkbox before submitting the petition");
                return false;
            }
             */
             if ($('input[name="checkbox"]:checked').length == 0){

            	 alert("Must check the declaration checkbox before submitting the petition");
            	 document.getElementsByName("checkbox").focus();
            	 return false;
                 }

             
			var con=confirm("Petition once submitted cannnot be modified again.\r\nDo you wish to continue?");
			if(con){
				document.submitpetition.method="POST";
				document.submitpetition.action="/scst/petition/finalsubmit.htm";
				document.submitpetition.submit();
				
				}
				
			}

   
    </script>
    
    
    </body>
    </html>