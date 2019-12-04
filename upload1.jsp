  <%@ include file="dataheader.jsp"%>

<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null;
int i=0;
%>
 <% java.util.Enumeration e = request.getParameterNames();
 while(e.hasMoreElements()){
         // String e=names.nextElement();
		   String name = (String)e.nextElement();  
		   System.out.println("nm="+name);  }
  
		  //if(
      


	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
File f=new File(saveFile);
FileInputStream fis=new FileInputStream(saveFile);
session.setAttribute("fis",fis);
 fnm=f.getName();
         // open input stream test.txt for reading purpose.
		 try{
         BufferedReader br = new BufferedReader(new FileReader(f));
		 StringBuffer sb=new StringBuffer();
         while ((thisLine = br.readLine()) != null) {
          //  System.out.println(thisLine);
			
                sb1=sb.append(thisLine);
				//System.out.println(sb1);
         }} catch(Exception e1){ }
		 unm=(String)session.getAttribute("unm");
		 session.setAttribute("data",sb1);
}
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select max(fid) from cloud ");
if(r.next())
	{

 i=r.getInt(1);
 System.out.println("i="+i);
if(i>=0)
	{
i++;
	}
}
}catch(Exception e11)
{
e11.printStackTrace();
}

%>

    
 
     





<div class="contact-w3layouts" id="contact">
					<div class="container">
						<div class="agile_wthree_inner_grids">
							
							<div class="col-md-6 mail-grid1-form ">
								<form action="getKW.jsp" method="post">
							<h1><font size="" color="ff6600">FileUploading</font><h1><br><br>
									<table>

    <tr>
	<td><h3>File ID:</td> <td><input type="text" name="fid" value=<%=i%> placeholder="" required></td>
</tr>   <tr></tr><tr></tr>
<tr><td>
	 <h3>FileName:</td><td><input type="text" name="fname" value=<%=fnm%> placeholder="" required></td></tr>  <tr></tr><tr></tr>
    <tr><td> <h3>FileData:</td><td><textarea name="file" cols=30 rows=6><%=sb1%></textarea></td></tr><tr></tr><tr></tr>
     <tr><td>
	 <h3>Keywords:</td><td><textarea name="keywords" rows="" cols=""></textarea></td></tr>
	 <tr><td></td><td><input type="submit" value="GetKeywords"></tr>  <tr></tr><tr></tr>
	   </table>
								</form>
<br><br><br>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--//contact-->









</body><%@ include file="Footer.jsp"%>