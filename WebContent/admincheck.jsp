	<%@ page import="java.sql.*" %>
<% 
String u = request.getParameter("userid");
String p = request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st = conn.prepareStatement("select * from adminfo where userid=? and password=?");
st.setString(1, u);
st.setString(2, p);
ResultSet rs = st.executeQuery();
if(rs.next()){
	%>
	<% response.sendRedirect("AdminPanel.html"); %>
	<%
	
}else{
	out.println("<b>Login Failed Try Again!!!!</b>");
	
	%>
	<jsp:include page="admin.html"/>
	<%
}




%>