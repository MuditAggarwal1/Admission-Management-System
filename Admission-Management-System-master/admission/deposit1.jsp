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
.style1 {
	color: #AD003A;
	font-weight: bold;
}
.style2 {color: #000000}
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
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
try{
String driver=application.getInitParameter("driver");
        String url=application.getInitParameter("url");
        String user=application.getInitParameter("user");
        String pswd=application.getInitParameter("pswd");
        Class.forName(driver);
        Connection con=DriverManager.getConnection(url,user,pswd);
String hand= request.getParameter("hand");
String bank= request.getParameter("bank");
String rid= request.getParameter("rid");
int damt=0;
int hand1=Integer.parseInt(hand);
int bank1=Integer.parseInt(bank);
int rid1=Integer.parseInt(rid);
int dt= new java.util.Date().getDate();
int mt= new java.util.Date().getMonth();
int a = new java.util.Date().getYear();
mt=mt+1;
int yr=a+1900;
String admdt=dt+"-"+mt+"-"+yr;

PreparedStatement pst4 = con.prepareStatement("select amt,sbamt,damt from amount where date=?");
pst4.setString(1, admdt);
ResultSet rs4 = pst4.executeQuery();

if(rs4.next()){
damt=rs4.getInt(3)+hand1;
bank1=bank1+hand1;
Statement statement1 = con.createStatement();
int num2= statement1.executeUpdate("update amount set amt=0 where date='"+admdt+"';");
Statement statement3 = con.createStatement();
int num3= statement3.executeUpdate("update amount set sbamt="+bank1+" where date='"+admdt+"';");
Statement statement4 = con.createStatement();
int num4= statement4.executeUpdate("update amount set damt="+damt+" where date='"+admdt+"';");
Statement statement5 = con.createStatement();
int num5= statement5.executeUpdate("update amount set deposit='yes' where date='"+admdt+"';");
}
else{

bank1=bank1+hand1;
damt=hand1;
rid1=rid1+1;
    PreparedStatement pstt2 = con.prepareStatement("insert into amount values(?,?,?,?,?,?)");
 pstt2.setString(1, admdt);
pstt2.setInt(2, 0);
      pstt2.setString(3, "yes");
      pstt2.setInt(4, bank1);
         pstt2.setInt(5, damt);
      pstt2.setInt(6, rid1);
int numt2=pstt2.executeUpdate();

}
%>
<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top"><p>&nbsp;</p>
<%
PreparedStatement pst8 = con.prepareStatement("select amt,sbamt,damt from amount where date=?");
pst8.setString(1, admdt);
ResultSet rs8 = pst8.executeQuery();

if(rs8.next()){
%>

      <p class="style1">Amount values are successfully updated.    </p>
      <p>Present cash in Hand - <%=rs8.getInt(1)%></p>
      <p>Present Cash in Bank - <%=rs8.getInt(2)%></p>
      <p>Today's Deposit amount - <%=rs8.getInt(3)%></p>
      <p class="style2">&nbsp;</p></td>
  <% }%>

  </tr>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>
<%
}

catch(Exception e)
{out.println(e); }


%>
</body>

</html>

