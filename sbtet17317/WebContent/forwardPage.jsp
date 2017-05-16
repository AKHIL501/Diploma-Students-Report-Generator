<%@page import="java.util.LinkedList"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String sem1 = request.getParameter("sem");
		//out.println(sem1);
		int sem = Integer.parseInt(sem1);
		//int sem=1;
		String branch = request.getParameter("branch");
		String year = request.getParameter("year");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/diploma", "root", "");
			PreparedStatement ps = con
					.prepareStatement("select * from subjects where sem=? and branch=? and year=?");
			ps.setInt(1, sem);
			ps.setString(2, branch);
			ps.setString(3, year);
			ResultSet rs = ps.executeQuery();
		 while(rs.next()){%>
		<option>--Select Subject--</option>
		 <option value=<%=rs.getString(5)%>><%=rs.getString(6)%></option>
		  <option value=<%=rs.getString(7)%>><%=rs.getString(8)%></option>
		   <option value=<%=rs.getString(9)%>><%=rs.getString(10)%></option>
		    <option value=<%=rs.getString(11)%>><%=rs.getString(12)%></option>
		     <option value=<%=rs.getString(13)%>><%=rs.getString(14)%></option>
		      <option value=<%=rs.getString(15)%>><%=rs.getString(16)%></option>
		       <option value=<%=rs.getString(17)%>><%=rs.getString(18)%></option>
		        <option value=<%=rs.getString(19)%>><%=rs.getString(20)%></option>
		         <option value=<%=rs.getString(21)%>><%=rs.getString(22)%></option>
		          <option value=<%=rs.getString(23)%>><%=rs.getString(24)%></option>
		<% }
		 con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>