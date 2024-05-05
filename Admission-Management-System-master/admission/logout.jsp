<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>

<jsp:include page="CheckSession.jsp"/>


<%
String path=application.getInitParameter("path");
    File file=new File(path);
    boolean exists = file.exists();
     if (exists) {
  String[] str=file.list();
if(str.length!=0){
for(int i=0;i<str.length;i++){
File f1=new File(path+str[i]);
boolean sc1=f1.delete();
     }

boolean sc2=file.delete();
}
  else{
 boolean success = file.delete();
    }
     }



%>
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
.style1 {
	color: #AD003A;
	font-weight: bold;
}
-->
   </style>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>

</head>

<body onLoad="disableBackButton()" bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">


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
  <tr>
    <td valign="top"><p>&nbsp;</p>
      <p><span class="style1">Are you sure You want to LOGOUT of the page </span>. If &nbsp;<strong>YES </strong>, <u><span class="style1" onClick="window.open('logout1.jsp','_self')">click here</span></u> to Logout </p>
    </td>
  </tr>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>

