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
.style2 {font-size: 9px}
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
<center>
  <div id="print" style="width:970; height:400; overflow:auto;" align="center">
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>

	<%@ page import="java.sql.*" %>


<%try{
String driver=application.getInitParameter("driver");
        String url=application.getInitParameter("url");
        String user=application.getInitParameter("user");
        String pswd=application.getInitParameter("pswd");
        Class.forName(driver);
        Connection con=DriverManager.getConnection(url,user,pswd);
String date1= request.getParameter("date1");
String date2= request.getParameter("date2");
PreparedStatement pst=null;
 int num22=0;
if(date1.equalsIgnoreCase(date2)){
    String[] datearr=date1.split("-");
    int dt=Integer.parseInt(datearr[0])-0;
    int mt=Integer.parseInt(datearr[1])-0;
    String corrdate=dt+"-"+mt+"-"+datearr[2];
pst = con.prepareStatement("select Name,Gender,lang,dob,national,religion,caste,cname,fname,foccup,mname,moccup,gname,goccup,addr,lastclass,oldschool,tcsubmit,tcno,tcdate,joinclass,medium,admdate,admno,prom,amt from admissions where admdate=?");
 pst.setString(1, corrdate);
}
 else{
if(date2.equalsIgnoreCase("last date")){
PreparedStatement pstt=con.prepareStatement("select max(admno) from admissions");
 ResultSet rst = pstt.executeQuery();
if(rst.next()){
   num22=Integer.parseInt(rst.getString(1));
    PreparedStatement pstt2=con.prepareStatement("select admdate from admissions where admno=?");
 pstt2.setInt(1, num22);
    ResultSet rst2 = pstt2.executeQuery();
 if(rst2.next()){
pst = con.prepareStatement("select Name,Gender,lang,dob,national,religion,caste,cname,fname,foccup,mname,moccup,gname,goccup,addr,lastclass,oldschool,tcsubmit,tcno,tcdate,joinclass,medium,admdate,admno,prom,amt from admissions where admdate between ? and ?");
 pst.setString(1, date1);
  pst.setString(2, rst2.getString(1));
}
}
}
else{
   String[] datearr=date1.split("-");
    int dt=Integer.parseInt(datearr[0])-0;
    int mt=Integer.parseInt(datearr[1])-0;
  String corrdate=dt+"-"+mt+"-"+datearr[2];
  String[] datearr1=date2.split("-");
    dt=Integer.parseInt(datearr1[0])-0;
    mt=Integer.parseInt(datearr1[1])-0;
  String corrdate2=dt+"-"+mt+"-"+datearr[2];


pst = con.prepareStatement("select Name,Gender,lang,dob,national,religion,caste,cname,fname,foccup,mname,moccup,gname,goccup,addr,lastclass,oldschool,tcsubmit,tcno,tcdate,joinclass,medium,admdate,admno,prom,amt from admissions where admdate between ? and ?");
  pst.setString(1, corrdate);
  pst.setString(2, corrdate2);
}
}
ResultSet rs1 = pst.executeQuery();
if(rs1.next()){
  %>

      <p>

      <table width="1708" height="99" border="1" cellpadding="5" cellspacing="0">
          <tr>
            <td width="91">Admission No.</td>
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
            <td width="57">Joining Class </td>
            <td width="57">Medium of Study </td>
            <td width="57">Amount</td>
          </tr>
          <%
          ResultSet rs = pst.executeQuery();
          while(rs.next()){
          %>
		  <tr>
            <td ><div align="center">&nbsp;<%=rs.getString(24)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(23)%></div></td>
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
            <td><div align="center">&nbsp;<%=rs.getString(25)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(18)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(19)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(20)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(21)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getString(22)%></div></td>
            <td><div align="center">&nbsp;<%=rs.getInt(26)%></div></td>
          </tr>
          <%}%>
      </table>






        </p>  <p>
          <%}else{%>
          <center><br>please check the date</center>
          <%}%>
      </p>
      </td>
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

