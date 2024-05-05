<%@ page language="java" %>
<%@ page import="java.sql.*,java.io.*" %>
<%@ page import="java.lang.*" %>
<%@ page session="true" %>

<jsp:include page="CheckSession.jsp"/>

<html>

<head>
<script>
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
                alert("please select date");
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

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body onLoad="dis1()" bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">


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
<script>
 function dis1()
{


document.getElementById("pic").disabled = true;

}
function dis()
{

if(document.getElementById("change").checked )
{
document.getElementById("pic").disabled = false;
}
else
{
document.getElementById("pic").disabled = true;
}
}
function f4(){
 if(document.update.fn.value==0)
        {
            alert("please enter Name");
            return false;
        }
        if(document.update.gn.value==0)
        {
            alert("please enter Gender ");
            return false;
        }
        if(document.update.mt.value==0)
        {
            alert("please enter mother tongue ");
            return false;
        }
        if(document.update.dob.value==0)
        {
            alert("please enter date of birth");
            return false;
        }
      
             if(document.update.nt.value==0)
             {
                alert("please enter nationality");
                return false;
            }
        if(document.update.rg.value==0)
        {
            alert("please enter religion ");
            return false;
        }
         if(document.update.ct.value==0)
        {
            alert("please enter caste ");
            return false;
        }
                 if(document.update.ctn.value==0)
        {
            alert("please enter caste name");
            return false;
        }
        if(document.update.fname.value==0 && document.update.mname.value==0 && document.update.gname.value==0)
        {
            alert("please enter atleast one of the parent details or a guardian details");
            return false;
        }
           if(document.update.addr.value==0)
        {
            alert("please enter address");
            return false;
        }
         if(document.update.stc.value==0)
        {
            alert("please enter Last Class Studied");
            return false;
        }

         if(document.update.sch.value==0)
        {
            alert("please enter old school name");
            return false;
        }
        if(document.update.prom.value==0)
        {
            alert("please enter whether yes or no , for promotion");
            return false;
        }
        if(document.update.tcsubmit.value==0)
        {
            alert("please enter whether yes or no , for submission of TC");
            return false;
        }
        if(document.update.tcsubmit.value=="yes" )
        {

            if(document.update.tcno.value==0)
            {
                alert("please enter TC number");
                return false;
            }

            if(document.update.tcs.value==0)
            {
                alert("please enter TC date");
                return false;
            }
        }
        if(document.update.jc.value==0)
        {
            alert("please enter joining class");
            return false;
        }
        if(document.update.ms.value==0)
        {
            alert("please enter medium");
            return false;
        }
             if(document.update.m1.value==0 && document.update.m2.value==0)
        {
            alert("please enter atleast one mole of identification");
            return false;
        }
        if(document.update.amt2.value==0)
        {
            alert("please enter amount");
            return false;
        }
        if(isNaN(document.update.amt2.value))
        {
            alert("amount should not contain alphabets");
            return false;
        }
        if(document.getElementById("change").checked )
        {
            if(document.update.file.value==0)
            {
                alert("please upload student photo");
                return false;
            }
        }
 if(document.getElementById("change").checked )
{
document.update.change1.value="yes";
}
else
{
document.update.change1.value="no";
}
return true;
}
    </script>
    <form name="update" onsubmit="return f4()" action="updateDetails2.jsp" method="post">
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top">

        <%try{
String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pswd=application.getInitParameter("pswd");
String path=application.getInitParameter("path");
Class.forName(driver);
Connection con=DriverManager.getConnection(url,user,pswd);
String a= request.getParameter("ano");
  PreparedStatement pst2 = con.prepareStatement("select * from admissions where admno=?");
     pst2.setString(1, a);
     ResultSet rs1 = pst2.executeQuery();

     if( rs1.next())
         {
Blob b1=rs1.getBlob(18);
byte b[]=b1.getBytes(1,(int)b1.length());
OutputStream os=new FileOutputStream(path+a+".jpeg");
os.write(b);
String fn= request.getParameter("name");
String gn= request.getParameter("gender");
String mt= request.getParameter("lang");
String dob= request.getParameter("dob");
String nt= request.getParameter("national");
String rg= request.getParameter("religion");
String ct= request.getParameter("caste");
String ctn= request.getParameter("cname");
String fname= request.getParameter("fname");
String foccup= request.getParameter("foccup");
String mname= request.getParameter("mname");
String moccup= request.getParameter("moccup");
String gname= request.getParameter("gname");
String goccup= request.getParameter("goccup");
String addr= request.getParameter("addr");
String stc= request.getParameter("lastclass");
String sch= request.getParameter("school");
String prom= request.getParameter("rb");
String tcsubmit= request.getParameter("tc");
String tcno= request.getParameter("tcno");
String tcs= request.getParameter("date");
String jc= request.getParameter("jclass");
String ms= request.getParameter("medium");
String m1= request.getParameter("mole1");
String m2= request.getParameter("mole2");
String amt= request.getParameter("amt");
String admdate= request.getParameter("adate");

%>

<table width="847" border="1" align="center" cellpadding="10">
<input type="hidden" name="amt1" value=" <%=amt%>">
<input type="hidden" name="a" value=" <%=a%>">
<input type="hidden" name="admdate" value=" <%=admdate%>">
   <input type="hidden" name="change1" >
   <tr>
      <td colspan="2">Full Name:</td>
      <td colspan="2"><input type="text" name="fn" value=" <%=fn%>"></td>
    <td width="218" rowspan="5" valign="top"><img src='images/<%=a%>.jpeg' width=197 height="194" align="top" /></td>
    </tr>
    <tr>
      <td colspan="2">Gender:</td>
      <td colspan="2"><input type="text" name="gn" value=" <%=gn%>"></td>
    </tr>
    <tr>
      <td colspan="2">Mother Tongue:</td>
      <td colspan="2"><input type="text" name="mt" value=" <%=mt%>"></td>
    </tr>
    <tr>
      <td colspan="2">Date of Birth :</td>
      <td colspan="2"><input type="text" name="dob" value=" <%=dob%>"></td>
    </tr>
    <tr>
      <td colspan="2">Nationality:</td>
      <td colspan="2"><input type="text" name="nt" value=" <%=nt%>"></td>
    	
	</tr>
    <tr>
      <td colspan="2">Religion:</td>
      <td colspan="2"><input type="text" name="rg" value=" <%=rg%>"></td>
   <td rowspan="2" valign="top"><label>
    	  <input type="checkbox" name="change" value="yes" id="change" onchange="dis()" >
    	  Change Picture</label>
    	  <p>
    	    <label>
    	    <input type="file" name="file" id="pic">
    	    </label>
    	  </p></td>
   </tr>
    <tr>
      <td width="111">Caste:</td>
      <td width="144"><input type="text" name="ct" value=" <%=ct%>"></td>
      <td width="106">Caste Name: </td>
      <td width="144"><input type="text" name="ctn" value=" <%=ctn%>"></td>
    </tr>
  
    <tr>
      <td>Father Name : </td>
      <td><input type="text" name="fname" value=" <%=fname%>"></td>
      <td>Occupation : </td>
      <td><input type="text" name="foccup" value=" <%=foccup%>"></td>
    </tr>
    <tr>
      <td>Mother Name : </td>
      <td><input type="text" name="mname" value=" <%=mname%>"></td>
      <td>Occupation : </td>
      <td><input type="text" name="moccup" value=" <%=moccup%>"></td>
      </tr>
     
    <tr>
      <td>Guardian Name : </td>
      <td><input type="text" name="gname" value=" <%=gname%>"></td>
      <td>Occupation : </td>
      <td><input type="text" name="goccup" value=" <%=goccup%>"></td>
      </tr>
 

    <tr>
      <td colspan="2">Address :</td>
      <td colspan="2">
        <textarea name="addr"><%=addr%></textarea></td>
    </tr>
    <tr>
      <td colspan="4"> Studied Class <input type="text" name="stc" value=" <%=stc%>">, in the School <input type="text" name="sch" value=" <%=sch%>"></td>
      </tr>
    <tr>
      <td colspan="2">Is having eligibility for Promotion : </td>
      <td colspan="2"><input type="text" name="prom" value=" <%=prom%>"></td>
    </tr>
  <tr>
      <td colspan="2">TC Submitted : </td>
      <td colspan="2"><input type="text" name="tcsubmit" value=" <%=tcsubmit%>"></td>
    </tr>
 <tr>
      <td>TC Number : </td>
      <td><input type="text" name="tcno" value=" <%=tcno%>"></td>
      <td>TC Date : </td>
      <td><input type="text" name="tcs" value=" <%=tcs%>"></td>
      </tr>

	
      <tr>
        <td colspan="2">Joining Class :</td>
        <td colspan="2"><input type="text" name="jc" value=" <%=jc%>"></td>
      </tr>
      <tr>
        <td colspan="2">Medium of Study : </td>
        <td colspan="2"><input type="text" name="ms" value=" <%=ms%>"></td>
      </tr>
      <tr>
        <td colspan="2" valign="top">Moles of Identification : </td>
        <td colspan="2"><p>1. <input name="m1" type="text" value=" <%=m1%>" size="36">
        </p>
          <p>2. <input name="m2" type="text" value=" <%=m2%>" size="36">
          </p></td>
      </tr>

      <tr>
      <td colspan="2">Amount :</td>
      <td colspan="2"><input type="text" name="amt2" value=" <%=amt%>"></td>
    </tr>
  </table>

    </td>
  </tr>
</table>

<p>
  <%
}}

catch(Exception e)
{out.println(e); }


%></p>
<table width="200" border="0" align="center">
  <tr>
    <td><label>
      <div align="center">
        <input type="submit" name="Submit" value="Update">
      </div>
    </label></td>
    <td><div align="center">
      <input type="reset" name="Submit2" value="Reset">
    </div></td>
  </tr>
</table></form>
<p>&nbsp;</p>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>

