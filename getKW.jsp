  <%@ include file="dataheader.jsp"%>
  <%@page import="java.util.*"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title></title>



</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,Keywords.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null,filedata;
String filename=null,unm=null,fid=null,fnm=null;
ArrayList al=new ArrayList();
int i=0;


%>
<% 
unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fname");
	 filedata=(StringBuffer)session.getAttribute("data");
Connection con=databasecon.getconnection();
int no=0;

al.clear();
stopWord word=new stopWord();
al=word.keywords(new String(filedata));

%>



<div class="contact-w3layouts" id="contact">
					<div class="container">
						<div class="agile_wthree_inner_grids">
							
							<div class="col-md-6 mail-grid1-form ">
								<form action="getContentKey.jsp" method="post">
							<h1><font size="" color="ff6600">FileUploading</font><h1><br><br>
									<table>
    <tr>
	<td><h3>File ID:</td> <td><input type="text" name="fid" value=<%=fid%> placeholder="" required></td>
</tr>   <tr></tr><tr></tr>
<tr><td>
	 <h3>FileName:</td><td><input type="text" name="fname" value=<%=fnm%> placeholder="" required></td></tr>  <tr></tr><tr></tr>
    <tr><td> <h3>FileData:</td><td><textarea name="file" cols=30 rows=10><%=filedata%></textarea></td></tr><tr></tr><tr></tr>
     <tr><td>
	<h3>Keywords:</td><td><textarea name="keywords" rows="2" cols="30"><%=al%></textarea></td></tr>
	 
	 <tr><td>
	 </td><td><input type="submit" value="GetKey">  </td></tr>  <tr></tr><tr></tr>
	 
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