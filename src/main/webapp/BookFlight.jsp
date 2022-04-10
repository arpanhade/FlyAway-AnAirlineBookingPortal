<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Flight</title>
</head>
<body>
	<br>
	<a href=HomePage.jsp
		style="color: black; text-decoration: none; font-size: 35px; font-weight: bold;">FlyAway</a>
	<br>
	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: blue;font-size: 25px; text-align:center;"><%=message %></p>
	<%
		session.setAttribute("message", null);
	}
	%>
	<br> 	
	<p align="center"
		style="color: green; font-size: 40px; font-weight: bold">Flight
		Booked Successfully</p>
	<div align="right" >
		<a href="HomePage.jsp" style="text-align:center" ><h3 style="color:Gray;">Book Another Flight</h3></a>
	</div>
</body>
</html>