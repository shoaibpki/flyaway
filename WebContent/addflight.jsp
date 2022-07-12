<%@page import="com.entity.Airlines"%>
<%@page import="com.dao.FlyDao"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Source_destination"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="src" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Flight Detail Form</title>
</head>
<body>
	<%
		if (session.getAttribute("uname") == null)
			response.sendRedirect("error.jsp");
	%>

	<%
		// get list of source and destination
		List<Source_destination> srcdestList = FlyDao.getSrcDest("from Source_destination");
		
		//get list of airlines
		List<Airlines> airList = FlyDao.getAirlines("from Airlines");
		
		// set request variables for src, dest and airlines
		request.setAttribute("srcdestList", srcdestList);
		request.setAttribute("airList", airList);
	%>
	<form method="post" action="add-flight.jsp">
		<table>
			<tr><td><span>Enter Flight Name:</span></td><td><input type="text" name="flightname"></td></tr>

			<!-- set src, dest list -->
			<tr><td><span>Select Source and Destination:</span></td><td><select name="srcdest">
				<src:forEach var="src_dest" items="${srcdestList }">
					<option value="${src_dest.getSrcDestId() }">${src_dest.getSource() } To ${src_dest.getDestination()}</option>
				</src:forEach>
			</select></td></tr>

			<!-- set airline list -->
			<tr><td><span>Select Airline:</span></td><td><select name="aline">
				<src:forEach var="airline" items="${airList }">
					<option value="${airline.getAirLineId() }">${airline.getAirLineName() }</option>
				</src:forEach>
			</select></td></tr>

			<tr><td><span>Enter Flight Date:</span></td><td><input type="date" name="flightdate"></td></tr>
			<tr><td><span>Enter Limit of Passengers:</span></td><td><input type="number" name="noofpersons"></td></tr>
			<tr><td><input type="submit" value="Save Flight Detail"></td></tr>
		</table>
	</form>
</body>
</html>