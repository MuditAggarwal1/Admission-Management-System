<%@ page import="java.sql.*,java.io.*" %>
<%@ page session="true" %>
<%

String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pswd=application.getInitParameter("pswd");
Class.forName(driver);
Connection con=DriverManager.getConnection(url,user,pswd);
String u=request.getParameter("uname");
String p=request.getParameter("pass");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from login");
int flag=0;
while(rs.next())
{
    String name = rs.getString(1);
    String pas=rs.getString(2);
    if(name.equals(u))
    {
        if(p.equals(pas))
        {


try{
    String path=application.getInitParameter("path");
    File file=new File(path);
    boolean exists = file.exists();
    if (!exists) {
    boolean success = file.mkdir();
                 }
    }
catch (Exception e){//Catch exception if any
      out.println("Error: " + e.getMessage());
    }

session.setAttribute("user",u);
session.setAttribute("pass",p);
%>
    <jsp:forward page = "home.jsp"></jsp:forward>
<%flag=1;

        }
    }
}
if(flag==0)
{
%>
 <jsp:forward page = "fail.jsp"></jsp:forward>
<%
}
stmt.close();
con.close();
%>
