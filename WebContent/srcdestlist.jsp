<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Source_destination"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="src" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table, th, td {
  border:1px solid black;
  border-collapse: collapse;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%
		List<Source_destination> srclist = FlyDao.getSrcDest("from Source_destination");
		request.setAttribute("srclist", srclist);
	%>
	<h3>List of Sources and destinations</h3>
	<table style="width:30%;">	
		<tr>
			<th>ID</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Price</th>
		</tr>
	<src:forEach var="src_dest" items="${srclist }">
		<tr>
			<td style="text-align:center;">${src_dest.getSrcDestId().toString() }</td>
			<td>${src_dest.getSource() }</td>
			<td>${src_dest.getDestination()}</td>
			<td>${src_dest.getTicketPrice() }</td>
		</tr>
	</src:forEach>
	</table>
</body>
</html>