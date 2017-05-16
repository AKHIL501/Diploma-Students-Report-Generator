<%@ page import="java.sql.*" %>
<%@ include file="UH.html" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<script src="js\jquery-3.1.0.min.js"></script>
 
</head>
<body>
<%--  <jsp:include page="User.jsp"></jsp:include>
 --%>
  <br><br>
 <div id="logbg_div"> 

<script>
<%
		String sem=request.getParameter("sem");
		String branch=request.getParameter("branch");
		String year=request.getParameter("year");
		String reg=request.getParameter("reg");
		String s1=request.getParameter("s1");
		String sn1=request.getParameter("sn1");
		String s2=request.getParameter("s2");
		String sn2=request.getParameter("sn2");
		String s3=request.getParameter("s3");
		String sn3=request.getParameter("sn3");
		String s4=request.getParameter("s4");
		String sn4=request.getParameter("sn4");
		String s5=request.getParameter("s5");
		String sn5=request.getParameter("sn5");
		String s6=request.getParameter("s6");
		String sn6=request.getParameter("sn6");
		String s7=request.getParameter("s7");
		String sn7=request.getParameter("sn7");
		String s8=request.getParameter("s8");
		String sn8=request.getParameter("sn8");
		String s9=request.getParameter("s9");
		String sn9=request.getParameter("sn9");
		String s10=request.getParameter("s10");
		String sn10=request.getParameter("sn10");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/diploma", "root", "");
			
		      PreparedStatement stmt=con.prepareStatement("insert into subjects values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		  	stmt.setString(1,sem);
		  	stmt.setString(2,branch);
		  	stmt.setString(3,year);
		  	stmt.setString(4,reg);
		  	stmt.setString(5,s1);
		  	stmt.setString(6,sn1);
		  	stmt.setString(7,s2);
		  	stmt.setString(8,sn2);
		  	stmt.setString(9,s3);
		  	stmt.setString(10,sn3);
		  	stmt.setString(11,s4);
		  	stmt.setString(12,sn4);
		  	stmt.setString(13,s5);
		  	stmt.setString(14,sn5);
		  	stmt.setString(15,s6);
		  	stmt.setString(16,sn6);
		  	stmt.setString(17,s7);
		  	stmt.setString(18,sn7);
		  	stmt.setString(19,s8);
		  	stmt.setString(20,sn8);
		  	stmt.setString(21,s9);
		  	stmt.setString(22,sn9);
		  	stmt.setString(23,s10);
		  	stmt.setString(24,sn10);
		  	stmt.executeUpdate();
		}catch(Exception e){
				System.out.println(e);

				}
%> 
function arrangeSno()
 
    {
           var i=0;
            $('#pTable tr').each(function() {
                $(this).find(".sNo").html(i);
                i++;
             });
 
    }
 
$(document).ready(function(){
$('#addButId').click(function(){
                   var sno=$('#pTable tr').length;
                       trow=  "<tr><td class='sNo'>"+sno+"</td>"+
                       "<td><input name='sem' type='text'size='3' value=<%=sem%> readonly></td>"+
                           "<td><input name='pin' type='text'></td>"+
                          
			   //"<td><input name='subcode' type='text'></td>"+
			   "<td><input name='m1' type='text' size='3'></td>"+
			   "<td><input name='p1' type='text' size='3' value='P'></td>"+
			   "<td><input name='m2' type='text' size='3'></td>"+
			   "<td><input name='p2' type='text' size='3' value='P'></td>"+
			   "<td><input name='m3' type='text' size='3'></td>"+
			   "<td><input name='p3' type='text' size='3'value='P'></td>"+
			   "<td><input name='m4' type='text' size='3'></td>"+
			   "<td><input name='p4' type='text' size='3'value='P'></td>"+
			   "<td><input name='m5' type='text' size='3'></td>"+
			   "<td><input name='p5' type='text' size='3'value='P'></td>"+
			   "<td><input name='m6' type='text' size='3'></td>"+
			   "<td><input name='p6' type='text' size='3'value='P'></td>"+
			   "<td><input name='m7' type='text' size='3'></td>"+
			   "<td><input name='p7' type='text' size='3'value='P'></td>"+
			   "<td><input name='m8' type='text' size='3'></td>"+
			   "<td><input name='p8' type='text' size='3'value='P'></td>"+
			   "<td><input name='m9' type='text' size='3'></td>"+
			   "<td><input name='p9' type='text' size='3'value='P'></td>"+
			   "<td><input name='m10' type='text' size='3'></td>"+
			   "<td><input name='p10' type='text' size='3'value='P'></td>"+
			    "<td><button type='button' class='rButton'>RemoveRow</button></td></tr>";
                      $('#pTable').append(trow);
                    });
                     });
 
$(document).on('click', 'button.rButton', function () {
       $(this).closest('tr').remove();
       arrangeSno();
     return false;
 });
 
/*$(".rButton").live('click', function(){
    $(this).closest('tr').remove();
    arrangeSno();
     return false;
});*/
 
 </script>
 
 
<form method="get" action="Purchaseprd1.jsp">
 
     <center>
    <table id="pTable">
        <tbody>
        <tr>
            <td>S.No</td>
            <td>Sem</td>
            <td>PinNum</td>
            <td><%=s1 %></td>
            <td>P/F</td>
             <td><%=s2 %></td>
            <td>P/F</td>
             <td><%=s3 %></td>
            <td>P/F</td>
             <td><%=s4 %></td>
            <td>P/F</td>
             <td><%=s5 %></td>
            <td>P/F</td>
             <td><%=s6 %></td>
            <td>P/F</td>
             <td><%=s7 %></td>
            <td>P/F</td>
             <td><%=s8 %></td>
            <td>P/F</td>
             <td><%=s9 %></td>
            <td>P/F</td>
             <td><%=s10 %></td>
            <td>P/F</td>
            
        </tr>
 
    </tbody></table>
    <br/>
        <input id="addButId" type="button" value="Add Students">
 
    <br><input type="button" value="cancel"><input type="submit" value="Submit">
	</center></form>
       
       </div>
</body>
</html>