<html>

<head>

<%@ page import="java.sql.*,java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page session="true" %>


<jsp:include page="CheckSession.jsp"/>
<meta http-equiv="expires" content=<%= new java.util.Date() %>>
<meta http-equiv="no-cache"> 
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
response.setHeader("Pragma", "no-cache"); 
response.setDateHeader("Expires", 0); // Proxies. 


%>



<title>Admission management System</title>

<style type="text/css">
<!--
.style1 {
	font-size: 22px;
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>


</head>

<body  bgcolor="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<script>
function f2()
{
	if(confirm("Do you want to print?"))
	{
		var values = document.getElementById("print");
		var printing =
		window.open('','','left=0,top=0,width=900,height=400,toolbar=0,scrollbars=1,status=0');
		printing.document.write(values.innerHTML);
		printing.document.close();
		printing.focus();
		printing.print();
		printing.close();
	}
}

function refreshPage(){
window.location.reload( false );
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
    <td width="100%"><div align="center" class="style1">Admission Form </div></td>
  </tr>
</table>

<table width="800" height="350" border="0" align="center">
  <tr>
    <td valign="top">

	<%
String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pswd=application.getInitParameter("pswd");
String path=application.getInitParameter("path");
Class.forName(driver);
Connection con=DriverManager.getConnection(url,user,pswd);
String admno= request.getParameter("admno");
 try{
    PreparedStatement pst2 = con.prepareStatement("select * from admissions where admno=?");
     pst2.setString(1, admno);
     ResultSet rs1 = pst2.executeQuery();
     
     if( rs1.next())
         {

Blob b1=rs1.getBlob(18);
byte b[]=b1.getBytes(1,(int)b1.length());
OutputStream os=new FileOutputStream(path+admno+".jpeg");
os.write(b);

String fn=rs1.getString(1);
String gn=rs1.getString(2);
String mt=rs1.getString(3);
String dob=rs1.getString(4);
String nt=rs1.getString(5);
String rg=rs1.getString(6);
String ct=rs1.getString(7);
String ctn=rs1.getString(8);
String fname=rs1.getString(9);
     String mname=rs1.getString(11);
     String gname=rs1.getString(13);
String foccup=rs1.getString(10);
     String moccup=rs1.getString(12);
     String goccup=rs1.getString(14);
     String addr=rs1.getString(15);
     String stc= rs1.getString(16);
     String sch=rs1.getString(17);
         String tcsubmit=rs1.getString(19);
        String tcno= rs1.getString(20);
        String tcs=rs1.getString(21);
        String jc=rs1.getString(22);
        String ms=rs1.getString(23);
        String m1=rs1.getString(24);
        String m2=rs1.getString(25);
        String admdate=rs1.getString(26);
     int a=rs1.getInt(27);
     String prom=rs1.getString(28);
     String amt=rs1.getString(29);
%>


<form onSubmit="" action="updateDetails.jsp" method="post">
  <p>&nbsp;</p>

  <input type="hidden" value="<%=fn%>" name="name" />
  <input type="hidden" value="<%=gn%>" name="gender" />
  <input type="hidden" value="<%=mt%>" name="lang" />
  <input type="hidden" value="<%=dob%>" name="dob" />
  <input type="hidden" value="<%=nt%>" name="national" />
  <input type="hidden" value="<%=rg%>" name="religion" />
  <input type="hidden" value="<%=ct%>" name="caste" />
  <input type="hidden" value="<%=ctn%>" name="cname" />
  <input type="hidden" value="<%=fname%>" name="fname" />
  <input type="hidden" value="<%=foccup%>" name="foccup" />
  <input type="hidden" value="<%=mname%>" name="mname" />
  <input type="hidden" value="<%=moccup%>" name="moccup" />
  <input type="hidden" value="<%=gname%>" name="gname" />
  <input type="hidden" value="<%=goccup%>" name="goccup" />
  <input type="hidden" value="<%=addr%>" name="addr" />
  <input type="hidden" value="<%=stc%>" name="lastclass" />
  <input type="hidden" value="<%=sch%>" name="school" />
  <input type="hidden" value="<%=tcsubmit%>" name="tc" />
  <input type="hidden" value="<%=tcno%>" name="tcno" />
  <input type="hidden" value="<%=tcs%>" name="date" />
   <input type="hidden" value="<%=jc%>" name="jclass" />
  <input type="hidden" value="<%=ms%>" name="medium" />
  <input type="hidden" value="<%=m1%>" name="mole1" />
  <input type="hidden" value="<%=m2%>" name="mole2" />
  <input type="hidden" value="<%=admdate%>" name="adate" />
  <input type="hidden" value="<%=a%>" name="ano" />
  <input type="hidden" value="<%=prom%>" name="rb" />
  <input type="hidden" value="<%=amt%>" name="amt" />

<div id="print">

  <table width="847" border="1" align="center" cellpadding="10">
    <tr>
      <td>Admission No. :</td>
      <td><%=a%></td>
      <td>Admission Date: </td>
      <td><%=admdate%></td>
      <td width="197" rowspan="5" valign="top"><img src='images/<%=admno%>.jpeg' width=197 height="194" align="top" /></td>
    </tr>
    <tr>
      <td colspan="2">Full Name:</td>
      <td colspan="2"><%=fn%></td>
    </tr>
    <tr>
      <td colspan="2">Gender:</td>
      <td colspan="2"><%=gn%></td>
    </tr>
    <tr>
      <td colspan="2">Mother Tongue:</td>
      <td colspan="2"><%=mt%></td>
    </tr>
    <tr>
      <td colspan="2">Date of Birth :</td>
      <td colspan="2"><%=dob%></td>
    </tr>
    <tr>
      <td colspan="2">Nationality:</td>
      <td colspan="2"><%=nt%></td>
    </tr>
    <tr>
      <td colspan="2">Religion:</td>
      <td colspan="2"><%=rg%></td>
    </tr>
    <tr>
      <td width="107">Caste:</td>
      <td width="78"><%=ct%></td>
      <td width="99">Caste Name: </td>
      <td width="242"><%=ctn%></td>
    </tr>
       <%

   if(!(fname == null || fname.trim().equals(""))){
     %>
    <tr>
      <td>Father Name : </td>
      <td><%=fname%></td>
      <td>Occupation : </td>
      <td><%=foccup%></td>
    </tr><%
    }if(!(mname == null || mname.trim().equals(""))){
    %>
    <tr>
      <td>Mother Name : </td>
      <td><%=mname%></td>
      <td>Occupation : </td>
      <td><%=moccup%></td>
      </tr>
      <%
    }if(!(gname == null || gname.trim().equals(""))){
    %>
    <tr>
      <td>Guardian Name : </td>
      <td><%=gname%></td>
      <td>Occupation : </td>
      <td><%=goccup%></td>
      </tr>
  <%
    }
    %>

    <tr>
      <td colspan="2">Address :</td>
      <td colspan="2"><%=addr%></td>
    </tr>
    <tr>
      <td colspan="4"> Studied Class <%=stc%>, in the School <%=sch%></td>
      </tr>
    <tr>
      <td colspan="2">Is having eligibility for Promotion : </td>
      <td colspan="2"><%=prom%></td>
    </tr>
	
	<%

    
    if(tcsubmit.equalsIgnoreCase("yes") ){%>
    <tr>
      <td colspan="4" align="left">Transfer Certificate With Number <%=tcno%> , dated on <%=tcs%> is SUBMITTED </td>
      </tr>
	  <%}
	  else{%>
	  <tr>
      <td colspan="4" align="left">Transfer Certificate is not SUBMITTED </td>
      </tr>
	  
	 <% }%>
      <tr>
        <td colspan="2">Joining Class :</td>
        <td colspan="2"><%=jc%></td>
      </tr>
      <tr>
        <td colspan="2">Medium of Study : </td>
        <td colspan="2"><%=ms%></td>
      </tr>
      <tr>
        <td colspan="2" valign="top">Moles of Identification : </td>
        <td colspan="2"><p>1. <%=m1%></p>
          <p>2. <%=m2%></p></td>
      </tr>
      <tr>
      <td colspan="2">Amount :</td>
      <td colspan="2"><%=amt%></td>
    </tr>
  </table>


<div align="center">
  <p align="left"><strong>Parent's / Guardian's Signature&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Head Master's</strong>
    <strong>Signature</strong>
</div></div>

  <div align="center">
    <table width="200" border="0">
      <tr>
        <td width="96"><div align="center">
          <label>
         <input type="button" value="Print" onClick="return f2()">
          </label>
        </div></td>
        <td width="94"><div align="center">
          <input type="submit" name="Submit2" value="Update" />
</div></td>
      </tr>
    </table>
  </div>
    <%     }
     else{
     out.println("Invalid Admission Number");
     }
 }
catch(Exception e)
{out.println(e); }

con.close();
%>
  </p>

</form></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
  </table>
<table border="0" width="100%" background="img/botbkg.gif" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><img border="0" src="img/botbkg.gif" width="38" height="14"></td>
  </tr>
</table>


</body>

</html>
