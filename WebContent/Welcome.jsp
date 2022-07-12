<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="padding-left:70px;background-color: lightgray; border-color:blue; border-style:solid; height:230px; width:350px;">
		<form method="post" action="index.jsp">
			<h1>Login App Version 1.0</h1>
			<table>
				<tr><td><label for="username"><span>Enter UserName :</span></label></td>
					<td><input type="text" name="username"></td></tr>
				<tr><td><label for="password"><span style="width:100px">Enter Password : </span></label></td>
					<td><input type="password" name="password"></td></tr>
				<tr><td><label for="nature"><span style="width:20px">Select User Type :</span></label></td>
				<td><select name="nature">
					<option value="admin">Admin</option>
					<option value="visitor">Visitor</option>
				</select></td></tr>
				<tr><td><span><input type="submit" value="Login"></span>
				<span><a href="addUser.jsp">Create User</a></span></td></tr>
			</table>
		</form>
	</div>
</body>
</html>