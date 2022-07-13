<%@page import="com.dao.FlyDao"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Airlines"%>
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
		List<Airlines> airlines= FlyDao.getAirlines("from Airlines");
		request.setAttribute("airlines", airlines);
	%>
	<h3>List of Airlines</h3>
	<table style="width:30%;">	
		<tr>
			<th>ID</th>
			<th>Airline Name</th>
		</tr>
	<src:forEach var="airline" items="${airlines }">
		<tr>
			<td style="text-align:center;">${airline.getAirLineId() }</td>
			<td>${airline.getAirLineName() }</td>
		</tr>
	</src:forEach>
	</table>
</body>
</html>