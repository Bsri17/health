<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%><%

try
{
	String id=request.getParameter("id");
	String docname=(String)application.getAttribute("docname");
	Statement st=connection.createStatement();
	String query1="update doc_reports set cda_status='Requested' where id='"+id+"'";
	st.executeUpdate(query1);
	
	
	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
					
					String strQuery21 ="insert into transaction(user,fname,task,dt) values('"+docname+"','Cloud','Report Access Request','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery21);
	
	response.sendRedirect("HC_ViewCDA.jsp");
		connection.close();

}
catch(Exception e)
{
out.println(e);
}

%>
