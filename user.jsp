<%@include file="Header.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Registered Successfully..Please Login..')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Login Fail..')</script>");
}
%>
<br>



<!--hfghgfhgfhgfhgfhggggggggggggggggggggggggg-->

	<div class="contact-w3layouts" id="contact">
					<div class="container">
						<h3 class="w3l_header w3_agileits_header two">User<span>Login</span></h3>
						<div class="agile_wthree_inner_grids">
							
							<div class="col-md-6 mail-grid1-form ">
								<form action="uservalidation.jsp" method="post">
									<input type="text" name="unm" placeholder="Username..." required="" />
									<input type="password" name="pwd" placeholder="Password..." required="" />
									
									<input type="submit"  value="Login" />
								</form><br>

								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="registration.jsp" ><img src="register-icon-blue.png" width="100" height="100" border="0" alt="" ></a>
<br><br><br>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--//contact-->
				

 <%@include file="Footer.jsp"%>