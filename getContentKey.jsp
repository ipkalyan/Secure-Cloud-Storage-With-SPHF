  <%@ include file="dataheader.jsp"%>
  <%@page import="java.util.*"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title></title>



</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null,filedata;
String filename=null,unm=null,fid=null,fnm=null;
int i=0;


%>
<% 
Random rr=new Random();
int sk=rr.nextInt(1000000);
unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fname");
	 filedata=(StringBuffer)session.getAttribute("data");

 String kw=request.getParameter("keywords");
Connection con=databasecon.getconnection();
int no=0;
/*Statement st=con.createStatement();Statement st1=con.createStatement();
ResultSet rr1=st1.executeQuery("select no from uregister where unm='"+unm+"'");
if(rr1.next()){
no=rr1.getInt(1);
}
ResultSet r=st.executeQuery("select  pkey from keygen1 where uno='"+no+"' ");
String pkey="";
while(r.next())
	{
pkey=pkey+r.getString(1);
	}*/
%>



<div class="contact-w3layouts" id="contact">
					<div class="container">
						<div class="agile_wthree_inner_grids">
							
							<div class="col-md-6 mail-grid1-form ">
								<form action="Encryption.jsp" method="post">
							<h1><font size="" color="ff6600">FileUploading</font><h1><br><br>
									<table>
    <tr>
	<td><h3>File ID:</td> <td><input type="text" name="fid" value=<%=fid%> placeholder="" required></td>
</tr>   <tr></tr><tr></tr>
<tr><td>
	 <h3>FileName:</td><td><input type="text" name="fname" value=<%=fnm%> placeholder="" required></td></tr>  <tr></tr><tr></tr>
    <tr><td> <h3>FileData:</td><td><textarea name="file" cols=30 rows=10><%=filedata%></textarea></td></tr><tr></tr><tr></tr>

	  <tr><td>
	<h3>Keywords:</td><td><textarea name="keywords" rows="2" cols="30"><%=kw%></textarea></td></tr>
	 
	 <tr><td>
     <tr><td>
	 <h3>Content Key:</td><td><input type="text" name="sk" readonly value=<%=sk%>></td></tr>  <tr></tr><tr></tr>
	 
	 <tr><td>
	 </td><td><input type="submit" value="Encrypt">  </td></tr>  <tr></tr><tr></tr>
	 
	   </table>
								</form>
<br><br><br>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--//contact-->







<%@ include file="Footer.jsp"%>