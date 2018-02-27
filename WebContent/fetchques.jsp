
<%@page import="javax.websocket.Session"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@page import="beans.question" %>
<%@ page import="java.sql.*" %>


<%


String extopic = request.getParameter("tech");
session.setAttribute("topicex", extopic);


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");

PreparedStatement ps = conn.prepareStatement("select * from addques where topic=? ");

ArrayList<question> quest = new ArrayList<question>();


ps.setString(1, extopic);
ResultSet rs = ps.executeQuery();
//session.setAttribute("examtopic", rs.getString("tech"));
 while(rs.next()){
	
	 
	 int id= rs.getInt("id");
	 String question = rs.getString("question");
	 String answer = rs.getString("answer");
	 String opn1 = rs.getString("inans1");
	 String opn2 = rs.getString("incans2");
	 String opn3 = rs.getString("incans3");
	 String opn4 = rs.getString("incans4");
	 
	 question q = new question();
   
	 
	 q.setQuestion(question);
	 q.setAnswer(answer);
	 q.setInans1(opn1);
	 q.setIncans2(opn2);
	 q.setIncans3(opn3);
	 q.setIncans4(opn4);
	 
	 quest.add(q);
	 

	 
 }
conn.close();
session.setAttribute("qlist", quest);
session.setAttribute("index",0);


 response.sendRedirect("examview.jsp");
 
 
 %>



