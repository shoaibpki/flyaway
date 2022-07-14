<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Detail Search Form</title>
</head>
<body>
	<h3>Provide Travel Details to Search</h3>
	<form action="availableflight.jsp" method="post">
		<table>
			<tr>
				<td>Enter Source:</td>
				<td><input type="text" name="sourcename"></td>
			</tr>
			<tr>
				<td>Enter Destination:</td>
				<td><input type="text" name="destination"></td>
			</tr>
			<tr>
				<td>Enter Travel Date:</td>
				<td><input type="date" name="tdate"></td>
			</tr>
			<tr>
				<td>Enter No of Persons:</td>
				<td><input type="number" name="nperson" min="1" max="200"></td>
			</tr>
			<tr><td><input type="submit" value="Search"></td></tr>
		</table>
	</form>
</body>
</html>