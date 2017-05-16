<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%@page import="java.sql.*" %>
<% 
try{
String user=request.getParameter("edit");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
Statement st = con.createStatement();
int i=st.executeUpdate("delete from login where userid='"+user+"' ");
if(i>0)
{
	response.sendRedirect("removeuser.jsp");
}


out.println(user);
}
catch (Exception e) {
	out.println(e);
}
%>
</body>
</html>