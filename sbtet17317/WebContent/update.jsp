<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="UH.html"%>
<%@page import="java.sql.*"%>
<script type="text/javascript" src="./js/jquery-3.1.0.min.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {

				$("#sem").change(
						function() {

							$.ajax({

								url : "./forwardPage1.jsp?pin="
										+ $("#pin").val() + "&sem="
										+ $("#sem").val(),

								success : function(result) {

									$("#subj").html(result);

								}

							});

						});

			});
</script>
<br>
<form action="update2.jsp" method="get">
	<center><table>
		<tr>
			<td><input type="text" name="pin" id="pin" placeholder="EnterPin Number:"></td>
			<td>
				 <select name="sem" id="sem">
					<option>--Select Sem--</option>
					<option value="1">First Sem</option>
					<option value="2">Second Sem</option>
					<option value="3">Third Sem</option>
					<option value="4">Fourth Sem</option>
					<option value="5">Fifth Sem</option>
					<option value="6">Overall</option>
			</select></td>
			<td><select id="subj" name="subj"><option>---Select Subject---</select></td>
			<td><input type="text" name="marks" placeholder="Enter Change marks:"></td>
			<td><select id="subj" name="subj">---Select Subject---</select></td>
			<td><input type="text" name="marks" placeholder="Enter Change Marks"></td>
			<td><input type="text" name="p" placeholder="Enter P/F:"></td>
		<td> <input type="submit"></td>
		</tr>
	</table>
	<center>
</form>