 <%@ page import="java.io.*"%>
 <%!String cloud="temp";%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
 <%@ page import ="java.sql.*,PKE.*,it.unisa.dia.gas.jpbc.*,it.unisa.dia.gas.plaf.jpbc.pairing.PairingFactory, it.unisa.dia.gas.plaf.jpbc.pairing.a.TypeACurveGenerator,SPHF.*"%>
  <%
 try{


String keyword=request.getParameter("keywords");
String secretkey1=request.getParameter("sk");

Connection con=databasecon.getconnection();
Statement st=con.createStatement();Statement st1=con.createStatement();
Statement st21=con.createStatement();
st21.executeUpdate("delete from results");
CurveGenerator curveGenerator1 = new TypeACurveGenerator(160, 256);
		CurveParameters curveParameters1 = curveGenerator1.generate();

		SPHF ch1 = new SPHF(curveGenerator1, curveParameters1);

		SPHF.Keys key1 = ch1.SPHFSetup();

System.out.println("hk="+key1.getPrivateKey());

System.out.println("hp="+key1.getPublicKey());

SPHF.HashData hd1 = ch1.setHashData(keyword.getBytes());

Element secretkey=key1.getPrivateKey();
SPHF.HashData hd=ch1.Hash(secretkey,hd1,keyword.getBytes());

CurveGenerator curveGenerator = new TypeACurveGenerator(160, 256);
		CurveParameters curveParameters = curveGenerator.generate();

		SPHF ch = new SPHF(curveGenerator, curveParameters);

		SPHF.Keys key = ch.SPHFSetup();



ResultSet rst1=st.executeQuery("select *from temp");

while(rst1.next()){

String kw=rst1.getString(3);
String kw1=kw.replace("[","");
String kw2=kw1.replace("]","");

String ktw[]=kw2.split(",");

for(int i=0;i<ktw.length;i++){


System.out.println("ch="+ktw[i].trim());
	SPHF.HashData hv = ch.setHashData(ktw[i].trim().getBytes());

	SPHF.HashData hv1 = ch.Hash(key.getPrivateKey(), hv,keyword.trim().getBytes());

	Element test1 = ch.ProjHash(key.getPublicKey(), hv);

	Element test2 = ch.ProjHash(key.getPublicKey(), hv1);

System.out.println("test1="+test1);

System.out.println("test2="+test2);

if(test1.equals(test2)){
		
PreparedStatement pst2=con.prepareStatement("insert into results values('"+rst1.getString(1)+"','"+rst1.getString(2)+"','"+session.getAttribute("unm")+"')");
pst2.executeUpdate();
	
}
}

}


response.sendRedirect("views1.jsp");

 }catch(Exception e){
 e.printStackTrace();
 }
%>