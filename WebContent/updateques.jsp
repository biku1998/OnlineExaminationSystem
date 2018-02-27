	<%@ page import="java.sql.*" %>
<% 

String id = request.getParameter("id");
String q = request.getParameter("question");
String ac = request.getParameter("ansc");
String a1 = request.getParameter("ans1");
String a2 = request.getParameter("ans2");
String a3 = request.getParameter("ans3");
String a4 = request.getParameter("ans4");
String t = request.getParameter("topic");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st = conn.prepareStatement("insert into addques values(?,?,?,?,?,?,?,?)");
st.setString(1, id);
st.setString(2, q);
st.setString(3, ac);
st.setString(4, a1);
st.setString(5, a2);
st.setString(6, a3);
st.setString(7, a4);
st.setString(8, t);

int r = st.executeUpdate();
if(r>0)
{
	out.println("record updated");
	%>
	<%response.sendRedirect("addquestion.html");%>
	<%
}else{
	out.println("update failed");
	%>
	<%-- <jsp:include page="stusignup.html"/>--%>
	<%
}



%>