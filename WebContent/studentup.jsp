


<%@ page import="beans.studentinfo"%>
<%@ page import="java.sql.*" %>


<%-- create object of bean --%>
<jsp:useBean id="si" class="beans.studentinfo"/>

<%-- fetch the data of html and store it inside  
beans object
--%>
<jsp:setProperty property="*" name="si"/>

<%-- store object of bean inside session --%>
<% 
session.setAttribute("user",si);
%>
<% 
// get the object of bean from session
studentinfo sinfo = (studentinfo )session.getAttribute("user");


String n = sinfo.getName();
String e = sinfo.getEmail();
String p = sinfo.getPassword();
String g = sinfo.getGender();
String c = sinfo.getCity();
String con = sinfo.getContact();
String edu= sinfo.getEducation();
String exam= sinfo.getExam();
String passout = sinfo.getPassout();
String secques = sinfo.getSq();
String ans = sinfo.getAns();
String grade = sinfo.getGrade();



Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");

PreparedStatement ps = conn.prepareStatement("insert into studentinfo values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, n);
ps.setString(2, e);
ps.setString(3, p);
ps.setString(4, g);
ps.setString(5, c);
ps.setString(6, con);
ps.setString(7, edu);
ps.setString(8, exam);
ps.setString(9, passout);
ps.setString(10, secques);
ps.setString(11, ans);
ps.setString(12, grade);


int r = ps.executeUpdate();
if(r>0)
{
	%>
	<jsp:forward page="student.html"/>
	<%
}else{
	%>
	<jsp:include page="stusignup.html"/>
	<%
}

%>






