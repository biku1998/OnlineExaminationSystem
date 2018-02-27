<%@ page import="java.sql.*" %>

<%

String email = request.getParameter("email");
String pass1= request.getParameter("password");
String pass2 = request.getParameter("passwordc");

if(pass1.equalsIgnoreCase(pass2)){
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
			"root","root");

	PreparedStatement ps = conn.prepareStatement("update studentinfo set password = ? where email = ? ");
    ps.setString(1, pass1);
    ps.setString(2, email);
    
    int  rs = ps.executeUpdate();
    if(rs>0){
    	
    	response.sendRedirect("resetpass.jsp");
    }
    } else{
    	out.println("<h1><i>Password mismatch</i></h1>");
    	out.println("<a href=resetpass.jsp><button>Retry</button></a>");
    
    
    }


	
	




%>