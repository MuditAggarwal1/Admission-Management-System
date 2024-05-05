<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page errorPage="errorPage.jsp" %>
<head>
<title>Admissions management System</title>

</head>

<body >
<%
try{
		session.invalidate();

  
}catch(IllegalStateException ise){
	System.out.println("Caught illigal state exception");
	throw new Exception(ise);
}
catch(Exception e){
		throw new Exception(e);
}
request.setAttribute("Error", "Session has ended.  Please login.");
   RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
   rd.forward(request, response);
%>
</body>
