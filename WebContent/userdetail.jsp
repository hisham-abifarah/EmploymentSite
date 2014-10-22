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

<br><br>
<%
RegesterBean rb = (RegesterBean)session.getAttribute("usrkey");
%><br><br> <center> <b> <i>

<FORM name="regfrm" METHOD="POST" action="UserUpdateController">

<table>
	<TR>
	<td>Name :  </td>
		<TD><%= rb.getFname()%> &nbsp;  <%= rb.getLname() %></TD>
	</TR>
	
	<TR>
		<TD>First Name: </TD>
		<TD><INPUT TYPE="text" NAME="fn" size="30"	style="text-align: center"  value= <%= rb.getFname()%>
	</TR>
	
	<TR>
		<TD>Last Name: </TD>
		<TD><INPUT TYPE="text" NAME="fl" size="30"	style="text-align: center" READONLY value= <%= rb.getLname()%>
	</TR>
	
	<tr></tr><tr></tr>
		<TR>
		<TD>Gender: </TD>
		<TD><INPUT TYPE="text" NAME="fg" size="30"	style="text-align: center" READONLY value= <%= rb.getGender()%>
	</TR>
<tr></tr><tr></tr>


	<TR>
		<TD>Birthday : </TD>
		<TD><INPUT TYPE="text" NAME="fb" size="30"	style="text-align: center" READONLY value= <%= rb.getBirthday()%> &nbsp;&nbsp;&nbsp;
		</TD>

	</TR>
<tr></tr><tr></tr>
	<TR>
		<TD>Address : </TD>
		<TD><INPUT TYPE="text" NAME="fa" size="30"	style="text-align: center" READONLY value= <%= rb.getAddress()%>
	
	</TR>
<tr></tr><tr></tr>
	
	<tr></tr><tr></tr>
	<TR>
		<TD>phone : </TD>
		<TD><INPUT TYPE="text" NAME="fp" size="30"	style="text-align: center" READONLY value= <%= rb.getPhone()%>
	</TR>
	<tr></tr><tr></tr>
	<TR>
		<TD>email : </TD>
		<TD><INPUT TYPE="text" NAME="fe" size="30"	style="text-align: center" READONLY value= <%= rb.getEmail()%>
	</TR>
<tr></tr><tr></tr>

<tr></tr><tr></tr>
	<TR>
		<TD colspan="2" align="center"><font color="green" size="4">Account
		Details </font></TD>
	</TR>
	<tr></tr><tr></tr>

<tr></tr><tr></tr>
	
<tr></tr><tr></tr>
	<TR>
		<TD>Password : </TD>
		<TD><%= rb.getPasswd() %></TD>
	</TR>
	
</TABLE><INPUT TYPE="submit" value="Submit"/></pre><br><br><br></Form></i></b></center>


<br><marquee><p>&copy; Copyright Hisham Abi Farah</p></marquee>
</body>
</html>