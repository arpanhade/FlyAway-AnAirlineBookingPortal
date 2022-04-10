<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
</head>
<body>
	<%
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user == null) {
		response.sendRedirect("UserPage.jsp");
	}
	%>
	<br>
	<a href=HomePage.jsp
		style="color: black; text-decoration: none; font-size: 35px; font-weight: bold;">FlyAway</a>
	<br>
	<br>
	<%
	@SuppressWarnings("unchecked")
	List<String[]> flights = (List<String[]>) session.getAttribute("flights");
	if (flights != null) {
	%>
	<center>
	<h2>Available Flights</h2>
	</center>
	<center>
		<table border="2">
			<tr>
				<th>Airline Company</th>
				<th>Departure Time</th>
				<th>Fare(In Rupees)</th>
			</tr>
			<%
			for (String[] flight : flights) {
			%>
			<tr>
				<td><%=flight[0]%></td>
				<td><%=flight[1]%></td>
				<td><%=flight[2]%></td>
			</tr>
		</table>
	</center>
	<center>
	<br>
		<a href=Passengers.jsp style="color: blue; font-size: 20px;">Book Now</a>
	</center>
	<%
	}
	%>

	<%
	} else {
	%>
	<center>
		<h2 style="color:blue">Oops !</h2>
		<h3 style="color:black">No Flights Available</h3>
	</center>
	<%
	}
	%>
</body>
</html>