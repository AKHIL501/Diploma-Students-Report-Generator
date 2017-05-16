<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../assets/js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<%@include file="AH.html" %>  
</head>
<body>
<br>
<br>
<div class="wrapper row7">
		<div id="featured_slide">
	    <!-- start of the slider -->
 
    
<center><table align="center" cellpadding="" cellspacing="" border="1">
<tr>

</tr>
	<tr bgcolor="#9d4ce0">
		<td><b>Username</b></td>
		<td><b>Department</b></td>
		<td><b>Designation</b></td>
		<td><b>UserId</b></td>
		<td><b>Password</b></td>
		<td><b>Role</b></td>
		
			</tr>
   <%
   
	try{
		
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/diploma", "root", "");
		
		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery("select * from login");

		
		while(rs.next()){
	%>
		<tr bgcolor="#ede1eb">
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			
		</tr>
		            
	<%		
		
		}
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
%>
</table></center>
	
	

      


</div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->

</body>
</html>