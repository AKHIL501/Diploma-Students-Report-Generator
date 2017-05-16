<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ include file="SH.html"%>
<center>
	<%
		String sem1 = request.getParameter("sem");
		int sem = Integer.parseInt(sem1);
		String branch = request.getParameter("branch");
		String year = request.getParameter("year");
		String subj = request.getParameter("subj");
		String semname = request.getParameter("semname");
		String branchname = request.getParameter("branchname");
		String sub = request.getParameter("sub");
		int p = 0, total = 0;
		String t = year + "%" + branch + "%";
	%><table><tr>
	<th>
		SUBJECT:
		<%=sub%></th>
	<th>
		BRANCH:
		<%=branchname%></th>
	<th>
		SEMESTER:
		<%=semname%></th>
		<br>
	<table border="1" cellpadding="5">
		<tr>
			<th>s.no</th>
			<th>pin number</th>
			<th>subject Marks</th>
			<th>Pass/Fail</th>
		</tr>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");

				if (subj.contains("01")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m1,p1 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			</td>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("02")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m2,p2 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			</td>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("03")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m3,p3 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			</td>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("04")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m4,p4 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			</td>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("05")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m5,p5 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%>
			</th>
			<td><%=rs.getString(2)%>
			</th>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			
			</th>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("06")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m6,p6 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%>
			</th>
			<td><%=rs.getString(2)%>
			</th>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			
			</th>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("07")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m7,p7 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%>
			</th>
			<td><%=rs.getString(2)%>
			</th>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			
			</th>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("08")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m8,p8 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%>
			</th>
			<td><%=rs.getString(2)%>
			</th>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			
			</th>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("09")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m9,p9 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%>
			</th>
			<td><%=rs.getString(2)%>
			</th>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			
			</th>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				if (subj.contains("10")) {
					PreparedStatement ps = con
							.prepareStatement("select pin, m10,p10 from results where sem=? and pin like ?");
					ps.setInt(1, sem);
					ps.setString(2, t);
					ResultSet rs = (ResultSet) ps.executeQuery();
					while (rs.next()) {
						total++;
		%>
		<tr>
			<td><%=total%>
			<td><%=rs.getString(1)%>
			</th>
			<td><%=rs.getString(2)%>
			</th>
			<td>
				<%
					if (rs.getString(3).equalsIgnoreCase("F")) {
				%><font color="red"><%=rs.getString(3)%></font> <%
 	} else {
 %><%=rs.getString(3)%> <%
 	}
 %>
			</td>
		</tr>
		<%
			if ("p".equalsIgnoreCase(rs.getString(3))) {
							p++;
						}
					}
				}
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
		</table>
	<table><tr>
	<th>
		Total number of Students:<%=total%></th>
	<th>
		Total number of Students passed:<%=p%></th>
	<th>
		Pass percentage:<%=((float) p / total) * 100%></th>
	</tr></table>	
</center>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a> 