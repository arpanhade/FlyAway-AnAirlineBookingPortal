<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
<br>
	<a href=HomePage.jsp
		style="color: black; text-decoration: none; font-size: 35px; font-weight: bold;">FlyAway</a>
	<br>
	<br>
	<center>
		<h2>Forgot Password</h2>
	</center>
	<center>
		<div
			style="border: 3px solid black; width: 25%; border-radius: 20px; padding: 20px"
			align="center">
			<form action=ForgotPassword method=post>
				<table>
					<tr>
						<td><label for=email>Email :- </label><br></td>
						<td><input type="email" name=email id=email /></td>
					</tr>
					<tr>
						<td><label for=pass>New Password:- </label><br></td>
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
</body>
</html>