<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="add-user.jsp" method="post">
	Enter User Name: <input type="text" name="username"><br>
	Enter Password : <input type="password" name="password"><br>
	<select name="nature">
		<option value="admin">Admin</option>
		<option value="visitor">Visitor</option>
	</select><br>
	<input type="submit" value="Add user">
</form>
</body>
</html>