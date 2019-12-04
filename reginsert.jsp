<%@page import="databaseconnection.*,java.sql.*"%>
<%
String name = request.getParameter("name");
String uname = request.getParameter("uname");
String password = request.getParameter("password");
String email = request.getParameter("email");
String contact = request.getParameter("contact");

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
int i = st.executeUpdate("insert into register (name,unm,pwd,eid,cno)values('"+name+"','"+uname+"','"+password+"','"+email+"','"+contact+"')");

if(i>0){
response.sendRedirect("user.jsp?msg=succ");
}else{
response.sendRedirect("registration.jsp?msg=unsucc");
}
}
catch(Exception ae){
ae.printStackTrace();
}
%>