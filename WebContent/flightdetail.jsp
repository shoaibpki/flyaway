<%@page import="com.entity.Airlines"%>
<%@page import="com.entity.Source_destination"%>
<%@page import="com.entity.Flights"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Passenger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Selected Flight Detail</title>
</head>
<body>
	<!-- set properties of Passenger table -->
	<jsp:useBean id="passenger" class="com.entity.Passenger" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="passenger"/>
	
	<h2>::Your Flight Booking Information::</h2>
	<%
		int npass = Integer.parseInt(request.getParameter("noOfPassengar"));
		List<Flights> flight = FlyDao.getFlighList("from Flights where flightID=" + request.getParameter("flightId"));
		
		List<Source_destination> src = FlyDao.getSrcDest("from Source_destination");
		
		List<Airlines> airlines = FlyDao.getAirlines("from Airlines");
	%>
	<form action="confirmation.jsp" method="post">
	<table>
		<%for (Flights f: flight){%>
			<tr>
				<td>Flight No.:</td>
				<td><%= f.getFlightName() %></td>
			</tr>
			<tr>
				<td>Flight Date:</td>
				<td><%=f.getFlightDate() %></td>
			</tr>
			<%for (Airlines airline: airlines ){
				if (airline.getAirLineId() == f.getAirLineId()){%>
					<tr>
						<td>Airline Name:</td>
						<td><%=airline.getAirLineName() %>
					</tr>	
				<%}%>
			<%}%>
			<%for(Source_destination s: src){
				if(f.getSrcDestId() == s.getSrcDestId()){%>
					<tr>
						<td>Source:</td>
						<td><%=s.getSource() %></td>
					</tr>
					<tr>
						<td>Destination:</td>
						<td><%=s.getDestination() %></td>
					</tr>
					<tr>
						<td>Payable Amount:</td>
						<td><%=s.getTicketPrice() * npass %></td>
						<%passenger.setTotalAmount(s.getTicketPrice() * npass); %>
					</tr>
				<%}%>
				
			<%}%>
		<%}%>
		<tr><td><input type="submit" value="Pay Now"></td></tr>
	</table>
	</form>
</body>
</html>