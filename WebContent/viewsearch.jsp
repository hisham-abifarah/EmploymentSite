<%@ page import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
    <head>
    </head>
    <body>
  <table>
    <table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:teal">
                    <b>User Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>Category</b></td>
                <td><b>Type</b></td>
                <td><b>Duration</b></td>
                <td><b>Location</b></td>
            </tr>
            
            
            <c:forEach var="user" items="${users}">
            <c:out value="${user.category}"/>
             <c:out value="${user.type}"/>
              <c:out value="${user.duration}"/>
               <c:out value="${user.location}"/>
           
       	 </c:forEach>
           
     
</table>
    </body>
</html>