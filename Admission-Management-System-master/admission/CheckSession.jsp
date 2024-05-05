<%

String UserId = (String)session.getAttribute("user");
String password=(String) session.getAttribute("pass");
        if(UserId == null || UserId.trim().equals("")) {
 if(password==null ||password.trim().equals("")){

                       session.invalidate();
            %>
            <script language=javascript>
		window.opener = top; window.opener.location.replace("exp.jsp");
            </script>
            <%
        }}
%>
