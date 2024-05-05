<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<jsp:include page="CheckSession.jsp"/>

<html>

<head>

<title>Admissions management System</title>
   <style type="text/css">
<!--
a:link {
	color: #FFFFFF;
}
a:hover {
	color: #FFFFFF;
}
a:active {
	color: #AD003A;
}
a:visited {
	color: #FFFFFF;
}
.style3 {
	color: #AD003A;
	font-weight: bold;
}
.style4 {color: #AD003A; font-weight: bold; font-size: 18px; }
.style5 {
	color: #AD003A;
	font-size: 18px;
	font-weight: bold;
}
-->
   </style>
 


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">


<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/topbkg.gif">
  <tr>
    <td width="50%"><img border="0" src="img/topleft.gif" width="205" height="61"></td>
    <td width="50%">
      <p align="right"><img border="0" src="img/logo.jpg" width="132" height="61"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/linebkg.gif">
  <tr>
    <td width="100%"><div align="center"><font face="Arial" size="2"><b><font color="#FFFFFF"><a href="home.jsp">Home</a>&nbsp; | <a href="admission.jsp">Admissions</a><font face="Arial" size="2"><b> |&nbsp;<a href="details.jsp">Details</a> </b></font>|&nbsp;<font face="Arial" size="2"><b><a href="reg.jsp">Register</a></b></font><a href="reg.jsp">s</a>&nbsp;</font></b></font> <font face="Arial" size="2"><b><font color="#FFFFFF"> |&nbsp;&nbsp; <a href="deposit.jsp">Deposit </a><font face="Arial" size="2"><b> &nbsp;|&nbsp;&nbsp;<font face="Arial" size="2"><b><a href="rr.jsp">Rules &amp; regulations </a></b></font>&nbsp;</b></font></font></b></font> <font face="Arial" size="2"><b><font color="#FFFFFF"> |&nbsp;&nbsp; <a href="logout.jsp">Log Out </a></font></b></font></div></td>
  </tr>
</table>

<table width="800" height="150" border="0" align="center">


<%try{
String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pswd=application.getInitParameter("pswd");
Class.forName(driver);
Connection con=DriverManager.getConnection(url,user,pswd);
String admno= request.getParameter("admno");
String sbcash= request.getParameter("sbcash");
String handcash= request.getParameter("handcash");
int admno1=Integer.parseInt(admno)-1;
int sbcash1=Integer.parseInt(sbcash);
int handcash1=Integer.parseInt(handcash);
int dt= new java.util.Date().getDate();
int mt= new java.util.Date().getMonth();
int a = new java.util.Date().getYear();
mt=mt+1;
int yr=a+1900;
String admdt="opening "+dt+"-"+mt+"-"+yr;
int rid=1;
      PreparedStatement pst1 = con.prepareStatement("insert into admissions(admno) values(?)");
      pst1.setInt(1, admno1);
int num=pst1.executeUpdate();
pst1.close();
PreparedStatement pst2 = con.prepareStatement("insert into amount(date,amt,sbamt,rid) values(?,?,?,?)");
 pst2.setString(1, admdt);
pst2.setInt(2, sbcash1);
      pst2.setInt(3, handcash1);
      pst2.setInt(4, rid);
int num2=pst2.executeUpdate();
pst2.close();
if(num2==1){
%>
<p>&nbsp;</p>
Values are successfully inserted<br>
   Starting Admission Number is <%=admno%><br>
 Cash in Hand is <%=handcash%><br>
 Cash in Bank is <%=sbcash%><br>
 <br> <form name="" onSubmit="return f5()" action="update.jsp" method="post">To Update these values<input type="submit" value="Click Here"></form>
 <%
}else{
%>
 <span class="style5">Warning:</span>values are not inserted due to some problem.
<%
}}catch(Exception e){
out.println(e);
}
%>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>
 <script>

 function f5()
 {
   var r=confirm("All the Data will be lost.Are you sure,you want to delete?");
    if (r==true)
  {
  return true;
  }
else
  {
   return false;
  }
}</script>
</body>

</html>

