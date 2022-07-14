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
<title>Booking Confirmation Page</title>
</head>
<body>
	<jsp:useBean id="passenger" class="com.entity.Passenger" scope="session"></jsp:useBean>
	<%
		double tprice=0;
		List<Flights> flight = FlyDao.getFlighList("from Flights where flightID=" + passenger.getFlightId());
		
		
		List<Source_destination> src = FlyDao.getSrcDest("from Source_destination");
		
		List<Airlines> airlines = FlyDao.getAirlines("from Airlines");
	%>
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
						<%
							tprice = s.getTicketPrice();
							//update sold no. of tickets in flight table
							int soldTicket=	passenger.getNoOfPassengar()+f.getNoOfTicket();
							FlyDao.saveFlight(f.getFlightId(), soldTicket);
						%>
					</tr>
					<tr>
						<td>Paid Amount</td>
						<td style="border-style:dotted;border-top:1px; border-bottom:1px;"><%=passenger.getNoOfPassengar() * tprice %>
					</tr>
				<%}%>
				
			<%}%>
		<%}%>
	</table>
	<%
		double totalAmount = tprice * passenger.getNoOfPassengar();
		passenger.setTotalAmount(totalAmount);
		//save passanger information 
		FlyDao.savePassenger(passenger);
	%>
	<hr>
	<p>Your ticket booking details as above</p>
	<p>Thank you, your payment has been received successfully.</p>
	<p>E-ticket will be sent to your registered email shortly.</p>
	<p>Take care bye,</p>
</body>
</html>