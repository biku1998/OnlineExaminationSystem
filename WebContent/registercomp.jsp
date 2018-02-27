	<%@ page import="java.sql.*" %>
	
<% 
String u = request.getParameter("compname");
String p = request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st = conn.prepareStatement("insert into companyinfo values(?,?)");
st.setString(1, u);
st.setString(2, p);
int r = st.executeUpdate();
if(r>0){
	%>
	<% response.sendRedirect("company.html"); %>
	<%
	
}else{
	out.println("<b>Login Failed Try Again!!!!</b>");
	
	
}



%>









