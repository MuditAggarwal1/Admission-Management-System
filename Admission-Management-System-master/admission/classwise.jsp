<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>

<jsp:include page="CheckSession.jsp"/>

<html>

<head>

<title>Admissions management System</title>
<script>

    function f1(){
    if(document.cls.jclass.value==0){
        alert("please select class");
    return false;
    }

    return true;
}
</script>
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
<form name="cls" action="classwise1.jsp" method="post" onsubmit="return f1()">
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>
      <table width="200" border="0" align="center" cellpadding="10" cellspacing="5">
        <tr>
          <td>Class :</td>
          <td><select name="jclass" id="select4">
            <option value="0" selected>- Select -</option>
            <option value="First">First</option>
            <option value="Second">Second</option>
            <option value="Third">Third</option>
            <option value="Fourth">Fourth</option>
            <option value="Fifth">Fifth</option>
            <option value="Sixth">Sixth</option>
            <option value="Seventh">Seventh</option>
            <option value="Eigth">Eighth</option>
            <option value="Ninth">Ninth</option>
            <option value="Tenth">Tenth</option>
          </select></td>
        </tr>
        <tr>
          <td height="44"><label>
            <input type="submit" name="Submit" value="Submit">
          </label></td>
          <td><div align="center"><input type="reset" name="Submit2" value="Reset">
          </div>
          </label></td>
        </tr>
      </table></td>
  </tr>
</table></form>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>

