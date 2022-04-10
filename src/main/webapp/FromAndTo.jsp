<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Source and Destination</title>
</head>
<body>
	<h1>FlyAway</h1>
	<sql:setDataSource user="root" password="Vinayak13/05"
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/flyaway" />
	<sql:query var="resultSet" sql="select fromf,tof from flights;"></sql:query>
	<center><h2>Source and Destination</h2></center>
	<center>
	<table border="2">
		<tr>
			<th>Source</th>
			<th>Destination</th>
		</tr>
		<c:forEach var="row" items="${resultSet.rows}" >
			<tr>
				<td><c:out value="${row.fromf}" /></td>
				<td><c:out value="${row.tof}" /></td>
			</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>