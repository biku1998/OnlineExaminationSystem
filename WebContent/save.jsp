
<%@page import="java.sql.*"%>
<%
String sno = request.getParameter("sno");
String topic = request.getParameter("topic");
String cans = request.getParameter("cans");

String uans;

if(request.getParameter("opn")==null){
	uans="not attempted";
}else{
	uans= request.getParameter("opn");
}

String email = (String)session.getAttribute("email");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");
PreparedStatement st1 = conn.prepareStatement("select *  from studentinfo where email = ? and exam = ?");
st1.setString(1, email);
st1.setString(2, topic);
ResultSet rs = st1.executeQuery();
if(rs.next()){
	//response.sendRedirect("student.html");
out.println("<script>alert('Re-examination is not allowed');</script>");    
    %><jsp:include page="student.html"/>
    
    
<%
}else{


PreparedStatement st = conn.prepareStatement("insert into  userans1 values(?,?,?,?,?)");
st.setString(1, sno);
st.setString(2, uans);
st.setString(3, email);
st.setString(4, cans);
st.setString(5, topic);
int rs1 = st.executeUpdate();
 conn.close();
 response.sendRedirect("examview.jsp");

}
%>