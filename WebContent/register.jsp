<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="flightdetail.jsp" method="post">
		<input type="hidden" name="flightId" value="<%=request.getParameter("fid")%>">
		<table>
			<tr>
				<td>Enter Name:</td>
				<td><input type="text" name="pname"></td>
			</tr>
			<tr>
				<td>Enter Mobile:</td>
				<td><input type="number" name="mobile" ></td>
			</tr>
			<tr>
				<td>Enter Email:</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>Confirm No. of Passenger:</td>
				<td><input name="noOfPassengar" type="number" min="1" max="200" value="<%=request.getParameter("persons")%>"></td>
			</tr>
			<tr>
				<td>Purpose of traveling:</td>
				<td><select name="purpose">
					<option value="business">Business</option>
					<option value="vacation">Vacation</option>
					<option value="other">Other</option>
				</select>
			</tr>
			<tr><td><input type="submit" value="Registered"></td></tr>
		</table>
	</form>
</body>
</html>