<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="AH.html"%>
</head>
<br><br>
<div class="wrapper row7">
	<div id="featured_slide">

		<table align="center">
			<form action="" method="post">
				<tr>
					<td colspan="2" align="center">Add Users</td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username" placeholder="Enetr Username" required></td>
				</tr>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="userid"
						placeholder="Enetr UserId" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"
						placeholder="Enter Password" required></td>
				</tr>
				<tr>
					<td>Department</td>
					<td><select name="department" id="option" required>
							<option>--Department--</option>
							<option value="DECE">DECE</option>
							<option value="DEEE">DEEE</option>
							<option value="DME">DME</option>
					</select></td>
				</tr>
				<tr>
					<td>Designation</td>
					<td><select name="designation" id="option" required>
							<option>--Designation--</option>
							<option value="HOD">HOD</option>
							<option value="STAFF">STAFF</option>
					</select></td>
				</tr>
				<tr>
					<td>Role</td>
					<td><select name="position" id="option" required>
							<option>--Select Position--</option>
							<option value="admin">Admin</option>
							<option value="principal">Principal</option>
							<option value="user">User</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Add" style="color: white; background-color: #ff0099;"></td>
				</tr>
			</form>
		</table>

		<%@ page import="java.sql.*"%>

		<%
			try {
				String username = request.getParameter("username");
				String user = request.getParameter("userid");
				String pwd = request.getParameter("password");
				String dept = request.getParameter("department");
				String desig = request.getParameter("designation");
				String pos = request.getParameter("position");
				if (user.equals(null) || pwd.equals(null)) {

				} else {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
					Statement st = cn.createStatement();
					int i = st.executeUpdate("insert into login values ('" + username + "','" + dept + "','" + desig
							+ "','" + user + "','" + pwd + "','" + pos + "')");
					if (i > 0) {
						out.println("User added successfully");
					} else {
						out.println("User insertion failed try again");
					}
				}
			} catch (Exception e) {

			}
		%>
		<center>
	</div>

</div>