	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@page import="com.employmentapp.dto.EmployerLoginBean"%>
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home</title>
	</head>
	<body bgcolor="ivory">
	
	<%@include file="header1.jsp" %>
		<div align="right"><A HREF="logout"><INPUT TYPE="image"
		align="right" SRC="img/logout.gif" height="34" width="34" onclick="location.href='logout';" > </A></div>	
		<%
	EmployerLoginBean lbj=(EmployerLoginBean)session.getAttribute("login");
		%>Welcome <br> <%="Name: " + lbj.getUsername()+" <br>"   %> <br>
	
	<center><B><h1> Welcome </h1> </B></center>
	<BR><BR>
	
	<center><I><A HREF="detail">My Info</A></I></center></H2>
	<BR>
	<center><I><A HREF="JobSearchControl">Add new job</A></I></center></H2>
		<BR>
	<center><I><A HREF="JobSearchControl">Search Applicants</A></I></center></H2>
	<BR>	
	
 <BR>

	
	
	<br><br><br><br><br><br>
	
	<%@include file="footer.jsp"%>
	</body>
	</html>