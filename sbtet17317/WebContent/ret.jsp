<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script>
function myFunction() {
    var myWindow = window.open("", "", "width=200,height=100");
}
</script>


<div class="wrapper row7">
	<div class="sectiontitle">
<br>
		<form method="get" action="ret3.jsp" id="login" >
			<center>
				<table>
					<tr><!-- <th></th> -->
						<th colspan="4">----------------------------------Student Result----------------------------------</th>
						
						<!-- <th></th> -->
					</tr>
					<tr>
						<td><input type="text" name="pinnum"
							placeholder="EnterPinNumber:" required="required"></td>
						<td><select name="sem" required="required">
								<option value="">--Select Sem--</option>
								<option value="1">First Sem</option>
								<option value="2">Second Sem</option>
								<option value="3">Third Sem</option>
								<option value="4">Fourth Sem</option>
								<option value="5">Fifth Sem</option>
								<option value="6">Overall</option>
						</select></td>
						<td><select name="branch" required="required">
								<option value="">--Select Branch--</option>
								<option value="M">DME</option>
								<option value="EE">DEE</option>
								<option value="EC">DEC</option>
						</select></td>

						<td><input type="submit"></td>
					</tr>
				</table>
			</center>
		</form>

	</div>

</div>
