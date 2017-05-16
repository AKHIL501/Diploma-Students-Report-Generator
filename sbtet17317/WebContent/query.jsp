<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%>
<center>
	<br>
	<form action="" method="get">
		<table>
			<tr>
				<th colspan="3">------------------Submit your
					feedback----------------</th>
			</tr>
			<tr>
				<td>Enter Your Name:<input type="text" size="30" name="name"
					required="required"></td>
			</tr>
			<tr>
				<td>Pin Number:<input type="text" size="30" name="pin"
					required="required"></td>
			</tr>
			<tr>
				<td>Add Comment:</td>
			</tr>
			<tr>
				<td><textarea id="description"> Enter text here...</textarea></td>
				
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>

	</form>

</center>
<%-- <%@ page import="java.sql.*"%>


<%
   String name =request.getParameter("name");
String pin =request.getParameter("pin");

    Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/diploma", "root", "");
	Statement st = con.createStatement();
	int i = st.executeUpdate("insert into feedback values ('" + name + "','" + pin + "','" + text
			+ ")");
	if (i > 0) 
	{
%>
<script>
	window.location = "index.jsp";
	alert("Feed back Added Successfully.....!");
</script>
<%
	}else
	{
		%>
<script>
	window.location = "query.jsp";
	alert("Feed back Adding Failed.....!");
</script>
<%

	}
	

%> --%>
<%-- <form action="${addStudentUrl}" method="post"> 
Name:<input name="name" type="text" />
<br> 
<br> 
Email:<input name="email" type="text" />
<br> 
<br> 
Gender:
<br> 
<input type="radio" name="gender" value="1">Male<br>
<input type="radio" name="gender" value="2">Female
<br> 
Description: <textarea id="description"> Enter text here...</textarea>
String description = $("description").val();
<input type="submit" value="Add"/>  
</form>  --%>