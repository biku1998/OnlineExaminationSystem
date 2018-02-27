<%@ page import="java.sql.*"%>


<% 
String[] ss = request.getParameterValues("ch");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
//PreparedStatement st = conn.prepareStatement("select * from adminfo where userid=? and password=?");
//st.setString(1, u);
//st.setString(2, p);
//ResultSet rs = st.executeQuery();
for(String i : ss) {
	//out.println(i);
	
	PreparedStatement st = conn.prepareStatement("delete from addques where id =?");
st.setString(1, i);

int r = st.executeUpdate();

}
%>
<%

response.sendRedirect("deletequestion.jsp");

%>



