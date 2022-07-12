<%@page import="com.dao.FlyDao"%>
<%@page import="com.entity.Login"%>
<%@page import="java.util.List"%>
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
		List<Login> users = FlyDao.getUserList("from Login");
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		//String nature = request.getParameter("nature");
		boolean usearch = false;
			
		for (Login user: users){
			if (user.getUserName().equalsIgnoreCase(uname) && 
				user.getPassword().equalsIgnoreCase(password) && 
				user.getUserType().equalsIgnoreCase("admin")){
					session.setAttribute("uname", uname);
					session.setAttribute("userId", user.getId());
					usearch=true;
			}
		}
		if (!usearch){
			response.sendRedirect("error.jsp");
		}
	%>
	<a href="changepass.jsp">Change Current password?</a><br><br>
	<a href="addsrcdest.jsp">Add Source and Destination</a><br>
	<a href="addairlin.jsp">Add Airline information</a><br>
	<a href="addflight.jsp">Add Flight information</a><br>
</body>
</html>