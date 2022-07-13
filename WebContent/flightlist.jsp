<%@page import="com.entity.Source_destination"%>
<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Flights"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="src" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
  border:1px solid black;
  border-collapse: collapse;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Flights> flights= FlyDao.getFlighList("from Flights");
		List<Source_destination> srclist = FlyDao.getSrcDest("from Source_destination");
		request.setAttribute("flights", flights);
		request.setAttribute("srclist", srclist);
	%>
	<h3>List of Flights</h3>
	<table style="width:30%;">	
		<tr>
			<th>ID</th>
			<th>Flight Name</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Ticket Price</th>
		</tr>
	<src:forEach var="flight" items="${flights }">
		<tr>
			<td style="text-align:center;">${flight.getFlightId() }</td>
			<td>${flight.getFlightName() }</td>
			<src:forEach var="srcdest" items="${srclist }">
				<src:if test="${flight.getSrcDestId() == srcdest.getSrcDestId() }">
					<td>${srcdest.getSource()}</td>
					<td>${srcdest.getDestination() }</td>
					<td>${srcdest.getTicketPrice() }</td>
				</src:if>
			</src:forEach>
		</tr>
	</src:forEach>
	</table>
</body>
</html>