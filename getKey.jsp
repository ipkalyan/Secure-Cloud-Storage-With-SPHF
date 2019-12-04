  <%@ include file="uheader.jsp"%>
<%@ page import ="java.sql.*"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%! int rno=0;
String s=null;StringBuffer filedata=null;%>

<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,ckey=null;
int i=0;
byte data[]=null;
%>
<% 
	 unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fnm");
	 Connection con=databasecon.getconnection();
Statement st=con.createStatement();Statement st1=con.createStatement();

ResultSet r1=st.executeQuery("select filedata,ckey from cloud where fid="+fid+" ");
if(r1.next())
	{
data=r1.getBytes(1);
ckey=r1.getString(2);
	}
%>
<body>
  <div class="container">
    <section class="register"><br><br><br>
      <center><h1><font size="" color="ff6600">FileDownloading</font></h1><br>
      <form method="post" action="Decrypt.jsp">
 <table>
    <tr>
	<td><h3>File ID:</td> <td><input type="text" name="fid" value=<%=fid%> placeholder="" required></td>
</tr>   <tr></tr><tr></tr>
<tr><td>
	 <h3>FileName:</td><td><input type="text" name="fnm" value=<%=fnm%> placeholder="" required></td></tr>  <tr></tr><tr></tr>
    <tr><td><h3>EncryptedData:&nbsp;</td><td><textarea name="fname" cols=30 rows=10 readonly><%=new String(data)%></textarea></td></tr><tr></tr><tr></tr>
  
	 <tr>
	<td><h3>ContentKey:</td> <td><input type="text" name="ckey" value=<%=ckey%> readonly placeholder="" required></td>
</tr>   <tr></tr><tr></tr>
	<tr></tr><tr></tr><tr><td>
	 </td><td><input type="submit" value="Decrypt">  </td></tr>  <tr></tr><tr></tr>
	 
	   <table>
      </form>
  </section>
</table>

<br><br><br><br><br><br>
   </center>   
        </div>        </div> 



</body><%@ include file="Footer.jsp"%>