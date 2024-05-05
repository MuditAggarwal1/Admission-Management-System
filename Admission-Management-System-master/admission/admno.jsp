<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>

<jsp:include page="CheckSession.jsp"/>

<html>

<head>
<script>

    function f1(){
    if(document.cls.admno.value==0){
        alert("please enter admission number");
    return false;
    }
if(isNaN(document.cls.admno.value))
       {alert("admision number should not contain alphabets");
       return false;
   }
    return true;
}
</script>
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
	font-size: 20px;
	color: #AD003A;
}
.style2 {color: #AD003A}
-->
   </style>

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
<form name="cls" action="admission3.jsp" method="post" onsubmit="return f1()">
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>
      <table width="367" border="0" align="center" cellpadding="10" cellspacing="5">
        <tr>
          <td width="128">Admission Number  :</td>
          <td width="184"><label>
           <input name="admno" type="text" />
          </label></td>
        </tr>
        <tr>
          <td height="63" valign="top"><label>
            <div align="center">
              <input type="submit" name="Submit" value="Submit">
              </div>
          </label></td>
          <td valign="top"><div align="center">
            <input type="reset" name="Submit2" value="Reset">
            </div>
            </td>
        </tr>
      </table>      <p align="center" class="style1 style2" onClick="window.open('classwise.jsp','_self')">&nbsp;</p>
    </td>
  </tr>
</table></form>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>

