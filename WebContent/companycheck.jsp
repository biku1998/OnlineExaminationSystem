	<%@ page import="java.sql.*" %>
	<%@ page import="beans.companyname"%>
	<jsp:useBean id="c" class="beans.companyname"/>
	<jsp:setProperty property="*" name="c"/>
	
	<% 
session.setAttribute("user",c);
%>
<% 
companyname compny = (companyname )session.getAttribute("user");



String u = compny.getCompname();
String p = compny.getPassword();

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st = conn.prepareStatement("select * from companyinfo where comname=? and password=?");
st.setString(1, u);
st.setString(2, p);
ResultSet rs = st.executeQuery();
if(rs.next()){
	%>
	<% response.sendRedirect("companypanel.jsp"); %>
	<%
	
}else{
	out.println("<b>Login Failed Try Again!!!!</b>");
	
	
}




%>