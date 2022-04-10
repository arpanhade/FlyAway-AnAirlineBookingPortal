<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passenger Details</title>
</head>
<body>
	<h1>FlyAway</h1>
	<center>
	<h2>Enter Passenger Details</h2>
	</center>
		<center>
			<div style="border: 2px solid black; width: 25%; border-radius: 5px; padding: 20px"
			align="center" >
				<form action="AddPassenger" method="post">
				<table>
					<tr>
						<td><label for=pname>Name :- </label></td>
						<td><input type="pname" name=pname id=pname /></td>
					</tr>
					<tr>
						<td><label for=age>Age :- </label></td>
						<td><input type="age" name=age id=age /></td>
					</tr>
					<tr>
						<td><label for=gender>Gender :- </label></td>
						<td><input type="radio" id="male" name="gender" value="male">
						<label for="male">Male</label>
						<input type="radio" id="female" name="gender" value="female">
						<label for="female">Female</label></td>						
					</tr>
					<tr>					
						<td><br><input type=submit value=Submit /></td>
						<td><br><input type=reset /></td>
					</tr>
				</table>
				</form>
			</div>
		</center>
</body>
</html>