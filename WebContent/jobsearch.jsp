<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.employmentapp.dto.RegesterBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Detail </title>
</head>
<body background="img/background.gif">
<%@include file="header.jsp" %><br><div align="right">

<a href="setting"><img src="img/set.png" height=34 width=34></a></div>


<FORM name="regfrm" METHOD="GET" action="SearchJobs">

<table width="100%" border="0" cellpadding="0" cellspacing="0">
										
											<tr>
											<td height="65" style="HEIGHT: 65px" vAlign="top">&nbsp;&nbsp; Job Category:</td>
												<td valign="top" style="HEIGHT: 65px">
													<select size="5" name="Searchcategory"  id="jobcategory">
	
	<option value="1" selected="selected" >Accounting/Finance</option>
	<option value="2">Advertising/Public Relations</option>
	<option value="3">Architecture &amp; Design</option>
	<option value="4">Arts/Entertainment/Publishing</option>
	<option value="5">Banking/Mortgage</option>
	<option value="6">Clerical/Administrative</option>
	<option value="7">Construction/Facilities</option>
	<option value="8">Consultancy</option>
	<option value="9">Education/Training</option>
	<option value="10">Engineering</option>
	<option value="11">Enviromental</option>
	<option value="12">Event Management</option>
	<option value="13">Government</option>
	<option value="14">Health Care/Pharmaceutical</option>
	<option value="15">Hospitality/Travel</option>
	<option value="16">Human Resource</option>
	<option value="17">Information Technology</option>
	<option value="18">Law Enforcement/Security</option>
	<option value="19">Legal</option>
	<option value="20">Management Consulting</option>
	<option value="21">Marketing</option>
	<option value="22">Nursing</option>
	<option value="23">Restaurant/Food Service</option>
	<option value="24">Sales-Retail</option>
	<option value="25">Science/Technology</option>
	<option value="26">Telecommunications</option>


</select> 
<br />
<br />
<br />
</td>
</tr>

<tr>
<td height="65" style="HEIGHT: 65px" vAlign="top">&nbsp;&nbsp; Employee Type:</td>
												<td valign="top" style="HEIGHT: 65px">

   <input type="radio" name="myradio" value="1" checked="checked"/>Employee
     <input type="radio" name="myradio" value="2"/>Intern
     <input type="radio" name="myradio" value="3"/>Temp/Contract/Project

					
					</td>
					</tr>				
					
					<tr>
<td height="65" style="HEIGHT: 65px" vAlign="top">&nbsp;&nbsp; Job Duration:</td>
												<td valign="top" style="HEIGHT: 65px">

   <input type="radio" name="myradio2" value="1" checked="checked"/>Full-Time
     <input type="radio" name="myradio2" value="2"/>Part-Time
     

					
					</td>
					</tr>				
				
	 											<td height="27" vAlign="top">&nbsp; &nbsp;Job Location:</td>
												<td>
													<select size="5" name="Searchlocation" multiple="multiple" id="ctrlSearch_country" class="FormField">
	
		<option value="1" selected="selected" >Lebanon</option>
		<option value="2">Saudi Arabia</option>
		<option value="3">Iraq</option>
		<option value="4">Yemen</option>
		<option value="5">Syria</option>
		<option value="6">United Arab Emirates</option>
		<option value="7">Jordan</option>
		<option value="8">Oman</option>
		<option value="9">Kuwait</option>
		<option value="10">Qatar</option>
		<option value="11">Bahrain</option>
		

</select> 
													<br />
												</td>
											</tr>			


</TABLE>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<pre>		<INPUT TYPE="submit" value="Submit"/></pre><br><br><br>



</FORM>
</body>
</html>