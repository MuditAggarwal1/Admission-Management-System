<%@ page language="java" %>
<%@ page import="java.sql.*,java.io.*" %>
<%@ page import="java.lang.*" %>
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

<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top">

        <%try{
String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pswd=application.getInitParameter("pswd");
Class.forName(driver);
Connection con=DriverManager.getConnection(url,user,pswd);
String amt1= request.getParameter("amt1").trim();
String amt2= request.getParameter("amt2").trim();
String admno= request.getParameter("a").trim();
int amount1=Integer.parseInt(amt1);
int amount2=Integer.parseInt(amt2);
int admnoo=Integer.parseInt(admno);
String admdt= request.getParameter("admdate").trim();
String name= request.getParameter("fn").trim();
String gender= request.getParameter("gn").trim();
String lang= request.getParameter("mt").trim();
String dob= request.getParameter("dob").trim();
String national= request.getParameter("nt").trim();
String religion= request.getParameter("rg").trim();
String caste= request.getParameter("ct").trim();
String cname= request.getParameter("ctn").trim();
String fname= request.getParameter("fname").trim();
String foccup= request.getParameter("foccup").trim();
String mname= request.getParameter("mname").trim();

String moccup= request.getParameter("moccup").trim();
String gname= request.getParameter("gname").trim();
String goccup= request.getParameter("goccup").trim();
String addr= request.getParameter("addr").trim();
String lclass= request.getParameter("stc").trim();
String school= request.getParameter("sch").trim();
String pmt= request.getParameter("prom").trim();
String tc= request.getParameter("tcsubmit").trim();
String tcno= request.getParameter("tcno").trim();
String date= request.getParameter("tcs").trim();
String jclass= request.getParameter("jc").trim();
String medium= request.getParameter("ms").trim();
String mole1= request.getParameter("m1").trim();
String mole2= request.getParameter("m2").trim();
String change=request.getParameter("change1").trim();

if(change.equalsIgnoreCase("yes")){
String file=request.getParameter("file").trim();
    File photo=new File(file);
FileInputStream fis=new FileInputStream(photo);
PreparedStatement pst2 = con.prepareStatement("delete from admissions where admno=?");
 pst2.setInt(1, admnoo);
int num=pst2.executeUpdate();

if(num==1){
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
        pst1.setInt(27, admnoo);
pst1.setString(28, pmt);
pst1.setInt(29, amount2);
int num1=pst1.executeUpdate();

if(amount1!=amount2){

int result=amount2-amount1;
Statement statement1 = con.createStatement();
int num2= statement1.executeUpdate("update amount set amt=amt+"+result+" where date='"+admdt+"';");

}

if(num1==1){
%><p>&nbsp;</p>
<center>Updated Successfully<br>
    <form action="admission3.jsp" method="post">Admission number is<span class="style2"> <strong><%=admno %></strong></span>
<input name="admno" value="<%=admno %>" type="hidden" /><br> To print out application. <input type="submit" value="Click Here" />
</form>
     </center>

<%

}
}}
else{

 Statement statement4 = con.createStatement();
int num4= statement4.executeUpdate("update admissions set Name='"+name+"' where admno="+admno+";");
 Statement statement5 = con.createStatement();
int num5= statement5.executeUpdate("update admissions set Gender='"+gender+"' where admno="+admno+";");
 Statement statement6 = con.createStatement();
int num6= statement6.executeUpdate("update admissions set lang='"+lang+"' where admno="+admno+";");
 Statement statement7 = con.createStatement();
int num7= statement7.executeUpdate("update admissions set dob='"+dob+"' where admno="+admno+";");
 Statement statement8 = con.createStatement();
int num8= statement8.executeUpdate("update admissions set national='"+national+"' where admno="+admno+";");
 Statement statement9 = con.createStatement();
int num9= statement9.executeUpdate("update admissions set religion='"+religion+"' where admno="+admno+";");
 Statement statement10 = con.createStatement();
int num10= statement10.executeUpdate("update admissions set caste='"+caste+"' where admno="+admno+";");
 Statement statement11 = con.createStatement();
int num11= statement11.executeUpdate("update admissions set cname='"+cname+"' where admno="+admno+";");
 Statement statement12 = con.createStatement();
int num12= statement12.executeUpdate("update admissions set fname='"+fname+"' where admno="+admno+";");
 Statement statement13 = con.createStatement();
int num13= statement13.executeUpdate("update admissions set foccup='"+foccup+"' where admno="+admno+";");
 Statement statement14 = con.createStatement();
int num14= statement14.executeUpdate("update admissions set mname='"+mname+"' where admno="+admno+";");
 Statement statement15 = con.createStatement();
int num15= statement15.executeUpdate("update admissions set moccup='"+moccup+"' where admno="+admno+";");
 Statement statement16 = con.createStatement();
int num16= statement16.executeUpdate("update admissions set gname='"+gname+"' where admno="+admno+";");
 Statement statement17 = con.createStatement();
int num17= statement17.executeUpdate("update admissions set goccup='"+goccup+"' where admno="+admno+";");

 Statement statement18 = con.createStatement();
int num18= statement18.executeUpdate("update admissions set addr='"+addr+"' where admno="+admno+";");
 Statement statement19 = con.createStatement();
int num19= statement19.executeUpdate("update admissions set lastclass='"+lclass+"' where admno="+admno+";");
 Statement statement20 = con.createStatement();
int num20= statement20.executeUpdate("update admissions set oldschool='"+school+"' where admno="+admno+";");
 Statement statement21 = con.createStatement();
int num21= statement21.executeUpdate("update admissions set prom='"+pmt+"' where admno="+admno+";");
 Statement statement22 = con.createStatement();
int num22= statement22.executeUpdate("update admissions set tcsubmit='"+tc+"' where admno="+admno+";");
 Statement statement23 = con.createStatement();
int num23= statement23.executeUpdate("update admissions set tcno='"+tcno+"' where admno="+admno+";");
Statement statement24 = con.createStatement();
int num24= statement24.executeUpdate("update admissions set tcdate='"+date+"' where admno="+admno+";");
Statement statement25 = con.createStatement();
int num25= statement25.executeUpdate("update admissions set joinclass='"+jclass+"' where admno="+admno+";");
Statement statement26 = con.createStatement();
int num26= statement26.executeUpdate("update admissions set medium='"+medium+"' where admno="+admno+";");
Statement statement27 = con.createStatement();
int num27= statement27.executeUpdate("update admissions set mole1='"+mole1+"' where admno="+admno+";");
Statement statement28 = con.createStatement();
int num28= statement28.executeUpdate("update admissions set mole2='"+mole2+"' where admno="+admno+";");

if(amount1!=amount2){
Statement statement29 = con.createStatement();
int num29= statement29.executeUpdate("update admissions set amt="+amount2+" where admno="+admno+";");
int result=amount2-amount1;
Statement statement1 = con.createStatement();
int num2= statement1.executeUpdate("update amount set amt=amt+"+result+" where date='"+admdt+"';");
}
%><p>&nbsp;</p>
<center>Updated Successfully<br>
    <form action="admission3.jsp" method="post">Admission number is<span class="style2"> <strong><%=admno %></strong></span>
<input name="admno" value="<%=admno %>" type="hidden" /><br> To print out application. <input type="submit" value="Click Here" />
</form>
     </center>

<%
}
%>



    </td>
  </tr>
</table>

<p>
  <%
}
catch(Exception e)
{out.println(e); }


%></p>

<p>&nbsp;</p>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>

