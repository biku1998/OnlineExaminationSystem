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
 String c = request.getParameter("course");
String t  = request.getParameter("tech");
String lg = request.getParameter("lgrade");
String hg = request.getParameter("hgrade");
String py = request.getParameter("passyear");
String g = request.getParameter("gen");
String fg= lg+"-"+hg;


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://127.0.0.1:3307/projectjava","root","root");

int lgr = Integer.parseInt(lg);
int hgr= Integer.parseInt(hg);

String name="";
String email="";
String city="";
String contact="";
String exam="";
String education="";
String passout="";
String gender="";


if(g.equalsIgnoreCase("others")){
	
	PreparedStatement ps = conn.prepareStatement(
			"select * from studentinfo where education =? and exam =? and passout=?   and grade >= ? and grade <= ?");

					ps.setString(1, c);
					ps.setString(2, t);
					ps.setString(3, py);
					ps.setInt(4, lgr);
					ps.setInt(5, hgr);


					ResultSet rs = ps.executeQuery();
					out.println("<table border=4  class=responstable align=center >");
					
					while(rs.next()){
						
						 name = rs.getString("name");
						email = rs.getString("email");
						//gender = rs.getString("gender");
						city = rs.getString("city");
						contact = rs.getString("contact");
						education = rs.getString("education");
						exam = rs.getString("exam");
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
						out.print("city");
						out.println("</td>");
						out.println("<td>");
						out.println(city);
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
						out.print("exam");
						out.println("</td>");
						out.println("<td>");
						out.println(exam);
						out.println("</td>");
						out.println("</tr>");


					    
						out.println("<tr>");
						out.println("<td>");
						out.print("passout");
						out.println("</td>");
						out.println("<td>");
						out.println(passout);
						out.println("--------------");
						out.println("</td>");
						out.println("</tr>");
						


					} 
					out.println("</table>");
					out.println("<script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>");
					
					
					
	
}
else{



PreparedStatement ps = conn.prepareStatement(
"select * from studentinfo where education =? and exam =? and passout=? and gender=?  and grade >= ? and grade <= ?");

ps.setString(1, c);
ps.setString(2, t);
ps.setString(3, py);
ps.setString(4, g);
ps.setInt(5, lgr);
ps.setInt(6, hgr);



ResultSet rs = ps.executeQuery();
out.println("<table border=4  class=responstable align=center >");


while(rs.next()){
	
	 name = rs.getString("name");
	email = rs.getString("email");
	gender = rs.getString("gender");
	city = rs.getString("city");
	contact = rs.getString("contact");
	education = rs.getString("education");
	exam = rs.getString("exam");
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
	out.print("Gender");
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
	out.print("education");
	out.println("</td>");
	out.println("<td>");
	out.println(education);
	out.println("</td>");
	out.println("</tr>");
     
	out.println("<tr>");
	out.println("<td>");
	out.print("exam");
	out.println("</td>");
	out.println("<td>");
	out.println(exam);
	out.println("</td>");
	out.println("</tr>");


    
	out.println("<tr>");
	out.println("<td>");
	out.print("passout");
	out.println("</td>");
	out.println("<td>");
	out.println(passout);
	out.println("--------------");
	out.println("</td>");
	out.println("</tr>");
	


}
out.println("</table>");
out.println("<script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>");



}

out.println("<a href= companypanel.jsp><button>Exit</button></a>");
/*
out.println(name);
out.println(email);
out.println(gender);
out.println(city);
out.println(contact);
out.println(passout);
out.println(name);
out.println(name);
out.println(name);
*/
/*
out.println("<table border=4 align=center >");
out.println("<tr>");
out.println("<td>");
out.println("course");
out.println("</td>");
out.println("<td>");
out.println(course);
out.println("</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<td>");
out.print("technology");
out.println("</td>");
out.println("<td>");
out.println(technology);
out.println("</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>");
out.print("passing year");
out.println("</td>");
out.println("<td>");
out.println(passyear);
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

out.println("</table>");
*/




%>



