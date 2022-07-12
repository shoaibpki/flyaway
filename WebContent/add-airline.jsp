<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Airlines"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859li-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Airlines airlines = new Airlines();
		airlines.setAirLineName(request.getParameter("airlinename"));
		
		FlyDao.saveAirline(airlines);
		
		out.print("Airline Added Successfully!");
	%>
</body>
</html>