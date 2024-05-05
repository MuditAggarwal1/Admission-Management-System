<html>
<head>
<title>Admissions management System</title>
<script type = "text/javascript" >
function f1(){
    if(document.login.uname.value==0){
        alert("please enter username");
    return false;
    }
     if(document.login.pass.value==0){
        alert("please enter password");
        return false;
    }
    return true;
}
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);

</script>

</head>

<body  onload="disableBackButton()" bgcolor="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/topbkg.gif">
  <tr>
    <td width="50%"><img border="0" src="img/topleft.gif" width="205" height="61"></td>
    <td width="50%">
      <p align="right"><img border="0" src="img/logo.jpg" width="132" height="61"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" background="img/linebkg.gif">
  <tr>
    <td width="100%"><div align="center"><font face="Arial" size="2"><b>&nbsp;&nbsp;</b></font></div></td>
  </tr>
</table>
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>
    <TABLE border="0" cellPadding="10" width="186" align="center">
<form  method="post" name="login"  action="login.jsp" onsubmit="return f1()">
        <TBODY>
          <TR>
            <TD colSpan="2"><p align="center"><strong> <font color="#AD003A" size="5">Login </font></strong></p></TD>
          </TR>
          <TR>
            <TD width="99">Username:</TD>
            <TD width="77"><INPUT name="uname"></TD>
          </TR>
          <TR>
            <TD vAlign="top">Password: </TD>
            <TD vAlign="bottom"><INPUT value="" type="password" name="pass"></TD>
          </TR>
          <TR>
            <TD height="39" vAlign="top"><INPUT value="Submit" type="submit" name="Submit3"></TD>
            <TD vAlign="bottom"><DIV align="center">
              <INPUT value="Reset" type="reset" name="Submit22">
            </DIV></TD>
          </TR>
        </form>
    </TABLE>    </td>
  </tr>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>
</body>
</html>
