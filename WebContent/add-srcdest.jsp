<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Source_destination"%>
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
		Source_destination src = new Source_destination();
		src.setSource(request.getParameter("srccity"));
		src.setDestination(request.getParameter("dstcity"));
		src.setTicketPrice(Double.parseDouble(request.getParameter("price")));
		
		FlyDao.saveSrcDest(src);
		
		out.println("Successfully Saved!");
	%>
</body>
</html>