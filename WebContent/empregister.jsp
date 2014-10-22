<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.employmentapp.dto.StateBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register form</title>
</head>

<body background="img/background.gif" >


<INPUT TYPE="image" SRC="img/jobs.gif" height="70" width="150">
<br>
<HR color="lightblue">

<!-- include js file here  -->



<FORM name="regfrm" METHOD="GET" action="EmployerRegisterControl"
	>

<TABLE border ="2" BORDERCOLOR="lightgreen"  >
	<TR>
		<TD colspan="2" align="center"><font color="blue" size="4">Company Details
		 </font></TD>
	</TR>
	<TR>
		<TD>Name</TD>
		<TD><INPUT TYPE="text" NAME="empname" onkeypress="alpha_only()"
		size="33"	style="text-align: center"></TD>
	</TR>


	<TR>
		<TD>Address</TD>
		<TD><TEXTAREA NAME="empaddress" ROWS="5" COLS="26"></TEXTAREA></TD>
		<%
			String error = (String) request.getAttribute("err");
			System.out.println("=========" + error);

			if (error != null) {
		%>
		<font color="red" size="2pt">please enter your address</font>
		<%
		}
		%>
	</TR>
	<TR>
		<TD>email</TD>
		<TD><INPUT TYPE="text" NAME="empemail" size="33" onkeypress="no_space()"></TD>
	</TR>

	<TR>
		<TD>phone</TD>
		<TD><INPUT TYPE="text" NAME="empphone" onkeypress="num_only()"
			maxlength="8" ></TD>
	</TR>
	
	<TR>
		<TD>Cell</TD>
		<TD><INPUT TYPE="text" NAME="empcell" onkeypress="num_only()"
			maxlength="8" ></TD>
	</TR>
	

	<TR>
		<TD colspan="2" align="center"><font color="green" size="4">Account
		Details </font></TD>
	</TR>

<TR>
		<TD>Username</TD>
		<TD><INPUT TYPE="text" NAME="empusername" size="24"></TD>
	</TR>



	<TR>
		<TD>Password</TD>
		<TD><INPUT TYPE="password" NAME="emppassword" size="24"></TD>
	</TR>
	<TR>
		<TD>Confirm pwd</TD>
		<TD><INPUT TYPE="password" NAME="empconfirmpwd" size="24"></TD>
	</TR>
</TABLE><%
			String errorall = (String) request.getAttribute("errall");
			

			if (errorall != null) {
		%>
		<font color="red" size="2pt">please give correct value to all fields </font>
		<%
		}
		%>		

		
<pre>						<INPUT TYPE="submit" value="Submit"></pre><br><br><br>
<p>&copy; Copyright Hisham Abi Farah</p>
</FORM>
</body>
</html>