<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Flights</title>
</head>
<body>
	<h1>FlyAway</h1>
	<sql:setDataSource user="root" password="Vinayak13/05"
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/flyaway" />
	<sql:query var="resultSet" sql="select * from flights"></sql:query>
	<center><h2>Available Flights</h2></center>
	<center>
	<table border="2">
		<tr>
			<th>Airline Company</th>
			<th>Departure From</th>
			<th>Arrival To</th>
			<th>Date of Departure</td>
			<th>Time of Departure</td>
			<th>Fare(In Rupees)</th>
		</tr>
		<c:forEach var="row" items="${resultSet.rows}" >
			<tr>
				<td><c:out value="${row.name}" /></td>
				<td><c:out value="${row.fromf}" /></td>
				<td><c:out value="${row.tof}" /></td>
				<td><c:out value="${row.datef}" /></td>
				<td><c:out value="${row.timef}" /></td>
				<td><c:out value="${row.price}" /></td>
			</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>