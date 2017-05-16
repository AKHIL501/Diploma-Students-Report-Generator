<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%>
<%@ page import="java.sql.*"%>
<%
	String pin = request.getParameter("pinnum");
%>

<h1></h1>
<%
	String sem1 = request.getParameter("sem");
	String branch = request.getParameter("branch");
	int total = 0;
	int blog = 0;
	int ib = 0;
	float per = 0;
	int nolr = 0;
	int sem = 0;
	int srinu = Integer.parseInt(sem1);
	int i = 0;
	int ot = 0;
	int oblog = 0;
	String year = pin.substring(0, Math.min(pin.length(), 2));
	if (srinu == 6) {
		i = 1;
	} else {
		i = srinu;
	}
	for (; i <= srinu; i++) {
		try {
			sem = i;
			ib = 0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
			PreparedStatement pst1 = con
					.prepareStatement("select * from subjects where sem=? and branch=? and year=?");
			pst1.setInt(1, sem);
			pst1.setString(2, branch);
			pst1.setString(3, year);
			ResultSet rs1 = (ResultSet) pst1.executeQuery();
			rs1.first();
			String sn1 = rs1.getString("sn1");
			String s1 = rs1.getString("s1");
			String sn2 = rs1.getString("sn2");
			String s2 = rs1.getString("s2");
			String sn3 = rs1.getString("sn3");
			String s3 = rs1.getString("s3");
			String sn4 = rs1.getString("sn4");
			String s4 = rs1.getString("s4");
			String sn5 = rs1.getString("sn5");
			String s5 = rs1.getString("s5");
			String sn6 = rs1.getString("sn6");
			String s6 = rs1.getString("s6");
			String sn7 = rs1.getString("sn7");
			String s7 = rs1.getString("s7");
			String sn8 = rs1.getString("sn8");
			String s8 = rs1.getString("s8");
			String sn9 = rs1.getString("sn9");
			String s9 = rs1.getString("s9");
			String sn10 = rs1.getString("sn10");
			String s10 = rs1.getString("s10");
			PreparedStatement pst = con.prepareStatement("select * from results where pin=? and sem=?");
			pst.setString(1, pin);
			pst.setInt(2, sem);
			ResultSet rs = (ResultSet) pst.executeQuery();

			while (rs.next()) {
				String pin1 = rs.getString(2);
				int semm = rs.getInt(1);
				String m1 = rs.getString(3);
				String p1 = rs.getString(4);
				if (p1.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m2 = rs.getString(5);
				String p2 = rs.getString(6);
				if (p2.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m3 = rs.getString(7);
				String p3 = rs.getString(8);
				if (p3.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m4 = rs.getString(9);
				String p4 = rs.getString(10);
				if (p4.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m5 = rs.getString(11);
				String p5 = rs.getString(12);
				if (p5.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m6 = rs.getString(13);
				String p6 = rs.getString(14);
				if (p6.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m7 = rs.getString(15);
				String p7 = rs.getString(16);
				if (p7.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m8 = rs.getString(17);
				String p8 = rs.getString(18);
				if (p8.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m9 = rs.getString(19);
				String p9 = rs.getString(20);
				if (p9.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				String m10 = rs.getString(21);
				String p10 = rs.getString(22);
				if (p10.equalsIgnoreCase("f")) {
					//blog++;
					ib++;
				}
				total = Integer.parseInt(m1) + Integer.parseInt(m2) + Integer.parseInt(m3)
						+ Integer.parseInt(m4) + Integer.parseInt(m5) + Integer.parseInt(m6)
						+ Integer.parseInt(m7) + Integer.parseInt(m8) + Integer.parseInt(m9)
						+ Integer.parseInt(m10);
				per = ((float) total / 1000) * 100;
%>
<%-- <%@ include file="ret.jsp"%>
 --%>
 <center>
	<table>
		<tr>
			<caption>
			</caption>
		</tr>
		<thead>
		<tr>
				<th class="text-left" colspan="4">-------------------Pin Number:<%=pin%>--------------------------</th>
			</tr>
			<tr>
				<th class="text-left">Subject Name</th>
				<th class="text-left">Subject Code</th>
				<th class="text-left">Marks</th>
				<th class="text-left">P/F</th>
			</tr>
		</thead>
		<tr>
			<td><%=sn1%></td>
			<td><%=s1%></td>
			<td><%=m1%></td>
			<td><%=p1%></td>
		</tr>
		<tr>
			<td><%=sn2%></td>
			<td><%=s2%></td>
			<td><%=m2%></td>
			<td><%=p2%></td>
		</tr>
		<tr>
			<td><%=sn3%></td>
			<td><%=s3%></td>
			<td><%=m3%></td>
			<td><%=p3%></td>
		</tr>

		<tr>
			<td><%=sn4%></td>
			<td><%=s4%></td>
			<td><%=m4%></td>
			<td><%=p4%></td>
		</tr>
		<tr>
			<td><%=sn5%></td>
			<td><%=s5%></td>
			<td><%=m5%></td>
			<td><%=p5%></td>
		</tr>
		<tr>
			<td><%=sn6%></td>
			<td><%=s6%></td>
			<td><%=m6%></td>
			<td><%=p6%></td>
		</tr>
		<tr>
			<td><%=sn7%></td>
			<td><%=s7%></td>
			<td><%=m7%></td>
			<td><%=p7%></td>
		</tr>
		<tr>
			<td><%=sn8%></td>
			<td><%=s8%></td>
			<td><%=m8%></td>
			<td><%=p8%></td>
		</tr>
		<tr>
			<td><%=sn9%></td>
			<td><%=s9%></td>
			<td><%=m9%></td>
			<td><%=p9%></td>
		</tr>
		<tr>
			<td><%=sn10%></td>
			<td><%=s10%></td>
			<td><%=m10%></td>
			<td><%=p10%></td>
		</tr>
		<tfoot>
			<tr>
				<th>backlogs are=<%=ib%></th>
				<th>percentage=<%=per%>
				</th>
				<th colspan="2">total=<%=total%>
				</th>

			</tr>
</table>
<table>
			<tr>

				<%
					}
						} catch (SQLException e) {
							System.out.println(e);
						}
				%>

				<%
					nolr++;
						ot += total;
						oblog += ib;
					}
					nolr = nolr * 1000;
				%>
				<%-- <td colspan="1">total=<%=total%>
				</td>
				 --%>
				<th colspan="1">Total Number of Backlogs are:<%=oblog%>
				</th>
				<th colspan="3">Aggregate:<%=((float) ot / nolr) * 100%>
				</th>
			</tr>
	</table>

	
</center>
