<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
	<br>
	<a href=HomePage.jsp
		style="color: black; text-decoration: none; font-size: 35px; font-weight: bold;">FlyAway</a>
	<br>
	<br>
	<center>
		<h2>Admin Login</h2>
		<div
			style="border: 3px solid black; width: 25%; border-radius: 20px; padding: 20px"
			align="center">
			<form action=AdminLogin method=post>
				<table>
					<tr>
						<td><label for=email>Email :- </label><br></td>
						<td><input type="email" name=email id=email /></td>
					</tr>
					<tr>
						<td><label for=pass>Password:- </label><br></td>
						<td><input type="password" name=password id=pass /></td>
					</tr>
					<tr>					
						<td><br><input type=submit value=Submit /></td>
						<td><br><input type=reset /></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
	<br>
	<a href=ForgotPassword.jsp style="font-size: 25; color: red;">Forgot
		Password</a>

	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: green;"><%=message %></p>
	<%
		session.setAttribute("message", null);
	}
%>
</body>
</html>