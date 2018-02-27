	<%@ page import="java.sql.*" %>
<% 
String e = request.getParameter("emailid");
session.setAttribute("useremail", e);
String p = request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st = conn.prepareStatement("select * from studentinfo where email=? and password=?");
st.setString(1, e);
st.setString(2, p);
ResultSet rs = st.executeQuery();
if(rs.next()){
	
		session.setAttribute("email", rs.getString("email"));
		
	 response.sendRedirect("Exam.jsp");
	
	
	
}else{
	out.println("<b>invalid email/password</b>");
	%>
	<jsp:include page="student.html"/>
	<%
	
	
}




%>