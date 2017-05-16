<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ include file="SH.html"%>
<center>
	<%
		String sem1 = request.getParameter("sem");
		int sem = Integer.parseInt(sem1);
		String branch = request.getParameter("branch");
		String year = request.getParameter("year");
		String t = year + "%" + branch + "%";
		int f1 = 0, f2 = 0, f3 = 0, f4 = 0, f5 = 0, f6 = 0, f7 = 0, f8 = 0, f9 = 0, f10 = 0;
		int sr = 0;
		int count = 0;
		String semname = request.getParameter("semname");
		String branchname = request.getParameter("branchname");
		int y = 2000 + Integer.parseInt(year);
	%>
	<br>
	<table>
		<tr>
			<th>Branch:<%=branchname%></th>
			<th>Semester:<%=semname%></th>
			<th>Year:<%=y%></th>
		</tr>
	</table>
	<table border="1" cellpadding="5">
		<tr>
			<th>subject name</th>
			<th>Number of Failures</th>
		</tr>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
				PreparedStatement ps = con.prepareStatement(
						"select p1,p2,p3,p4,p5,p6,p7,p8,p9,p10 from results where sem=? and pin like ?");
				ps.setInt(1, sem);
				ps.setString(2, t);
				ResultSet rs = (ResultSet) ps.executeQuery();
				while (rs.next()) {
					if (rs.getString(1).equalsIgnoreCase("F")) {
						f1++;
					}
					if (rs.getString(2).equalsIgnoreCase("F")) {
						f2++;
					}
					if (rs.getString(3).equalsIgnoreCase("F")) {
						f3++;
					}
					if (rs.getString(4).equalsIgnoreCase("F")) {
						f4++;
					}
					if (rs.getString(5).equalsIgnoreCase("F")) {
						f5++;
					}
					if (rs.getString(6).equalsIgnoreCase("F")) {
						f6++;
					}
					if (rs.getString(7).equalsIgnoreCase("F")) {
						f7++;
					}
					if (rs.getString(8).equalsIgnoreCase("F")) {
						f8++;
					}
					if (rs.getString(9).equalsIgnoreCase("F")) {
						f9++;
					}
					if (rs.getString(10).equalsIgnoreCase("F")) {
						f10++;
					}
					if (rs.getString(1).equalsIgnoreCase("F") || rs.getString(2).equalsIgnoreCase("F")
							|| rs.getString(3).equalsIgnoreCase("F") || rs.getString(4).equalsIgnoreCase("F")
							|| rs.getString(5).equalsIgnoreCase("F") || rs.getString(6).equalsIgnoreCase("F")
							|| rs.getString(7).equalsIgnoreCase("F") || rs.getString(8).equalsIgnoreCase("F")
							|| rs.getString(9).equalsIgnoreCase("F") || rs.getString(10).equalsIgnoreCase("F")) {
						sr++;

					}
					count++;
				}

				PreparedStatement ps1 = con.prepareStatement(
						"select sn1,sn2,sn3,sn4,sn5,sn6,sn7,sn8,sn9,sn10 from subjects where sem=? and branch=? and year=? ");
				ps1.setInt(1, sem);
				ps1.setString(2, branch);
				ps1.setString(3, year);
				ResultSet rs1 = (ResultSet) ps1.executeQuery();
				while (rs1.next()) {
		%>
		<tr>
			<td><%=rs1.getString(1)%></td>
			<td><%=f1%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(2)%></td>
			<td><%=f2%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(3)%></td>
			<td><%=f3%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(4)%></td>
			<td><%=f4%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(5)%></td>
			<td><%=f5%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(6)%></td>
			<td><%=f6%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(7)%></td>
			<td><%=f7%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(8)%></td>
			<td><%=f8%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(9)%></td>
			<td><%=f9%></td>
		</tr>
		<tr>
			<td><%=rs1.getString(10)%></td>
			<td><%=f10%></td>
		</tr>
		<%
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	<table>
		<tr>
			<th>Total Number of Students:<%=count%>
			</th>
			<th>Total Number of Failures:<%=sr%>
			</th>
	</table>
</center>