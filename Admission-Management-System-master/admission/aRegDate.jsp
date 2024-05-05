<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>

<jsp:include page="CheckSession.jsp"/>
<html>
<head>
<title>Admissions management System</title>
  <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css">

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
<form name="adminReg" onsubmit="return f1()" action="aRegDate2.jsp" method="post">
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>
      <p align="center">From Admission Date
        <label>
        <span class="style5">
        <input type="text" name="date1" readonly >
        <a href="#" onClick="setYears(1947, 2050);
       showCalender(this, 'date1');"> <img src="calender.png"></a></span>        ,        </label>
        to Date
        <span class="style5">
        <input type="text" name="date2" readonly value="last date" >
        <a href="#" onClick="setYears(1947, 2050);
       showCalender(this, 'date2');"> <img src="calender.png"></a></span>      </p>
      <table width="200" border="0" align="center">
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
      </td>
  </tr>
</table></form>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>
     <div align="center">
        <table id="calenderTable">
          <tbody id="calenderTableHead">
            <tr>
              <td colspan="4" align="center">
                <select onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
                  <option value="0">Jan</option>
                  <option value="1">Feb</option>
                  <option value="2">Mar</option>
                  <option value="3">Apr</option>
                  <option value="4">May</option>
                  <option value="5">Jun</option>
                  <option value="6">Jul</option>
                  <option value="7">Aug</option>
                  <option value="8">Sep</option>
                  <option value="9">Oct</option>
                  <option value="10">Nov</option>
                  <option value="11">Dec</option>
                </select>                </td>
                <td colspan="2" align="center">
                  <select onChange="showCalenderBody(createCalender(this.value,
				document.getElementById('selectMonth').selectedIndex, false));" id="selectYear">
                  </select>                </td>
                <td align="center">
                  <a href="#" onClick="closeCalender();"><font color="#003333" size="+1">X</font></a>                </td>
	        </tr>
          </tbody>
          <tbody id="calenderTableDays">
            <tr style="">
              <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
            </tr>
          </tbody>
          <tbody id="calender"></tbody>
        </table>

      </div>
     <script>
         function f1()
         {
 if(document.adminReg.date1.value==0){
        alert("please select start date");
    return false;
    }

    return true;
         }

     </script>
</body>
</html>
