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
<title>Available Flight Booking Form</title>
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
	<form action="register.jsp" method="post">
		<input type="hidden" name="persons" value="<%out.print(nperson); %>">
	<table style="width:30%">
		<tr>
			<th>Source</th>
			<th>Destination</th>
			<th>Ticket Price</th>
		</tr>
		<%for (Source_destination src: srclist){%>
			<tr>
			<%if (src.getSource().equalsIgnoreCase(source) && src.getDestination().equalsIgnoreCase(dest)){%>
			<td><%=src.getSource()%></td>
			<td><%=src.getDestination()%></td>
			<td><%=src.getTicketPrice()%></td></tr></table>
				<%List<Flights> flist = src.getFlights();%>
				<table style="width:50%">
				<tr>
					<th>Booking</th>
					<th>Available Tickets</th>
					<th>Flight Name</th>
					<th>Flight Date</th>
				</tr>
				<%for (Flights flight: flist){
					if (flight.getFlightDate().compareTo(flightdate)==0 &&
						flight.getNoOfTicket()<flight.getNoOfPersons()){ %>
						<tr>
							<td style="text-align:center;"><input type="radio" name="fid" value="<%=flight.getFlightId() %>"></td>
							<td><%=flight.getNoOfPersons() - flight.getNoOfTicket() %></td>
							<td><%=flight.getFlightName() %></td>
							<td><%=flight.getFlightDate() %></td>
						</tr>
				<% }
				}
			}
		}%>
	</table>
	<input type="submit" value="Book"></form>
</body>
</html>