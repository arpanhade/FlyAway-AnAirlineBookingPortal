<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Mode</title>
</head>
<body>
	<h1>FlyAway</h1>
	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: blue; font-size: 20px; blue; text-align:center;"><%=message %></p>
	<%
		session.setAttribute("message", null);
	}
	%>
	<center>
		<h2>Enter Payment Details</h2>
	</center>
		<center>
			<div style="border: 2px solid black; width: 35%; border-radius: 5px; padding: 20px"
			align="center">
				<form action="Payment" method="post">
				<table>
					<tr>
						<td><label for=cardNo>Enter Debit/Credit Card No. :- </label><br></td>
						<td><input type="text" name=cardNo id=cardNo /></td>
					</tr>
					<tr>
						<td><label for=validity>Validity :- </label><br></td>
						<td><input type="month" name=validity id=validity /></td>
					</tr>
					<tr>
						<td><label for=cvv>CVV :- </label><br></td>
						<td><input type="password" name=cvv id=cvv /></td>
					</tr>
					<tr>
						<td><label for=nameoncard>Name On Card :- </label><br></td>
						<td><input type="text" name=nameoncard id=nameoncard /></td>
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