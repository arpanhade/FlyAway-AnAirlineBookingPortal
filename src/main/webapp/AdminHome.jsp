<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
	<br>
	<a href=HomePage.jsp
		style="color: black; text-decoration: none; font-size: 35px; font-weight: bold;">FlyAway</a>
	<br>
	<br>
	<center>
		<h2>Insert New Flight Details</h2>

		<div
			style="border: 3px solid black; width: 25%; border-radius: 20px; padding: 20px"
			align="center">
			<form action=InsertFlight method=post>
			<table>
					<tr>
						<td><label for=name>Name :- </label><br></td>
						<td><select name="name" id="name">
						<option value="select">Select</option>
						<option value="AirAsia India">AirAsia India</option>
						<option value="Air India">Air India</option>
						<option value="Air India Express">Air India Express</option>
						<option value="Akasa Air">Akasa Air</option>
						<option value="Go First">Go First</option>
						<option value="IndiGo">IndiGo</option>
						<option value="SpiceJet">SpiceJet</option>
						<option value="Vistara">Vistara</option></select></td>
					</tr>
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
						<td><label for=departure>Departure :- </label><br></td>
						<td><input type="date" name=departure id=departure /></td>
					</tr>
					<tr>
						<td><label for=time>Time :- </label><br></td>
						<td><input type="time" name=time id=time /></td>
					</tr>
					<tr>
						<td><label for=price>Price :- </label><br></td>
						<td><input type="text" name=price id=price /></td>
					</tr>
					<tr>					
						<td><br><input type=submit value=submit /></td>
						<td><br><input type=reset /></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: green;"><%=message %></p>
	<%
		session.setAttribute("message", null);
	}
	%>
	<br>
		<a href=FromAndTo.jsp ><h3 style="colcor: blue"><h3>List of Source and Destination</h3></a>

		<a href=Airlines.jsp ><h3 style="colcor: blue"><h3>List of Available Airlines</h3></a>

		<a href=AvailableFlights.jsp ><h3 style="colcor: blue"><h3>List of Available Flights</h3></a>
	<br>
</body>
</html>