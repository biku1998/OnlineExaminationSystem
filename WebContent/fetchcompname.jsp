<%-- import the bean --%>
<%@ page import="beans.companyname"%>

<%-- create object of bean --%>
<jsp:useBean id="cn" class="beans.companyname" />

<%-- fetch the data of html and store it inside  
beans object
--%>
<jsp:setProperty property="*" name="cn"/>

<%-- store object of bean inside session --%>
<% 
session.setAttribute("cpn",cn);
%>