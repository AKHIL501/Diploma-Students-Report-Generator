<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<html>
	<head>
	
	<script language="javascript">
function fncSubmit()
{

	if(document.ChangePasswordForm.OldPassword.value == "")
	{
		alert('Please input old password');
		document.ChangePasswordForm.OldPassword.focus();
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value == "")
	{
		alert('Please input Password');
		document.ChangePasswordForm.newpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.conpassword.value == "")
	{
		alert('Please input Confirm Password');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
	{
		alert('Confirm Password Not Match');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

		document.ChangePasswordForm.submit();
}
</script>
</head>
<%@ page import="java.sql.*"%>

<%@include file="AH.html"%>
<br>
<br>
<center>

	<table>
	<form name="ChangePasswordForm" method="post" action="" OnSubmit="return fncSubmit();">

			<tr>
				<td>User Name</td>
				<td><input name="username" type="text" id="uname"
					value="<%out.println(session.getAttribute("username"));%>"
					size="20" readonly></td>
			</tr>
			<tr>
				<td>Enter Current Password</td>
				<td><input name="OldPassword" type="password" id="OLDpwd"
					placeholder="Enter Current Password"></td>
			</tr>
			<tr>
				<td>Enter New Password</td>
				<td><input name="newpassword" type="password" id="newpassword"
					placeholder="Enter New Password"></td>
			</tr>
			<tr>
				<td>Enter Confirm Password</td>
				<td><input name="conpassword" type="password" id="conpassword"
					placeholder="Confirm Password"></td>
			</tr>
			<tr>
			
				<td colspan="2" align="center"><input type="submit"
					name="Submit" value="Update"></td>
			</tr>


		</form>
	</table>
</center>
<%@page import="java.sql.*"%>

<%
		try {

			String username = request.getParameter("username");
			String OldPassword = request.getParameter("OldPassword");
			String Newpass = request.getParameter("newpassword");
			String conpass = request.getParameter("conpassword");
			String pass = "";
			int id = 0;

			if (username.equals(null) || conpass.equals(null) || OldPassword.equals(null) || conpass.equals(null)) {

			} else {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");

				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(
						"select * from login where userid= '" + username + "' and password='" + OldPassword + "'");
				if (rs.next()) {
					pass = rs.getString("password");
				}
				if (Newpass.equals(conpass)) {
				 	if (pass.equals(OldPassword)) {
						st = con.createStatement();
						int i = st.executeUpdate(
								"update login set password='" + Newpass + "' where userid='" + username + "'");
						out.println("Password changed successfully");
						st.close();
						con.close();
					} else {
						out.println("Old Password doesn't match");
					}

				}

			}
		} catch (Exception e) {
			out.println("Enetr Details");
		}
	%>

</html>

