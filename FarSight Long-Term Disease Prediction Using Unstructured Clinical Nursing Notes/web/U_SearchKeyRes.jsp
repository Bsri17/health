<title>Search Key Request</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
   	String name=(String)application.getAttribute("uname");
	String msg="";
	try
	{
		String query="select * from patient where name='"+name+"'";
		Statement st = connection.createStatement();
		ResultSet rs1 =st.executeQuery(query);
		if(rs1.next())
		{
			String key=rs1.getString(13);
			
			if(key.equalsIgnoreCase("No"))
			{
						msg="You Have Not Requested For Search Key  !!";
				response.sendRedirect("U_SearchKey.jsp");
				application.setAttribute("msg",msg);
			}
			if(key.equalsIgnoreCase("Requested"))
			{
				msg="Please Wait For Cloud To Generate Search Key !!";
				response.sendRedirect("U_SearchKey.jsp");
				application.setAttribute("msg",msg);
			}
			else
			{
				msg=key;
				response.sendRedirect("U_SearchKey.jsp");
				application.setAttribute("msg",msg);
				
				
				
			}
		}	
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>