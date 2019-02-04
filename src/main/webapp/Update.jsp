<%@page import="com.demo.hibernate.pojo.UserData"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.demo.dao.DemoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
<style>
table {
	border-collapse: collapse;
	width: 80%;
}

td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	text-color: white
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}
input[type=tel] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}
input[type=email] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=submit]:hover {
	background-color: #45a049;
}

button {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

a:link, a:visited {
	background-color: #f44336;
	color: white;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	border-radius: 4px;
}

a:hover, a:active {
	background-color: red;
}
</style>
</head>
<body>
	<%
		DemoDao dd = new DemoDao();
		int n = Integer.parseInt(request.getParameter("id"));
		List results = dd.get(n);

		for (Iterator iterator = results.iterator(); iterator.hasNext();) {

			UserData user = (UserData) iterator.next();
	%>

	<form method="GET" action="http://localhost:8080/final-demo/update_save.jsp">
		<table border="5" align="center">

			<tr>

				<th align="center" colspan="2" height="50"><font color="white">Register</font></th>

			</tr>
			<tr>
			<td>Id:</td>
			<td><input type="text" name="id" value="<%=user.getId()%>" readonly/></td>
			</tr>
			
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=user.getName()%>"/></td>
			</tr>

			<tr>
				<td>Mobile:</td>
				<td><input type="tel" name="mobile" pattern="[6789][0-9]{9}"
					placeholder="10-Digit Mobile Number" value="<%=user.getMobile()%>"/></td>
			</tr>

			<tr>
				<td>Address:</td>
				<td><textarea rows="10" cols="30" name="address"><%=user.getAddress()%></textarea></td>
			</tr>

			<tr>
				<td>Email:</td>
				<td><input type="email" name="email"
					placeholder="name@example.com" value="<%=user.getEmail()%>"/></td>
			</tr>

			<tr>
				<td>City:</td>
				<td><input type="text" name="city" value="<%=user.getCity()%>"/></td>
			</tr>

			<tr>
				<td>D.O.B:</td>
				<td><input type="text" name="birthday"
					pattern="[0-9]{4}/(0[1-9]|1[012])/(0[1-9]|1[0-9]|2[0-9]|3[01]))"
					placeholder="YYYY/MM/DD" value="<%=user.getBirthday()%>"/></td>
			</tr>

			<tr>
				<td><button type="submit">Submit</button></td>
				<td><a href="http://localhost:8080/final-demo/display.jsp">List</a>
				</td>
			</tr>
		</table>


	</form>
	<%
		}
	%>
</body>
</html>