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
.style1 {font-size: 9px}
.style3 {font-size: 14px}
-->
   </style>
</head>
<body onLoad="dis1()" bgcolor="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">

        <script language="javascript">
function dis1()
{


document.getElementById("other").disabled = true;

}
function dis()
{

if(document.getElementById("rb1").checked )
{
document.getElementById("outside").disabled = true;
}
else
{
document.getElementById("outside").disabled = false;
}
}
function dis3()
{

if(document.getElementById("tc2").checked )
{
document.getElementById("tcno").disabled = true;
document.getElementById("date").disabled = true;
}
else
{
document.getElementById("tcno").disabled = false;
document.getElementById("date").disabled = false;
}
}
    function f1(){
        if(document.admission.name.value==0)
        {
            alert("please enter name");
            return false;
        }
        if(document.admission.lang.value==0)
        {
            alert("please select mother tongue ");
            return false;
        }
        if(document.admission.dob.value==0)
        {
            alert("please select date of birth");
            return false;
        }
        if(document.getElementById("rb2").checked )
        {
             if(document.admission.outside.value==0)
             {
                alert("please enter nationality");
                return false;
            }
            if(isNaN(document.admission.outside.value)==false)
             {
                alert("Nationality should contain alphabets");
                return false;
            }
        }
        if(document.admission.religion.value==0)
        {
            alert("please select religion ");
            return false;
        }
                 if(document.admission.cname.value==0)
        {
            alert("please enter caste name");
            return false;
        }
                 if(document.admission.fname.value==0 && document.admission.mname.value==0 && document.admission.gname.value==0)
        {
            alert("please enter atleast one of the parent details or a guardian details");
            return false;
        }
           if(document.admission.addr.value==0)
        {
            alert("please enter address");
            return false;
        }
         if(document.admission.lastclass.value==0)
        {
            alert("please select Last Class Studied");
            return false;
        }
        
         if(document.admission.school.value==0)
        {
            alert("please enter old school name");
            return false;
        }
         if(isNaN(document.admission.school.value)==false)
        {
            alert("school name should contain alphabets");
            return false;
        }
        if(document.admission.file.value==0)
        {
            alert("please upload student photo");
            return false;
        }
        if(document.getElementById("tc1").checked )
        {
           
            if(document.admission.tcno.value==0)
            {
                alert("please enter TC number");
                return false;
            }
                
            if(document.admission.date.value==0)
            {
                alert("please select TC date");
                return false;
            }
        }
        if(document.admission.jclass.value==0)
        {
            alert("please select joining class");
            return false;
        }
        if(document.admission.medium.value==0)
        {
            alert("please select medium");
            return false;
        }
             if(document.admission.mole1.value==0 && document.admission.mole2.value==0)
        {
            alert("please enter atleast one mole of identification");
            return false;
        }
        if(document.admission.amt.value==0)
        {
            alert("please enter amount");
            return false;
        }
  if(isNaN(document.admission.amt.value))
        {
            alert("amount should not contain alphabets");
            return false;
        }

        return true;

    }

</script>


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
    <td valign="top"><p align="center">&nbsp;</p>
      <form name="admission" action="admission2.jsp" method="post" onSubmit="return f1()">

      
        <div align="center">
          <table width="828" align="center" cellpadding="10" cellspacing="0">

            <tr>
              <td width="228"><span class="style5">Full Name :</span></td>
              <td colspan="4"><input name="name" id="name" size="40" maxlength="40" type="text" /></td>
      </tr>
            <tr>
              <td><span class="style5">Gender :</span></td>
        <td colspan="4"><strong> </strong>Male<strong>
          <input name="gender" value="male" checked="checked" type="radio" />
          &nbsp; </strong>Female
          <input name="gender" value="female" type="radio" /></td>
      </tr>
            <tr>
              <td>Mother Tongue : </td>
              <td colspan="4"><select name="lang" id="select2">
                <option value="0" selected>- Select -</option>
                <option value="Telugu">Telugu</option>
                <option value="Tamil">Tamil</option>
                <option value="Kannada">Kannada</option>
                <option value="Malayalam">Malayalam</option>
                <option value="Hindi">Hindi</option>
                                                                                                                </select></td>
            </tr>
            <tr>
              <td><span class="style5">Date of Birth :</span></td>
        <td colspan="4"><span class="style5">
         <input type="text" name="dob" readonly ><a href="#" onClick="setYears(1947, 2050);
       showCalender(this, 'dob');">
              <img src="calender.png"></a> </span></td>
      </tr>
            <tr>
              <td><span class="style5">Nationality :</span></td>
        <td colspan="4"><label>
          <input name="national" checked id="rb1" type="radio" value="Indian" onChange="dis()">
          Indian</label>
           <label>
           <input name="national" id="rb2" type="radio" value="no" onChange="dis()">
           If other, specify </label>
           <input id="outside" name="other"  type="text" /></td>
      </tr>
            <tr>
              <td><span class="style5">Religion :</span></td>
        <td colspan="4"><select name="religion" id="select3">
          <option value="0" selected>- Select -</option>
          <option value="Hindu">Hindu</option>
          <option value="Muslim">Muslim</option>
          <option value="Christian">Christian</option>
          <option value="Malayalam">Malayalam</option>
          <option value="Sikh">Sikh</option>
          <option value="Buddhist">Buddhist</option>
          <option value="Jain">Jain</option>
                                </select></td>
      </tr>
            <tr>
              <td><span class="style5">Caste :</span></td>
        <td colspan="4"><label>
          <input name="caste" type="radio" value="OC" checked>
          OC
          <input name="caste" type="radio" value="BC">
          BC
          <input name="caste" type="radio" value="SC">
          SC
          <input name="caste" type="radio" value="ST">
          ST        </label></td>
      </tr>
            <tr>
              <td><span class="style5">Caste Name :</span></td>
        <td colspan="4"><input name="cname" id="name322" size="30" maxlength="40" type="text" /></td>
      </tr>
            <tr>
              <td><span class="style5">Father Name :</span></td>
              <td colspan="2"><input name="fname" id="pin" size="30" maxlength="40" type="text" /></td>
              <td width="73">Occupation:</td>
              <td width="239"><input name="foccup" id="pin2" size="30" maxlength="40" type="text" /></td>
            </tr>
            <tr>
              <td><span class="style5">Mother Name :</span></td>
              <td colspan="2"><input name="mname" id="pin" size="30" maxlength="40" type="text" /></td>
              <td>Occupation:</td>
              <td><input name="moccup" id="moccup" size="30" maxlength="40" type="text" /></td>
            </tr>
            <tr>
              <td><span class="style5">Guardian Name :</span></td>
              <td colspan="2"><input name="gname" id="pin" size="30" maxlength="40" type="text" /></td>
              <td>Occupation:</td>
              <td><input name="goccup" id="pin2" size="30" maxlength="40" type="text" /></td>
            </tr>
            <tr>
              <td>Address :</td>
              <td colspan="4"><label>
                <textarea name="addr"></textarea>
              </label></td>
            </tr>
            <tr>
              <td>Last Class Studied : </td>
              <td width="91"><select name="lastclass" id="select">
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
              <td width="70">in School </td>
              <td colspan="2"><input name="school" id="pin23" size="30" maxlength="40" type="text" /></td>
            </tr>
            <tr>
              <td>Is having eligibility for <span class="style3">Promotion </span>: </td>
              <td colspan="4"><label>
                <input name="rb" type="radio" value="yes" checked>
Yes
<input name="rb" type="radio" value="no">
No </label></td>
            </tr>
            <tr>
              <td><span class="style5">Student Photo : </span></td>
        <td colspan="4"><input type="file" name="file" />      </td>
      </tr>
            <tr>
              <td><span class="style5">
              <!--<td><select name="facility" size="3" multiple id="facility">-->
              <!--<td><select name="facility" size="3" multiple id="facility">-->
              <!--<td><select name="facility" size="3" multiple id="facility">-->
              Transfer Certificate Submitted :</span></td>
        <td colspan="4"><!--<td><select name="facility" size="3" multiple id="facility">-->
          <input name="tc" id="tc1" type="radio" value="yes" checked onChange="dis3()">
Yes
<input name="tc" id="tc2" type="radio" value="no" onChange="dis3()">
No </td>
      </tr>
            <tr>
              <td><span class="style5">TC number : </span></td>
        <td colspan="2"><label>
          <input name="tcno" id="tcno" size="30" maxlength="40" type="text" />
        </label></td>
        <td>dated</td>
        <td valign="top"><span class="style5">
          <input type="text" name="date" id="date" readonly ><a href="#" onClick="setYears(1947, 2050);
       showCalender(this, 'date');">
              <img src="calender.png"></a> </span></td>
            </tr>

            <tr>
              <td>Joining Class :</td>
              <td colspan="4"><select name="jclass" id="select4">
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
              <td>Medium of Study : </td>
              <td colspan="4"><select name="medium" id="select5">
                <option value="0" selected>- Select -</option>
                <option value="Telugu">Telugu</option>
                <option value="English">English</option>
                <option value="Urdu">Urdu</option>
                            </select></td>
            </tr>
            <tr>
              <td valign="top">Moles of Identification : </td>
              <td colspan="4"><p>1 .
                  <input name="mole1" id="pin233" size="50" maxlength="40" type="text" />
              </p>
              <p>2 .
                <input name="mole2" id="pin2332" size="50" maxlength="40" type="text" />
              </p></td>
            </tr>
            <tr>
              <td>Amount :</td>
              <td colspan="4"><input name="amt"  size="20" maxlength="40" type="text" /></td>
            </tr>
            <tr>
              <td><label>

                <div align="center">
                  <input type="submit" name="Submit" value="Submit" />
                </div>
            </label></td><td colspan="4"><div align="center">
              <input type="reset" name="Submit2" value="Reset" />
              </div></td>
      </tr>
          </table>

      </form>

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
        </p>
      </div>      </td>
  </tr>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>

</body>

</html>
