<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employer Page</title>
</head>


<body background="img/login.gif" >

<img src="img/jobs.gif"> <br/>

<body>

<div id='cssmenu'>
<ul>
   <li class='active'><a href='#'><span>Add Job</span></a></li>
   <li><A href="EmployerPage"><span>Search Applicants</span></a></li>

</ul>
</div>








<div align="right"><font color="red"><A HREF="EmployerRegisterPage">Register</A></font>
</div>

<FORM METHOD=POST ACTION="home">


Employer Username<BR>
<INPUT TYPE="text" NAME="web_un"><BR>
Password<BR>
<INPUT TYPE="password" NAME="web_pass"><BR>
<%
String error=(String)request.getAttribute("emtkey");
if(error !=null){%>
<font color="red">The customer id or password you entered is incorrect.</font>
<%}
%>
<TABLE>
	<TR>
		<TD>&nbsp;&nbsp;</TD>
		<TD>&nbsp;&nbsp;</TD>
		<TD>&nbsp;&nbsp;</TD>
		<TD>&nbsp;&nbsp;</TD>
		<TD>&nbsp;&nbsp;</TD>
		<TD>&nbsp;&nbsp;</TD>
		<TD>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="submit" value="Login"></TD>
		
	</TR>
</TABLE>
</FORM>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<p>	<font color="#7A5229">&copy; Copyright Hisham Abi Farah</font>  </p>
</body>
</html>