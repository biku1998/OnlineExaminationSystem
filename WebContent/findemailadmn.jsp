<!DOCTYPE html>
<html >
<head>
  
  
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="csstable/style.css">

  
</head>
</html>





<%@ page import="java.sql.*" %>
<%


String email= request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");

PreparedStatement ps = conn.prepareStatement("select * from studentinfo where email= ? ");
ps.setString(1, email);

String n="";
String e="";
String g="";
String c="";
String co="";
ResultSet rs = ps.executeQuery();
while(rs.next()){
	
	 n = rs.getString("name");
	e = rs.getString("email");
	g = rs.getString("gender");
	c = rs.getString("city");
	co = rs.getString("contact");
	
}

out.println("<table border=4 align=center class=responstable >");
out.println("<tr>");
out.println("<td data-th=Driver details>");
out.println("name");
out.println("</td>");
out.println("<td>");
out.println(n);
out.println("</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>");
out.print("email");
out.println("</td>");
out.println("<td>");
out.println(e);
out.println("</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>");
out.print("gender");
out.println("</td>");
out.println("<td>");
out.println(g);
out.println("</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>");
out.print("city");
out.println("</td>");
out.println("<td>");
out.println(c);
out.println("</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>");
out.print("contact");
out.println("</td>");
out.println("<td>");
out.println(co);
out.println("</td>");
out.println("</tr>");

out.println("</table>");

out.println("<script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>");



%>




