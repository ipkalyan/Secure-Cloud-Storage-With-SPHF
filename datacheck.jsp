<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<%!int count=0;%>
<% String unm=request.getParameter("unm");
String pwd=request.getParameter("pwd");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from register where unm='"+unm+"' and pwd='"+pwd+"'  ");
if(r.next())
	{

String sts=r.getString(1);
	session.setAttribute("unm",unm);
	response.sendRedirect("OwnerHome.jsp");
	}else{
	response.sendRedirect("datalogin.jsp?msg1=fail");
	}
}catch(Exception e){e.printStackTrace();}

%>