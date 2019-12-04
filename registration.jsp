<%@include file="Header.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Registration Unsuccessfully..Please check once again..')</script>");
}
%>
<!--<div id="content1">
        <div class="content_item2">-->
		<br><br><br>
		
<form action="reginsert.jsp" method="post">
<table align="center">
<tr><td colspan="3"><font size="6" color="orange"><b><u>Registration Form</u></b></font></td></tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Name</font></td>
<td><font size="5">:</font></td>
<td><input type="text" name="name"  pattern="[A-Za-z]+" required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">User Name</font></td>
<td><font size="5">:</font></td>
<td><input type="text" name="uname"   required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">Password</font></td>
<td><font size="5">:</font></td>
<td><input type="password" name="password"  required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">Email</font></td>
<td><font size="5">:</font></td>
<td><input type="email" name="email"  required/></td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<td><font size="5">Contact</font></td>
<td><font size="5">:</font></td>
<td><input type="text" name="contact" maxlength="10" pattern="[0-9]{10}" title="10 digit mobile number" required/></td>
</tr>
<tr></tr>
<tr><td><font size="5"></font></td><td><font size="5"></font></td><td><input type="submit" value="Register"></td>
<
</tr>
</table>
</form>
			  
<br><br><br>

 <%@include file="Footer.jsp"%>
