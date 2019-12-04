<%@ include file="uheader.jsp"%>
  <%@page import="java.util.*"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">



</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null,filedata;
String filename=null,snm=null,fid=null,fnm=null;
int i=0;


%>
<% 

	
 String kewords=request.getParameter("keywords");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

ResultSet r=st1.executeQuery("select  sk from keygen");
String skey="";
if(r.next())
	{
skey=r.getString(1);
	}
	
%>
<body>
  <div class="container">
   <section class="register"><br><br><br>
      <form method="post" action="search.jsp">
 <table>
    <tr>
	<td><h3>Keyword:</td> <td><input type="text" name="keywords" value=<%=kewords%> required></td></tr> 
	 <tr><td><h3>PrivateKey:</td><td><input type="text" name="sk" value=<%=skey%> readonly required></td></tr>
	 <tr><td>
     <tr></tr><tr></tr>
	 
	 <tr><td>
	 </td><td><input type="submit" value="Search">  </td></tr>  <tr></tr><tr></tr>
	   </table>
      </form>
    </section>
  </div><br><br><br><br><br>
</body>
<%@ include file="Footer.jsp"%>