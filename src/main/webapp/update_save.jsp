<%@page import="java.util.Date"%>
<%@page import="com.demo.dao.DemoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DemoDao dd = new DemoDao();
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String address = request.getParameter("address");
long mobile = Long.parseLong(request.getParameter("mobile"));
String email = request.getParameter("email");
String city = request.getParameter("city");
String birthday = request.getParameter("birthday");

if(dd.update(id, name,mobile,address,birthday,email,city)){
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("location", "http://localhost:8080/final-demo/index.jsp");

}


	
%>
</body>
</html>