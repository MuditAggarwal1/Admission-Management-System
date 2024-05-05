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
	font-size: 18px;
	color: #AD003A;
}
.style5 {font-size: 20px; color: #AD003A; font-weight: bold; }
.style6 {
	font-size: 20px;
	font-weight: bold;
}
-->
   </style>
<script>
function f2()
{
	if(confirm("Do you want to print?"))
	{
		var values = document.getElementById("print");
		var printing =
		window.open('','','left=0,top=0,width=600,height=400,toolbar=0,scrollbars=1,status=0');
		printing.document.write(values.innerHTML);
		printing.document.close();
		printing.focus();
		printing.print();
		printing.close();
	}
}

</script>
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
<p>
  <%@ page import="java.util.*" %>
  <% int a = new java.util.Date().getYear();
int yr=a+1900;
try{
String driver=application.getInitParameter("driver");
        String url=application.getInitParameter("url");
        String user=application.getInitParameter("user");
        String pswd=application.getInitParameter("pswd");
        Class.forName(driver);
        Connection con=DriverManager.getConnection(url,user,pswd);
String jclass= request.getParameter("jclass");
%>
</p>

  <%
PreparedStatement pst = con.prepareStatement("select Name,Gender,lang,dob,national,religion,caste,cname,fname,foccup,mname,moccup,gname,goccup,addr,lastclass,oldschool,tcsubmit,tcno,tcdate,medium,admdate,admno,prom,amt from admissions where joinclass=?");
 pst.setString(1, jclass);
        ResultSet rs1 = pst.executeQuery();
 if(rs1.next()){




%>
</p>
<center>
  <div style="width:970; height:350; overflow:auto;" align="center" id="print">
<p align="center"><span class="style5"><%=jclass%></span><span class="style3"> class Admissions in the year<span class="style6"> <%=yr%></span></span>
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>

	<%@ page import="java.sql.*" %>
	<table width="1708" height="99" border="1" cellpadding="5" cellspacing="0">
          <tr>
            <td width="91"><div align="center" style="width:90;">Admission No.</div></td>
            <td width="41"><div align="center" style="width:90;">
              Admission Date </div></td>
            <td width="41">Name</td>
            <td width="45">Gender</td>
            <td width="49">Mother Tongue </td>
            <td width="50"><div align="center" style="width:90;">
              Date of Birth </div></td>
            <td width="10">Nationality</td>
            <td width="16">Religion</td>
            <td width="16">Caste</td>
            <td width="16">Caste Name </td>
            <td width="16">Father Name </td>
            <td width="16">Father Occupation </td>
            <td width="16">Mother Name </td>
            <td width="16">Mother Occupation </td>
            <td width="16">Guardian Name </td>
            <td width="16">Guardian Occupation </td>
            <td width="16">Address</td>
            <td width="16">Last Class Studied </td>
            <td width="16">Old School</td>
            <td width="16">Eligibility for Promotion</td>
            <td width="57">TC Submitted </td>
            <td width="57">TC Number </td>
            <td width="57"><p style="width:90;">Date of TC Issued</p>            </td>
         
            <td width="57">Medium of Study </td>
            <td width="57">Amount</td>
          </tr>
          <%
          ResultSet rs = pst.executeQuery();
          while(rs.next()){
          %>
		  <tr>
            <td ><div align="center">&nbsp;<%=rs.getString(23)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(22)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(1)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(2)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(3)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(4)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(5)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(6)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(7)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(8)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(9)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(10)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(11)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(12)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(13)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(14)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(15)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(16)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(17)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(24)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(18)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(19)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(20)%></div></td>
                       <td><div align="center">&nbsp;<%=rs.getString(21)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getInt(25)%></div></td>
          </tr>
          <%}%>
      </table>


        </p>  <p>
          <%}else{
         %><br>There are still no admissions<%
          }%>
      </p>
      <p>&nbsp;  </p></td>
  </tr>
</table></div></center>
<p align="center">
  <%}catch(Exception e){out.println(e);}%>
    <input type="button" value="Print" onClick="return f2()">
</p>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>
</body>

</html>

