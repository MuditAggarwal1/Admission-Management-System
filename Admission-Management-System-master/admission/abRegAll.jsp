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
.style4 {
	font-size: 20px;
	font-weight: bold;
	color: #AD003A;
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
<center>
  <div style="width:970; height:400; overflow:auto;" align="center" id="print">
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
        PreparedStatement pst = con.prepareStatement("select * from amount");
 ResultSet rs1 = pst.executeQuery();
 if(rs1.next()){
float a=0;
float b=0;
  %>

      <p align="center" class="style4">A &amp; B 's Register</p>
      <p align="center" class="style4">

      <table width="801" height="233" border="1" cellpadding="5" cellspacing="0">
          <tr>
            <td width="67" rowspan="2"><div align="center" style="width:70;">
              <div align="center">Date</div>
            </div></td>
            <td width="112" rowspan="2" ><div align="center">Group</div></td>
            <td colspan="2" ><div align="center">Opening Balance </div></td>
            <td width="112" rowspan="2" ><div align="center" style="width:70;">
              <div align="center">Collection on the day </div>
            </div> </td>
            <td width="112" rowspan="2"><div align="center" style="width:90;">
              <div align="center">Withdrawl</div>
            </div></td>
            <td width="50" rowspan="2"><div align="center">Total Cash on Hand </div></td>
            <td width="112" rowspan="2"><div align="center" style="width:90;">
              <div align="center">Date  </div>
            </div></td>
            <td width="50" rowspan="2"><div align="center">V.No.</div></td>
            <td width="106" rowspan="2"><div align="center">Particulars of expenditure </div></td>
            <td width="80" rowspan="2"><div align="center">Amount of expenditure </div></td>
            <td width="63" rowspan="2"><div align="center">Deposit</div></td>
            <td colspan="2"><div align="center">Closing Balance </div></td>
            </tr>
          <%
          ResultSet rs = pst.executeQuery();

  if(rs.next()){

a=rs.getFloat(4);
b=rs.getFloat(2);
                        %>
		  <tr>
		    <td width="112"><div align="center">Cash in SB </div></td>
		    <td width="112"><div align="center">Cash on Hand </div></td>
		    <td width="63"><div align="center">Cash on Hand </div></td>
		    <td width="63"><div align="center">Cash in SB </div></td>
		    </tr>
		  <tr>
            <td rowspan="3" ><div align="center">Opening Balance</div>              </td>
            <td><div align="center"><strong>A</strong></div></td>
            <td><div align="center">&nbsp;<%=a*3/4%></div></td>
            <td><div align="center">&nbsp;<%=b*3/4%></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"><%=b*3/4%></div></td>
            <td><div align="center"><%=a*3/4%></div></td>
            </tr>
		  <tr>
		    <td><div align="center"><strong>B</strong></div></td>
		    <td><div align="center">&nbsp;<%=a*1/4%></div></td>
		    <td><div align="center"><%=b*1/4%></div></td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td><div align="center"><%=b*1/4%></div></td>
		    <td><div align="center">&nbsp;<%=a*1/4%></div></td>
		    </tr>
		  <tr>
            <td height="31"><div align="center"><strong>Total</strong></div></td>
            <td><div align="center">&nbsp;<%=a%></div></td>
            <td><div align="center"><%=b%></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><div align="center"><%=b%></div></td>
            <td><div align="center"><%=a%>&nbsp;</div></td>
            </tr>
          <%}
		  
		  
		  
		   while(rs.next()){
float c=rs.getFloat(4);
float d=rs.getFloat(2);
float e=rs.getFloat(7);
float f=rs.getFloat(5);
String dep=rs.getString(3);
                        %>
	
		  <tr>
            <td rowspan="3" ><div align="center"><%=rs.getString(1)%></div>              </td>
            <td><div align="center"><strong>A</strong></div></td>
            <td><div align="center">&nbsp;<%=a*3/4%></div></td>
            <td><div align="center"><%=b*3/4%></div></td>
            <td><div align="center"><%=e*3/4%></div></td>
            <td>&nbsp;</td>
            <td><div align="center"><%=b*3/4 + e*3/4%></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <%if(dep.equalsIgnoreCase("yes")){
            %>
            <td><%=f*3/4%></td>
<%
            }
            else{
            %>
            <td>&nbsp;</td>
<%}%>
			
			<td><div align="center">&nbsp;<%=d*3/4%></div></td>
            <td><div align="center"><%=c*3/4%></div></td>
		  </tr>

		  <tr>
		    <td><div align="center"><strong>B</strong></div></td>
		    <td><div align="center">&nbsp;<%=a*1/4%></div></td>
		    <td><div align="center"><%=b*1/4%></div></td>
		    <td><div align="center"><%=e*1/4%></div></td>
		    <td>&nbsp;</td>
		    <td><div align="center">
		      <div align="center"><%=b*1/4 + e*1/4%></div>
		    </div></td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		         <%if(dep.equalsIgnoreCase("yes")){
            %>
            <td><%=f*1/4%></td>
<%
            }
            else{
            %>
            <td>&nbsp;</td>
<%}%>
		    <td><div align="center">&nbsp;<%=d*1/4%></div></td>
		    <td><div align="center"><%=c*1/4%></div></td>
		  </tr>
		  <tr>
            <td height="31"><div align="center"><strong>Total</strong></div></td>
            <td><div align="center">&nbsp;<%=a%></div></td>
            <td><div align="center"><%=b%></div></td>
            <td><div align="center"><%=e%></div></td>
            <td>&nbsp;</td>
            <td><div align="center">
              <div align="center"><%=b+e%></div>
            </div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
                <%if(dep.equalsIgnoreCase("yes")){
            %>
            <td><%=f%></td>
<%
            }
            else{
            %>
            <td>&nbsp;</td>
<%}%>
            <td><div align="center">&nbsp;<%=d%></div></td>
            <td><div align="center"><%=c%></div></td>
		  </tr>
          <%
           a=c;
           b=d;
                 }%>
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
</table>
</div>
</center>
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

