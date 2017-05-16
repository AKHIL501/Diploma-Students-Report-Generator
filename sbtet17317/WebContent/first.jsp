<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="UH.html"%>
<br>
<div class="wrapper row7">
	<div class="sectiontitle">
		<center>
			<form action="Purchaseprd.jsp" method="get" id="login">
				<table>
					<tr>
						<td>Select Sem: <select name="sem">
								<option value="1">First Sem</option>
								<option value="2">Second Sem</option>
								<option value="3">Third Sem</option>
								<option value="4">Fourth Sem</option>
								<option value="5">Fifth Sem</option>
								<option value="6">Overall</option>
						</select>
						</td>
						<td>Branch: <select name="branch">
								<option value="M">DME</option>
								<option value="EE">DEE</option>
								<option value="EC">DEC</option>
						</select></td>
						<td>Batch: <select name="year">
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
						</select></td>
						<td>Enter Regulation:<input type="text" name="reg"></td>
					</tr>
				</table>
				<center>
					<table>
						<tbody>
						<thead>
							<tr>
								<th>S.NO</th>
								<th>Subject code</th>
								<th>SubjectName</th>
							</tr>

						</thead>
						<tr class="dark">
							<td>1</td>
							<td><input type="text" name="s1"></td>
							<td><input type="text" name="sn1"></td>
						</tr>
						<tr class="light">
							<td>2</td>
							<td><input type="text" name="s2"></td>
							<td><input type="text" name="sn2"></td>
						</tr>
						<tr class="dark">
							<td>3</td>
							<td><input type="text" name="s3"></td>
							<td><input type="text" name="sn3"></td>
						</tr>
						<tr class="light">
							<td>4</td>
							<td><input type="text" name="s4"></td>
							<td><input type="text" name="sn4"></td>
						</tr>
						<tr class="dark">
							<td>5</td>
							<td><input type="text" name="s5"></td>
							<td><input type="text" name="sn5"></td>
						</tr>
						<tr class="light">
							<td>6</td>
							<td><input type="text" name="s6"></td>
							<td><input type="text" name="sn6"></td>
						</tr>

						<tr class="light">
							<td>7</td>
							<td><input type="text" name="s7"></td>
							<td><input type="text" name="sn7"></td>
						</tr>
						<tr class="dark">
							<td>8</td>
							<td><input type="text" name="s8"></td>
							<td><input type="text" name="sn8"></td>
						</tr>
						<tr class="light">
							<td>9</td>
							<td><input type="text" name="s9"></td>
							<td><input type="text" name="sn9"></td>
						</tr>
						<tr class="dark">
							<td>10</td>
							<td><input type="text" name="s10"></td>
							<td><input type="text" name="sn10"></td>
				    	</tr>
				    	<tr><td colspan="2"></td><td><input type="submit"></td></tr>
				</center>
				
			</form>
		</center>
		</tbody>
		</table>
	</div>