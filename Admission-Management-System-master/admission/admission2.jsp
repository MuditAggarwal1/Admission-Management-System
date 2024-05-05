
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
.style2 {color: #AD003A}
-->
   </style>
</head>
<body bgcolor="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
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
    <td valign="top"><%@ page import="java.sql.*,java.io.*" %>
<%@ page import="java.util.*" %>

<%try{
String driver=application.getInitParameter("driver");
        String url=application.getInitParameter("url");
        String user=application.getInitParameter("user");
        String pswd=application.getInitParameter("pswd");
        Class.forName(driver);
        Connection con=DriverManager.getConnection(url,user,pswd);
PreparedStatement pst = con.prepareStatement("select max(admno) from admissions");
 ResultSet rs = pst.executeQuery();
int admno=0;
 if(rs.next()){
   admno=rs.getInt(1)+1;
 }

String name= request.getParameter("name");
String gender= request.getParameter("gender");
String lang= request.getParameter("lang");
String dob= request.getParameter("dob");

String national= request.getParameter("national");
if(national.equalsIgnoreCase("no")||national == null || national.trim().equals("")){
national=request.getParameter("other");
}int num6=0;
String religion= request.getParameter("religion");
String caste= request.getParameter("caste");
String cname= request.getParameter("cname");
String fname= request.getParameter("fname");
String foccup= request.getParameter("foccup");
String mname= request.getParameter("mname");
String moccup= request.getParameter("moccup");
String gname= request.getParameter("gname");
String goccup= request.getParameter("goccup");
String addr= request.getParameter("addr");
String lclass= request.getParameter("lastclass");
String school= request.getParameter("school");
String pmt= request.getParameter("rb");
File photo=new File(request.getParameter("file"));
FileInputStream fis=new FileInputStream(photo);

String tc= request.getParameter("tc");
String tcno= request.getParameter("tcno");
String date= request.getParameter("date");
String jclass= request.getParameter("jclass");
String medium= request.getParameter("medium");
String mole1= request.getParameter("mole1");
String mole2= request.getParameter("mole2");
 String amt= request.getParameter("amt");
 int amount=Integer.parseInt(amt);
int dt= new java.util.Date().getDate();
int mt= new java.util.Date().getMonth();
int a = new java.util.Date().getYear();
mt=mt+1;
int yr=a+1900;
String admdt=dt+"-"+mt+"-"+yr;
int coll=0;
      PreparedStatement pst1 = con.prepareStatement("insert into admissions values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      pst1.setString(1, name);
	  pst1.setString(2, gender);
      pst1.setString(3, lang);
      pst1.setString(4, dob);
      pst1.setString(5, national);
         pst1.setString(6, religion);
	  pst1.setString(7, caste);
      pst1.setString(8, cname);
      pst1.setString(9, fname);
      pst1.setString(10, foccup);
         pst1.setString(11, mname);
	  pst1.setString(12, moccup);
      pst1.setString(13, gname);
      pst1.setString(14, goccup);
      pst1.setString(15, addr);
         pst1.setString(16, lclass);
	  pst1.setString(17, school);
       pst1.setBinaryStream(18,fis,(int)photo.length());
      pst1.setString(19, tc);
      pst1.setString(20, tcno);
         pst1.setString(21, date);
	  pst1.setString(22, jclass);
      pst1.setString(23, medium);
      pst1.setString(24, mole1);
     pst1.setString(25, mole2);
       pst1.setString(26, admdt);
        pst1.setInt(27, admno);
pst1.setString(28, pmt);
pst1.setInt(29, amount);
int num=pst1.executeUpdate();


PreparedStatement pst3 = con.prepareStatement("select amt,collection from amount where date=?");
pst3.setString(1, admdt);
ResultSet rs2 = pst3.executeQuery();

if(rs2.next())
    {
    coll=amount;
amount=amount+rs2.getInt(1);
coll=coll+rs2.getInt(2);
Statement statement1 = con.createStatement();
int num2= statement1.executeUpdate("update amount set amt="+amount+" where date='"+admdt+"';");
Statement statementt2 = con.createStatement();
int numt22= statementt2.executeUpdate("update amount set collection="+coll+" where date='"+admdt+"';");
    }
else{
PreparedStatement pst4 = con.prepareStatement("select max(rid) from amount");
ResultSet rs4 = pst4.executeQuery();
int rid;

if(rs4.next())
{

    
rid=rs4.getInt(1);
PreparedStatement pst5 = con.prepareStatement("select amt,sbamt from amount where rid=?");
pst5.setInt(1, rid);
ResultSet rs5 = pst5.executeQuery();
if(rs5.next()){
PreparedStatement pst6 = con.prepareStatement("insert into amount values(?,?,?,?,?,?,?)");
rid=rid+1;
coll=amount;
amount=amount+rs5.getInt(1);
String dep="no";
int sb=rs5.getInt(2);
int damt=0;
pst6.setString(1, admdt);
pst6.setInt(2,amount);
pst6.setString(3, dep);
pst6.setInt(4, sb);
pst6.setInt(5, damt);
pst6.setInt(6, rid);
pst6.setInt(7, coll);
num6=pst6.executeUpdate();
}}}
%>


<center><form action="admission3.jsp" method="post"><p>&nbsp;</p>Details are Successfully inserted.Admission number is<span class="style2"> <strong><%=admno %></strong></span>
<input name="admno" value="<%=admno %>" type="hidden" /><br> To print out application. <input type="submit" value="Click Here" />
</form></center>
<%
}
                 
catch(Exception e)
{out.println(e); }
 

%>


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
