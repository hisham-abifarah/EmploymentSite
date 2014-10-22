<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.employmentapp.dto.RegesterBean"%>
<%@page import="com.employmentapp.dto.StateBean"%>
<%@page import="com.employmentapp.dto.LoginBean"%>
<%@page import="com.employmentapp.utility.DBsinglton"%>
<%@page import ="java.sql.Connection" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add CV</title>
</head>

<body background="img/background.gif" >



<%
	LoginBean lb=(LoginBean)session.getAttribute("login");
		%>
		
<% DBsinglton.bsinglton();Connection con = DBsinglton.connection();%>



<INPUT TYPE="image" SRC="img/jobs.gif" height="70" width="150">
<br>
<HR color="lightblue">

<!-- include js file here  -->




<FORM name="addcvform" METHOD="POST" action="UserAddCV">
	

<TABLE border ="2" BORDERCOLOR="lightgreen"  >


	<TR>
		<TD colspan="2" align="center"><font color="blue" size="4">CV Content
		 </font></TD>
	</TR>
	
	
	
	<TR><td>Username : </td>
	<TD><TEXT NAME="ctest" ROWS="4" COLS="3"><%= lb.getUsername()%></TEXT></TD>
	</TR>

	<TR>
		<TD>CV Description</TD>
		<TD><TEXTAREA NAME="cvontent" ROWS="15" COLS="100"></TEXTAREA></TD>
		<%
			String error = (String) request.getAttribute("err");
		//	System.out.println("=========" + error);

			if (error != null) {
		%>
		<font color="red" size="2pt">please enter cv</font>
		<%
		}
		%>
	</TR>
	


</TABLE>
		

		
<pre>		<INPUT TYPE="submit" value="Submit"/></pre><br><br><br>
<p>&copy; Copyright Hisham Abi Farah</p>
</FORM>
</body>
</html>