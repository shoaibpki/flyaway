<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.logging.SimpleFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.entity.Flights"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Source_destination"%>
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
<title>Flight Booking Form</title>
</head>
<body>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date flightdate = sdf.parse(request.getParameter("tdate"));

		String source = request.getParameter("sourcename");
		String dest = request.getParameter("destination");
		int nperson = Integer.parseInt(request.getParameter("nperson"));
		
		List<Source_destination> srclist = FlyDao.getSrcDest("from Source_destination");
	%>
	<table style="width:30%">
		<tr>
			<th>Source</th>
			<th>Destination</th>
			<th>Ticket Price</th>
		</tr>
		<%for (Source_destination src: srclist){%>
			<tr>
			<%if (src.getSource().equalsIgnoreCase(source) && src.getDestination().equalsIgnoreCase(dest)){%>
			<td><%out.print(src.getSource());%></td>
			<td><%out.print(src.getDestination());%></td>
			<td><%out.print(src.getTicketPrice());%></td></tr></table>
				<%List<Flights> flist = src.getFlights();%>
				<table style="width:50%">
				<tr>
					<th>Booking</th>
					<th>Flight Id</th>
					<th>Available Tickets</th>
					<th>Flight Name</th>
					<th>Flight Date</th>
				</tr>
				<%for (Flights flight: flist){
					if (flight.getFlightDate().compareTo(flightdate)==0 &&
						flight.getNoOfTicket()<flight.getNoOfPersons()){ %>
						<tr>
							<td><a href="#">Book Tickets</a></td>
							<td><%out.print(flight.getFlightId());%></td>
							<td><%out.print(flight.getNoOfPersons() - flight.getNoOfTicket());%></td>
							<td><%out.print(flight.getFlightName());%></td>
							<td><%out.print(flight.getFlightDate());%></td>
						</tr>
				<% }
				}
			}
		}%>
	</table>
</body>
</html>