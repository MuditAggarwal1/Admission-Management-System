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
	color: #AD003A;
	font-weight: bold;
}
.style4 {
	font-size: 20px;
	font-weight: bold;
	color: #AD003A;
}
.style5 {font-size: 9px}
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
pst = con.prepareStatement("select * from amount where date=?");
 pst.setString(1, corrdate);
}
 else{
if(date2.equalsIgnoreCase("last date")){
PreparedStatement pstt=con.prepareStatement("select max(rid) from amount");
 ResultSet rst = pstt.executeQuery();
if(rst.next()){
   num22=Integer.parseInt(rst.getString(1));
    PreparedStatement pstt2=con.prepareStatement("select date from amount where rid=?");
 pstt2.setInt(1, num22);
    ResultSet rst2 = pstt2.executeQuery();
 if(rst2.next()){
pst = con.prepareStatement("select * from amount where date between ? and ?");
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
pst = con.prepareStatement("select * from amount where date between ? and ?");
 pst.setString(1, corrdate);
  pst.setString(2, corrdate2);
}
}
ResultSet rs1 = pst.executeQuery();
if(rs1.next()){
  %>

      <p align="center" class="style4">B's Register
      <p align="center" class="style4">

      <table width="801" height="95" border="1" cellpadding="5" cellspacing="0">
          <tr>
            <td width="67"><div align="center" style="width:70;">Date</div></td>
            <td width="112" ><div align="center" style="width:70;">Collection on the day (B's Share)</div> </td>
            <td width="112"><div align="center" style="width:90;">
              <div align="center">Particulars</div>
            </div></td>
            <td width="50"><div align="center">Cash on Hand </div></td>
            <td width="51"><div align="center">Cash in SB </div></td>
            <td width="112"><div align="center" style="width:90;">
              <div align="center">Date  </div>
            </div></td>
            <td width="50"><div align="center">V.No.</div></td>
            <td width="106"><div align="center">Particulars of expenditure </div></td>
            <td width="80"><div align="center">Amount of expenditure </div></td>
            <td width="63"><div align="center">Withdrawl</div></td>
            </tr>
          <%
          ResultSet rs = pst.executeQuery();
         while(rs.next()){

          %>
		 <tr>
            <td ><div align="center"><%=rs.getString(1)%></div></td>

            <td><div align="center"><%=rs.getFloat(7)*1/4%></div></td>
            <%
            if(rs.getString(3).equalsIgnoreCase("yes")){%>
            <td><div align="center" class="style3"> To Bank - <%=rs.getFloat(5)*1/4%></div></td>
            <%}else{%>
            <td><div align="center">&nbsp;</div></td><%}%>
            <td><div align="center">&nbsp;<%=rs.getFloat(2)*1/4%></div></td>
            <td><div align="center">&nbsp;<%=rs.getFloat(4)*1/4%></div></td>
            <td><div align="center">&nbsp;</div></td>
            <td><div align="center">&nbsp;</div></td>
            <td><div align="center">&nbsp;</div></td>
            <td><div align="center">&nbsp;</div></td>
            <td><div align="center">&nbsp;</div></td>
            </tr>
          <%}%>
      </table>






        </p>  <p>
          <%}
 else{
 %>
 <center>There are still no admissions</center>
 <%
 }
 %></p>
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

`