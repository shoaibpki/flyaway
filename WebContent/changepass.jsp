<%@page import="com.entity.Login"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.FlyDao"%>
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
		if (session.getAttribute("uname") == null)
			response.sendRedirect("error.jsp");
	%>
	<form action="chng-upass.jsp" method="post">
	Enter New Password: <input type="password" name="upass"><br>
	<input type="submit" value="update password">
	</form>

</body>
</html>