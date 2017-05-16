<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sem1=request.getParameter("sem");
int sem=Integer.parseInt(sem1);
String pin=request.getParameter("pin");
String subj=request.getParameter("subj");
String marks=request.getParameter("marks");
String p=request.getParameter("p");
p=p.toUpperCase();
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/diploma", "root", "");
	if(subj.contains("01"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m1=?,p1=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("02"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m2=?,p2=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("03"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m3=?,p3=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("04"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m4=?,p4=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("05"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m5=?,p5=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("06"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m6=?,p6=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("07"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m7=?,p7=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("08"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m8=?,p8=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("09"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m9=?,p9=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}
	if(subj.contains("10"))
	{
		PreparedStatement ps = con
				.prepareStatement("UPDATE results SET m10=?,p10=? WHERE pin=? and sem=? ");
		ps.setString(1,marks);
		ps.setString(2,p);
		ps.setString(3,pin);
		ps.setInt(4,sem);
		int e= ps.executeUpdate();
		 if(e==1){%>
			<div> updated Successfully</div>
		<%  }
		
			
	}con.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>