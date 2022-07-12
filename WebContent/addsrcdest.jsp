<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Source and Destination</title>
</head>
<body>
	<%
		if (session.getAttribute("uname") == null)
			response.sendRedirect("error.jsp");
	%>

	<form action="add-srcdest.jsp">
		<table>
			<tr><td><span>Enter Source :</span></td><td><input type="text" name="srccity"></td></tr>
			<tr><td><span>Enter Destination :</span></td><td><input type="text" name="dstcity"></td></tr>
			<tr><td><span>Enter Ticket Price:</span></td><td><input type="number" name="price"></td></tr>
			<tr><td><input type="submit" value="Add Detail"></td></tr>
		</table>
	</form>

</body>
</html>