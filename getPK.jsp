  <%@ include file="dataheader.jsp"%>
<%@ page import ="java.sql.*"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>CP-ABE</title>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<%@ page import ="java.sql.*,PKE.*,it.unisa.dia.gas.jpbc.*,it.unisa.dia.gas.plaf.jpbc.pairing.PairingFactory, it.unisa.dia.gas.plaf.jpbc.pairing.a.TypeACurveGenerator,SPHF.*"%>

<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%! int rno=0;
String s=null;StringBuffer filedata=null;%>
<%

	 unm=(String)session.getAttribute("unm");
 s= String.valueOf(rno);String fid1=request.getParameter("fid");
 	 String fnm1=request.getParameter("fname");
 String ck=request.getParameter("sk");
 filedata=(StringBuffer)session.getAttribute("data");
  //String kw=request.getParameter("keywords");


 %>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,pk=null;
int i=0;
byte data[]=null;
%>
<% 
	 unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fnm");
	 String kw=request.getParameter("keywords");

CurveGenerator curveGenerator = new TypeACurveGenerator(160, 256);
		CurveParameters curveParameters = curveGenerator.generate();

		SPHF ch = new SPHF(curveGenerator, curveParameters);

		SPHF.Keys key = ch.SPHFSetup();
String PK=key.getPublicKey().toString();
String SK=key.getPrivateKey().toString();
 Connection con1=databasecon.getconnection();
 Statement st=con1.createStatement(); Statement st1=con1.createStatement();
 ResultSet rst=st.executeQuery("select count(*) from keygen");

if(rst.next()){

	int cnt=rst.getInt(1);
	System.out.println("cnt="+cnt);
	if(cnt==0){
 PreparedStatement p1=con1.prepareStatement("insert into keygen(pk,sk)values(?,?)");
p1.setString(1,PK);
p1.setString(2,SK);
p1.executeUpdate();
}
}

 ResultSet rst1=st1.executeQuery("select  pk from keygen");

if(rst1.next()){
pk=rst1.getString(1);
}

	 Connection con=databasecon.getconnection();
Statement stt=con.createStatement();

ResultSet r1=stt.executeQuery("select filedata from cloud where fid="+fid+" ");
if(r1.next())
	{
data=r1.getBytes(1);
	}
%>




<div class="contact-w3layouts" id="contact">
					<div class="container">
						<div class="agile_wthree_inner_grids">
							
							<div class="col-md-6 mail-grid1-form ">
								<form action="EncKW.jsp" method="post">
							<h1><font size="" color="ff6600">FileUploading</font><h1><br><br>
									 <table>
    <tr>
	<td><h3>File ID:</td> <td><input type="text" name="fid" value=<%=fid%> placeholder="" required></td>
</tr>   <tr></tr><tr></tr>
<tr><td>
	 <h3>FileName:</td><td><input type="text" name="fnm" value=<%=fnm%> placeholder="" required></td></tr>  <tr></tr><tr></tr>
    <tr><td><h3>EncryptedData:&nbsp;</td><td><textarea name="data" cols=30 rows=10><%=new String(data)%></textarea></td></tr><tr></tr><tr></tr>
  <tr><td>
	<h3>Keywords:</td><td><textarea name="keywords" rows="2" cols="30"><%=kw%></textarea></td></tr>
	 <tr><td>
	 <h3>PublicKey:</td><td><input type="text" name="pk" value=<%=pk%> readonly  required></td></tr>  <tr></tr><tr></tr>
	<tr></tr><tr></tr><tr><td>
	 </td><td><input type="submit" value="EncKW">  </td></tr>  <tr></tr><tr></tr>
	 
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