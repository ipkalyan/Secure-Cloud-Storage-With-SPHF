<%@ include file="dataheader.jsp"%>


<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('File Uploaded Successfully')</script>");
}%>










<div class="contact-w3layouts" id="contact">
					<div class="container">
						
						<div class="agile_wthree_inner_grids">
							
							<div class="col-md-6 mail-grid1-form ">
								<form action="upload1.jsp" enctype="multipart/form-data" method="post">
								<h6 class="w3l_header w3_agileits_header two"><span>FileUploading</span></h6><br><br>
									<input type="file" name="filename"  required/><br><br>
									<input type="submit"  value="Next" />
								</form>
<br><br><br>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--//contact-->







<br><br><br><br><br><br><br>
   </center>   
        </div>        </div> 












<%@ include file="Footer.jsp"%>