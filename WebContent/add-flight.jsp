<%@page import="com.dao.FlyDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.entity.Flights"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//convert flightdate string into date format
		SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd");
		Date flightdate = format.parse(request.getParameter("flightdate"));
		
		// set properties of flights table
		Flights flight = new Flights();
		flight.setFlightName(request.getParameter("flightname"));
		flight.setSrcDestId(Integer.parseInt(request.getParameter("srcdest")));
		flight.setAirLineId(Integer.parseInt(request.getParameter("aline")));
		flight.setFlightDate(flightdate);
		flight.setNoOfPersons(Integer.parseInt(request.getParameter("noofpersons")));
		FlyDao.saveFlight(flight);
		
		out.print("<h3>Save flight detail successfully!</h3>");
	%>
</body>
</html>