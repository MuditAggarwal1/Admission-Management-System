<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*" %>
<%@ page session="true" %>

<jsp:include page="CheckSession.jsp"/>

<html>

<head>
<title>Admissions management System</title>
<script>
   function f1(){
var rid=document.admno.rid.value;

       if(rid=="0"){
           alert("please select rid");
           return false;
       }

return true;
}

</script>
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
    <td width="100%"><div align="center"><font face="Arial" size="2"><b> <font color="#FFFFFF"><a href="home.jsp">Home</a>&nbsp; | <a href="admission.jsp">Admissions</a><font face="Arial" size="2"><b> |&nbsp;<a href="details.jsp">Details</a> </b></font>|&nbsp;<font face="Arial" size="2"><b><a href="reg.jsp">Register</a></b></font><a href="reg.jsp">s</a>&nbsp;</font></b></font> <font face="Arial" size="2"><b><font color="#FFFFFF"> |&nbsp;&nbsp; <a href="deposit.jsp">Deposit </a><font face="Arial" size="2"><b> &nbsp;|&nbsp;&nbsp;<font face="Arial" size="2"><b><a href="rr.jsp">Rules &amp; regulations </a></b></font>&nbsp;</b></font></font></b></font> <font face="Arial" size="2"><b><font color="#FFFFFF"> |&nbsp;&nbsp; <a href="logout.jsp">Log Out </a></font></b></font></div></td>
  </tr>
</table>

<table width="800" height="222" border="0" align="center">
  <td height="214" valign="top">
  

    <p>
      <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.*" %>
      
        <%
String driver=application.getInitParameter("driver");
        String url=application.getInitParameter("url");
        String user=application.getInitParameter("user");
        String pswd=application.getInitParameter("pswd");
        Class.forName(driver);
       Connection con=DriverManager.getConnection(url,user,pswd);
PreparedStatement pst = con.prepareStatement("select admno from admissions");
 ResultSet rs = pst.executeQuery();
 
 try{
 if(rs.next()){
 %>
          <jsp:forward page = "admission1.jsp"></jsp:forward>
        <%
 }else{
 %>
    </p>
    <tr><p>&nbsp;</p>
    <p>This is the first time to use the system, then it is must and should to initialise the following values</p>
      <ul>
        <li>Starting Admission Number</li>
        <li>Present Cash in Bank</li>
        <li>Present Cash in Hand</li>
      </ul>
      <p>To initialise the values <span class="style3" onClick="window.open('init.jsp','_self')"><u><font color="#AD003A">Click here</font></u></span>. </p>
    
	
   <%}
    
    %>
</table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>
<%}catch(Exception e){}%>
