<%@page import="com.demo.hibernate.pojo.UserData"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.demo.dao.DemoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>Displaying Information</TITLE>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}

* {
	box-sizing: border-box;
}
</style>
</HEAD>

<BODY>
	<H1>Data of Interns</H1>

	<%
		DemoDao Dd = new DemoDao();
		List results = Dd.Display();
		Iterator iterator = results.iterator();
	%>



	<TABLE BORDER="1">
		<TR>
			<TH>ID</TH>
			<TH>Name</TH>
			<TH>Mobile</TH>
			<TH>Address</TH>
			<TH>Birthday</TH>
			<TH>Email</TH>
			<TH>City</TH>
			
			<TH colspan=2>Operation</TH>

		</TR>
		<%
			while (iterator.hasNext()) {
		%>
		<%
			UserData emp = (UserData) iterator.next();
		%>
		<TR>
			<TD><%=emp.getId()%></Td>
			<TD><%=emp.getName()%></TD>
			<TD><%=emp.getMobile()%></TD>
			<TD><%=emp.getAddress()%></TD>
			<TD><%=emp.getBirthday()%></TD>
			<TD><%=emp.getEmail()%></TD>
			<TD><%=emp.getCity()%></TD>
			<td><a href="http://localhost:8080/final-demo/delete.jsp?id=<%=emp.getId()%>" onClick="check()">Delete</a></td>
				<td><a href="http://localhost:8080/final-demo/Update.jsp?id=<%=emp.getId()%>">Update</a></td>
		</TR>
		<%
			}
		%>
	</TABLE>
	<script type='text/javascript'>
		function check() {
			
			 alert("Deleted.");
			
		}
	</script>
	
	</BODY>
</HTML>
