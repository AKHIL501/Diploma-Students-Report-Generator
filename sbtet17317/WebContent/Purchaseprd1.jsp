<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PrdDet</title>
<script src="js\jquery-3.1.0.min.js"></script>
</head>
<body>
<%


try{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = (Connection) DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/diploma", "root", "");
	String Sem[]=request.getParameterValues("sem");
	String PinNum[]=request.getParameterValues("pin");
	
	String Sub1[]=request.getParameterValues("m1");
	String P1[]=request.getParameterValues("p1");
	String Sub2[]=request.getParameterValues("m2");
	String P2[]=request.getParameterValues("p2");
	String Sub3[]=request.getParameterValues("m3");
	String P3[]=request.getParameterValues("p3");
	String Sub4[]=request.getParameterValues("m4");
	String P4[]=request.getParameterValues("p4");
	String Sub5[]=request.getParameterValues("m5");
	String P5[]=request.getParameterValues("p5");
	String Sub6[]=request.getParameterValues("m6");
	String P6[]=request.getParameterValues("p6");
	String Sub7[]=request.getParameterValues("m7");
	String P7[]=request.getParameterValues("p7");
	String Sub8[]=request.getParameterValues("m8");
	String P8[]=request.getParameterValues("p8");
	String Sub9[]=request.getParameterValues("m9");
	String P9[]=request.getParameterValues("p9");
	String Sub10[]=request.getParameterValues("m10");
	String P10[]=request.getParameterValues("p10");
	//String s=(String)session.getAttribute("username");



for (int i=0;i<PinNum.length;i++)
	
{
	PreparedStatement stmt=con.prepareStatement("insert into results values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	stmt.setString(1,Sem[i]);
	stmt.setString(2,PinNum[i]);
	stmt.setString(3,Sub1[i]);
	stmt.setString(4,P1[i]);
	stmt.setString(5,Sub2[i]);
	stmt.setString(6,P2[i]);
	stmt.setString(7,Sub3[i]);
	stmt.setString(8,P3[i]);
	stmt.setString(9,Sub4[i]);
	stmt.setString(10,P4[i]);
	stmt.setString(11,Sub5[i]);
	stmt.setString(12,P5[i]);
	stmt.setString(13,Sub6[i]);
	stmt.setString(14,P6[i]);
	stmt.setString(15,Sub7[i]);
	stmt.setString(16,P7[i]);
	stmt.setString(17,Sub8[i]);
	stmt.setString(18,P8[i]);
	stmt.setString(19,Sub9[i]);
	stmt.setString(20,P9[i]);
	stmt.setString(21,Sub10[i]);
	stmt.setString(22,P10[i]);
	
	
	int x=stmt.executeUpdate();

	/* if(x!=0)
	{	
		response.sendRedirect("User1.jsp");    } */
}}

catch(Exception e){
System.out.println(e);

}

%>
</body>
</html>