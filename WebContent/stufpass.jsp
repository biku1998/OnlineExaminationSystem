<%@ page import="java.sql.*"  %>


<%
String em =  request.getParameter("email");
String secques = request.getParameter("sq");
String secans  = request.getParameter("ans");
String passwrd="";
String eml="";

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st = conn.prepareStatement("select * from studentinfo where email=? and  secret_question=? and ans=?");
st.setString(1, em);
st.setString(2, secques);
st.setString(3, secans);
ResultSet rs = st.executeQuery();
if(rs.next()){
	
	
	 eml    = rs.getString("email");	
	 passwrd =	rs.getString("password");
	 out.println("<h3><i>");
	 out.println(eml);
	 out.println("</h3></i>");
	 out.println("<h3><i>Your Password Is </i></h3>");
	 out.println("[");
	 out.println(passwrd);
	 out.println("]");	
	 
	 out.println("<a href=student.html>Goto LoginPage.</a>");
	
	
}else{
	out.println("<b>No Record Found !!!!</b>");
	
	%>
	<jsp:include page="admin.html"/>
	<%
}





%>


