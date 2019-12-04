<%@include file="uheader.jsp"%>
<head>
<script>  
function f1Submit() {  

var search=document.f1.keywords.value;

//alert("sear="+search.length());
if(search=="")
	{
alert('Please Enter Keyword for Searching..!'); 
}

}
</script>
</head>

<br><br><br>
 <form name="f1" method="post" action="getSK.jsp" align="center">
<table align="center">
<tr><td colspan="3"><font size="6" color="gray"><b>Search Here</b></font></td></tr>
<tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr>
<tr><td><input type="type" name="keywords" placeholder="Enter Keyword" required/></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td><input type="submit" value="getPrivateKey"  /><tr><td></td></tr>
<tr><td></td></tr>
</table>
</form>
		

<!--<font size="2" color="#ff6600"><b>SignUp</font></center>-->
<br><br><br><br><br><br>

 <%@include file="Footer.jsp"%>