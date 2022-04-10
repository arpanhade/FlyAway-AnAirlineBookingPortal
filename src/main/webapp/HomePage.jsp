<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<center>
	<h1 style="color:DodgerBlue;" >FlyAway</h1>
	</center>
	<div align="right" >
		<a href="AdminPage.jsp" style="text-align:center" ><h3 style="color:Gray;">Admin Login</h3></a>
	</div>
	<%
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user != null) {
	%>
	<h3 style="color: green">
		Welcome
		<%= user.get("name")%></h3>
	<a href="Logout" style="color:blue;" >Logout</a>
	<%
	} else {
	%>
	<div align="left" >
		<a href=UserPage.jsp style="text-align:center"><h3 style="color:Gray;">User Login</h3></a>
	</div>
	<%
	}
	%>
	<br>
	<br>
	<center>
		<div
			style="border: 3px solid black; width: 25%; border-radius: 10px; padding: 35px"
			align="center">
			<form action=FlightList method=post>
			<table>
				<tr>
					<td><label for="from">From :- </label></td>
					<td><select name="from" id="from">
					<option value="select">Select</option>
					<option value="Mumbai">Mumbai</option>
					<option value="Delhi">Delhi</option>
					<option value="Kolkata">Kolkata</option>
					<option value="Chennai">Chennai</option></select></td>
				</tr>
				<tr>
					<td><label for="to">To :- </label></td>
					<td><select name="to" id="to">
					<option value="select">Select</option>
					<option value="Mumbai">Mumbai</option>
					<option value="Delhi">Delhi</option>
					<option value="Kolkata">Kolkata</option>
					<option value="Chennai">Chennai</option></select></td>
				</tr>
				<tr>
					<td><label for=departure>Departure Date :- </label><br></td>
					<td><input type="date" name=departure id=departure /></td>
				</tr>
				<tr>
					<td><label for=travellers>Passenger(s) :- </label><br></td>
					<td><select name="travellers" id="travellers">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option></select></td>
				</tr>
				<tr>					
					<td><br><input type=submit value=Search /></td>
					<td><br><input type=reset /></td>
				</tr>
			</form>
		</div>
	</center>
</body>
</html>