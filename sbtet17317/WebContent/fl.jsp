<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%>
<%@page import="java.sql.*"%>
<script type="text/javascript">
	function myNewFunction(sel) {
		/* alert(sel.options[sel.selectedIndex].text); */
		document.getElementsByName('semname')[0].value = sel.options[sel.selectedIndex].text;
	}
	function myNewFunction1(sel) {
		/* alert(sel.options[sel.selectedIndex].text); */
		document.getElementsByName('branchname')[0].value = sel.options[sel.selectedIndex].text;
	}
</script>
<div class="wrapper row7">
	<div class="sectiontitle">
		<!-- <h6 class="heading">BranchWise Failures</h6> -->
		<form action="fl1.jsp" method="get">
			<center>
			<br>
		<table><tr><th colspan="4">BranchWise Failures</th></tr>
		<tr><td> <select name="sem" id="sem"
								onChange="myNewFunction(this);">
									<option>--Select Sem--</option>
									<option value="1">First Sem</option>
									<option value="2">Second Sem</option>
									<option value="3">Third Sem</option>
									<option value="4">Fourth Sem</option>
									<option value="5">Fifth Sem</option>
									<option value="6">Overall</option>
							</select></td><td><select name="branch" id="branch"
								onChange="myNewFunction1(this);">
									<option>---Select Branch---</option>
									<option value="M">DME</option>
									<option value="EE">DEE</option>
									<option value="EC">DEC</option>
							</select></td>
							<td> <select name="year" id="year">
									<option>---Select Year---</option>
									<%
										try {
											Class.forName("com.mysql.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
											PreparedStatement pst1 = con.prepareStatement("select distinct year from subjects");
											ResultSet rs1 = (ResultSet) pst1.executeQuery();
											while (rs1.next()) {
									%>
									<option value=<%=rs1.getString(1)%>><%=rs1.getString(1)%></option>
									<%
										}
											con.close();
										} catch (SQLException e) {
											System.out.println(e);
										}
									%>
							</select></td><input type="hidden" name="semname"><input type="hidden" name="branchname">
							<td><input type="submit"></td>
							</tr></center>
		</table>
		<%-- <form action="fl1.jsp" method="get">
			<center>
				<nav id="mainav" class="hoc clear">
					<ul class="clear">
						<li><a> Select Sem: <select name="sem" id="sem"
								onChange="myNewFunction(this);">
									<option>--Select Sem--</option>
									<option value="1">First Sem</option>
									<option value="2">Second Sem</option>
									<option value="3">Third Sem</option>
									<option value="4">Fourth Sem</option>
									<option value="5">Fifth Sem</option>
									<option value="6">Overall</option>
							</select>
						</a></li>
						<li><a>Select Branch: <select name="branch" id="branch"
								onChange="myNewFunction1(this);">
									<option>---Select Branch---</option>
									<option value="M">DME</option>
									<option value="EE">DEE</option>
									<option value="EC">DEC</option>
							</select></a></li>
						<li><a> Select Batch: <select name="year" id="year">
									<option>---Select Year---</option>
									<%
										try {
											Class.forName("com.mysql.jdbc.Driver");
											Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
											PreparedStatement pst1 = con.prepareStatement("select distinct year from subjects");
											ResultSet rs1 = (ResultSet) pst1.executeQuery();
											while (rs1.next()) {
									%>
									<option value=<%=rs1.getString(1)%>><%=rs1.getString(1)%></option>
									<%
										}
											con.close();
										} catch (SQLException e) {
											System.out.println(e);
										}
									%>
							</select></a></li>
						<li><a><input type="hidden" name="semname"></a></li>
						<li><a><input type="hidden" name="branchname"></a></li>
						<li><a><input type="submit"></a></li>
					</ul>
				</nav>
			</center>
		</form> --%>
	</div>
</div>