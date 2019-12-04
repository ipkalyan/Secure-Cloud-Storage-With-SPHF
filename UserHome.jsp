<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<% String sent = request.getParameter("sent");
if(sent != null){
out.println("<script>alert('keywords are sent to server')</script>");
}%>
<body><br><br>
<font color="orange"><strong>&nbsp;Welcome to DataUser</strong></font>
    <br>
 <center><h2><img src="images/A.png" width="545" height="390" border="0" alt=""></center>

</body>
</html><br><br><br>
<%@ include file="Footer.jsp"%>
