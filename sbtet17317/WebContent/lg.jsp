<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
%><script type="text/javascript">alert("Thank You")</script><%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>