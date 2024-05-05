<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>

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
-->
   </style>
 <script>

 function f5()
 {
   var r=confirm("Are you sure,you want to transfer amount?");
    if (r==true)
  {
  return true;
  }
else
  {
   return false;
  }
}</script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">


<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/topbkg.gif">
  <tr>
    <td width="50%"><img border="0" src="img/topleft.gif" width="205" height="61"></td>
    <td width="50%">
      <p align="right"><img border="0" src="img/topleft.gif" width="205" height="61"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/linebkg.gif">
  <tr>
    <td width="100%"><div align="center"><font face="Arial" size="2"><b><font color="#FFFFFF"><a href="home.jsp">Home</a>&nbsp; | <a href="admission.jsp">Admissions</a><font face="Arial" size="2"><b> |&nbsp;<a href="details.jsp">Details</a> </b></font>|&nbsp;<font face="Arial" size="2"><b><a href="reg.jsp">Register</a></b></font><a href="reg.jsp">s</a>&nbsp;</font></b></font> <font face="Arial" size="2"><b><font color="#FFFFFF"> |&nbsp;&nbsp; <a href="deposit.jsp">Deposit </a><font face="Arial" size="2"><b> &nbsp;|&nbsp;&nbsp;<font face="Arial" size="2"><b><a href="rr.jsp">Rules &amp; regulations </a></b></font>&nbsp;</b></font></font></b></font> <font face="Arial" size="2"><b><font color="#FFFFFF"> |&nbsp;&nbsp; <a href="logout.jsp">Log Out </a></font></b></font></div></td>
  </tr>
</table>
<%@ page import="java.sql.*" %>


<%try{
String driver=application.getInitParameter("driver");
        String url=application.getInitParameter("url");
        String user=application.getInitParameter("user");
        String pswd=application.getInitParameter("pswd");
        Class.forName(driver);
        Connection con=DriverManager.getConnection(url,user,pswd);
PreparedStatement pst4 = con.prepareStatement("select max(rid) from amount");
ResultSet rs4 = pst4.executeQuery();
int rid;
if(rs4.next())
{
rid=rs4.getInt(1);
PreparedStatement pst5 = con.prepareStatement("select amt,sbamt from amount where rid=?");
pst5.setInt(1, rid);
ResultSet rs5 = pst5.executeQuery();
if(rs5.next()){
String str=rs5.getString(1);
String str2=rs5.getString(2);
%>
<form action="deposit1.jsp" name="dep" method="post" onSubmit="return f5()">
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p align="center">&nbsp;</p>
    <p align="center">Present Cash in Hand - <%=str%></p>
      <p align="center">Present Amount in Bank - <%=str2%> </p>
      <input type="hidden" name="hand" value="<%=str%>" />
       <input type="hidden" name="bank" value="<%=str2%>" />
       <input type="hidden" name="rid" value="<%=rid%>" />
      <p align="center">
        <label>
        <input type="submit" value="Click Here To Transfer amount of <%=str%> to bank">
        </label>
      </p></td>

  </tr>
</table>

</form>

<%}
else{
%>
<p>This is the first time to use the system, then it is must and should to initialise the following values</p>
      <ul>
        <li>Starting Admission Number</li>
        <li>Present Cash in Bank</li>
        <li>Present Cash in Hand</li>
      </ul>
      <p>To initialise the values <span class="style3" onClick="window.open('init.jsp','_self')"><u>Click here</u></span>. </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>

<%
}
}

%>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>

<%}catch(Exception e){}%>

</body>

</html>

