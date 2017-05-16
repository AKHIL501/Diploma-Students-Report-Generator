<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%><div class="wrapper row7">
	<br>
	<br>
	<div class="sectiontitle">
		<center>
			<table>
				<form action="" method="post">
				    <tr>
				    <td colspan="2">Login here:</td>
				    </tr>
					<tr>
						<td>user name:</td>
						<td><input type="text" name="username" required="required"></td>
					</tr>
					<tr>
						<td>password:
						<td><input type="password" name="password" required="required"></td>
					</tr>

					<tr>
						<td><input type="reset" value="reset"></td>
						<td><input type="submit" value="login"></td>
					</tr>

				</form>
			</table>
		</center>
	</div>
</div>
<%@ page import="java.sql.*"%>

<%
	try {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");

		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery(
				"select * from login where userid='" + username + "' and password='" + password + "'");
		String position = "";
		while (rs.next()) {

			session.setAttribute("username", username);

			position = rs.getString(6);

		}
		if (position.equals("admin")) {
			response.sendRedirect("AdminBlog.jsp");
		} else if (position.equals("user")) {
			response.sendRedirect("userblog.jsp");
		}

	}

	catch (Exception e)

	{
		out.print("Exception::" + e);
	}
%>
