<!DOCTYPE html>
<html >
<head>
  
  
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="csstable/style.css">

  
</head>
</html>






<%@  page import="java.sql.*"   %>

<%

String key = request.getParameter("topic");
String t="";
t=key;
String a="all";
String name="";
String email="";
String city="";
String contact="";

String education="";
String passout="";
String gender="";

if(t.equalsIgnoreCase(a)){
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
			"root","root");


	Statement st = conn.createStatement();
	
	ResultSet rs = st.executeQuery("select *  from studentinfo ");
	out.println("<table border=4 align=center class=responstable >");
	
	while(rs.next()){

		 name = rs.getString("name");
		email = rs.getString("email");
		gender = rs.getString("gender");
		city = rs.getString("city");
		contact = rs.getString("contact");
		education = rs.getString("education");
		passout = rs.getString("passout");	
		
		out.println("<tr>");
		out.println("<td data-th=Driver details>");
		out.println("name");
		out.println("</td>");
		out.println("<td>");
		out.println(name);
		out.println("</td>");
		out.println("</tr>");


		out.println("<tr>");
		out.println("<td>");
		out.print("email");
		out.println("</td>");
		out.println("<td>");
		out.println(email);
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>");
		out.print("gender");
		out.println("</td>");
		out.println("<td>");
		out.println(gender);
		out.println("</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>");
		out.print("city");
		out.println("</td>");
		out.println("<td>");
		out.println(city);
		out.println("</td>");
		out.println("</tr>");
	     out.println("<tr>");
		out.println("<td>");
		out.print("contact");
		out.println("</td>");
		out.println("<td>");
		out.println(contact);
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>");
		out.print("education");
		out.println("</td>");
		out.println("<td>");
		out.println(education);
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>");
		out.print("passout");
		out.println("</td>");
		out.println("<td>");
		out.println(passout);
		out.println("==========");
		out.println("</td>");
		out.println("</tr>");

		}
	
	out.println("</table>");

	out.println("<script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>");

	}

else{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
			"root","root");
PreparedStatement ps = conn.prepareStatement("select * from studentinfo where exam = ?");
ps.setString(1, key);
ResultSet rs = ps.executeQuery();
out.println("<table border=4 align=center  class=responstable >");
while(rs.next()){

	 name = rs.getString("name");
	email = rs.getString("email");
	gender = rs.getString("gender");
	city = rs.getString("city");
	contact = rs.getString("contact");
	education = rs.getString("education");
	passout = rs.getString("passout");	
	
	
	
	

	out.println("<tr>");
	out.println("<td data-th=Driver details>");
	out.println("name");
	out.println("</td>");
	out.println("<td>");
	out.println(name);
	out.println("</td>");
	out.println("</tr>");


	out.println("<tr>");
	out.println("<td>");
	out.print("email");
	out.println("</td>");
	out.println("<td>");
	out.println(email);
	out.println("</td>");
	out.println("</tr>");

	out.println("<tr>");
	out.println("<td>");
	out.print("gender");
	out.println("</td>");
	out.println("<td>");
	out.println(gender);
	out.println("</td>");
	out.println("</tr>");

	out.println("<tr>");
	out.println("<td>");
	out.print("city");
	out.println("</td>");
	out.println("<td>");
	out.println(city);
	out.println("</td>");
	out.println("</tr>");
     out.println("<tr>");
	out.println("<td>");
	out.print("contact");
	out.println("</td>");
	out.println("<td>");
	out.println(contact);
	out.println("</td>");
	out.println("</tr>");
	
	out.println("<tr>");
	out.println("<td>");
	out.print("education");
	out.println("</td>");
	out.println("<td>");
	out.println(education);
	out.println("</td>");
	out.println("</tr>");
	
	out.println("<tr>");
	out.println("<td>");
	out.print("passout");
	out.println("</td>");
	out.println("<td>");
	out.println(passout);
	out.println("==========");
	out.println("</td>");
	out.println("</tr>");


	}

out.println("</table>");

out.println("<script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>");

	
	
}







%>