<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>
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

<table width="800" height="350" border="0" align="center">


<%try{
String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pswd=application.getInitParameter("pswd");
Class.forName(driver);
Connection con=DriverManager.getConnection(url,user,pswd);

      PreparedStatement pst1 = con.prepareStatement("delete from admissions");
int num=pst1.executeUpdate();
pst1.close();
      PreparedStatement pst2 = con.prepareStatement("delete from amount");
int num2=pst2.executeUpdate();
pst2.close();
if(num2==1){
%>

  <tr>
    <td valign="top"><p>&nbsp;</p>
	
	<form name="" action="init1.jsp" method="post">
      <table width="397" height="222" border="0" align="center" cellpadding="10" cellspacing="5">
        <tr>
          <td>Admission Number : </td>
          <td><input type="text" name="admno"></td>
        </tr>
        <tr>
          <td>Cash in SB : </td>
          <td><input type="text" name="sbcash"></td>
        </tr>
        <tr>
          <td>Cash in Hand : </td>
          <td><input type="text" name="handcash"></td>
        </tr>
        <tr>
          <td><label>
              <div align="center">
                <input type="submit" name="Submit" value="Submit">
              </div>
            </label></td>
          <td><div align="center">
              <input type="reset" name="Submit2" value="Reset">
          </div></td>
        </tr>
      </table>   
	  </form>
	  <%}
	  else{
	  
	  %>
	  <span class="style5">Warning:</span> Your request is not performed , due to some reason.
	  <%
	  }
}
catch(Exception e){}
	  
	  %>
      <p>&nbsp;</p>    </td>
  </tr>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>

