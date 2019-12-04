<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<body>
    <div ><br><br>
 <section class="register"><br><br><br>
      <center><h1><font size="" color="ff6600">Search Results </font></h1><br>

<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  

<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
Statement st1=con.createStatement();
%>
<table cellspacing="20" cellpadding="10"  border="2" >
<tr><th width="20%" align="center"><font size="" color="ff3300">Fid</font></th><th width="20%"><font size="" color="ff3300">FileName</th><th width="20%"><font size="" color="ff3300">View</th></tr>

<%
ResultSet r=st.executeQuery("select distinct fid,fname from results where unm='"+session.getAttribute("unm")+"' ");
ResultSet r1=st1.executeQuery("select distinct fid,fname from results where unm='"+session.getAttribute("unm")+"' ");
if(r1.next()){
while(r.next()){%>
<tr><td align="center"><%=r.getString(1)%></td>
<td align="center"><%=r.getString(2)%></td>
<td align="center"><a href="fileview.jsp?fid=<%=r.getString(1)%>&fname=<%=r.getString(2)%>"><font size="" color="#3366ff">View</font></a></td></tr>
<%}%>
<%
}else{

 out.println("<script>alert('No Records Found')</script>");
}

}catch(Exception e){e.printStackTrace();}%>
</table>    <br><br><br><br><br><br><br><br>
<%@ include file="Footer.jsp"%>