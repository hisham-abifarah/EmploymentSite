<%@ page import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
    <head>
    <link rel="stylesheet" href="stylesearchresults.css">
    </head>
    <body background="img/login.gif">
    
    <div align=left">
        <table border="1" cellpadding="5">
            <caption><h2>List of Jobs</h2></caption>


    <thead>
        <tr>
            <th>Category</th>
            <th>Type</th>
            <th>Duration</th>
            <th>Location</th>
        </tr>
    </thead>
    
        <c:forEach var="user" items="${users}" varStatus="loop">
            <tr class="${loop.index % 2 == 0 ? 'even' : 'odd'}">
                <td>${user.category}</td>
                <td>${user.type}</td>
                <td>${user.duration}</td>
                <td>${user.location}</td>
               <td>
        <a href="http://www.google.com/">Apply</a>
      </td>
                
            </tr>
        </c:forEach>
</table>
</div>
    </body>
</html>