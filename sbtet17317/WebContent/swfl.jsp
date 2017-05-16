<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%>

<div class="wrapper row7">
	<div class="sectiontitle">
		<center>
			<!-- 	<h1></h1>
		 -->
			<%
				String sem1 = request.getParameter("sem");
				int sem = Integer.parseInt(sem1);
				String branch = request.getParameter("branch");
				String year = request.getParameter("year");
				String subj = request.getParameter("subj");
				String sub = request.getParameter("sub");
				String semname = request.getParameter("semname");
				String branchname = request.getParameter("branchname");
			%>
			<br>
			<table>
				<tr>
					<th colspan="5" align="center">Failure List</th>
				</tr>
				<tr>
					<th><b>Subject:</b><%=subj%></th>
					<th><h>Semester:</b><%=semname%></th>
					<th><b>Branch:</b><%=branchname%></th>
				</tr>
			</table>
		</center>
		<center>
			<br> 

			<table border="1" cellpadding="5">
				<tr>
					<th>s.no</th>
					<th>pin number</th>
					<th>marks</th>
				</tr>
				<%
					int nf = 0;
					String t = year + "%" + branch + "%";
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");

						if (subj.contains("01")) {
							PreparedStatement ps = con
									.prepareStatement("select p1,pin,m1 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("02")) {
							PreparedStatement ps = con
									.prepareStatement("select p2,pin,m2 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("03")) {
							PreparedStatement ps = con
									.prepareStatement("select p3,pin,m3 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("04")) {
							PreparedStatement ps = con
									.prepareStatement("select p4,pin,m4 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("05")) {
							PreparedStatement ps = con
									.prepareStatement("select p5,pin,m5 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("06")) {
							PreparedStatement ps = con
									.prepareStatement("select p6,pin,m6 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("07")) {
							PreparedStatement ps = con
									.prepareStatement("select p7,pin,m7 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("08")) {
							PreparedStatement ps = con
									.prepareStatement("select p8,pin,m8 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("09")) {
							PreparedStatement ps = con
									.prepareStatement("select p9,pin,m9 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						if (subj.contains("10")) {
							PreparedStatement ps = con
									.prepareStatement("select p10,pin,m10 from results where sem=? and pin like ?");
							ps.setInt(1, sem);
							ps.setString(2, t);
							ResultSet rs = (ResultSet) ps.executeQuery();
							while (rs.next()) {
								if (rs.getString(1).equalsIgnoreCase("F")) {
									nf++;
				%>
				<tr>
					<td><%=nf%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<%
					}
							}
						}
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			
			<tr><th colspan="3" >
				Total Number of Failures:<%=nf%></th></tr>
				</table>
		</center>
	</div>
</div>
