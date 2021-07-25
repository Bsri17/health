<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=application.getAttribute("uname")%>  (User)</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {color: #5f5f5f}
.style8 {font-size: 13px}
.style9 {font-size: 14px}
.style15 {color: #fff;
	font-weight: bold;
}
.style16 {font-size: 12px;
	color: #6d6d6d;
}
.style19 {font-size: 12px}
.style17 {font-size: 14; }
.style27 {font-size: 18px}
.style13 {font-size: 14px; color: #3f3f3f; font-weight: bold; }
.style20 {color: #3f3f3f}
.style23 {color: #3f3f3f; font-size: 12px; }
.style50 {color: #666666; font-weight: bold;}
-->
</style>
</head>
<body>
<div class="main">
  
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">FarSight Long-Term Disease Prediction Using Unstructured Clinical Nursing Notes</a></h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>View  Clinical Nursing Notes  </span></h2>
          <p>&nbsp;</p>
          <table width="556" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String uname=(String)application.getAttribute("uname");
try 
	{		
		
				%>
            <tr>
              <td width="53" height="30"><div align="center" class="style9"><span class="style50"> ID </span></div></td>
              <td width="159"><div align="center" class="style9"><span class="style50">Patient Name </span></div></td>
              <td width="159"><div align="center" class="style9"><span class="style50">Hospital</span></div></td>
              <td width="222"><div align="center" class="style9"><span class="style50">Template ID </span></div></td>
              <td width="145"><div align="center" class="style9"><span class="style50">View </span></div></td>
            </tr>
            <%
				
				
				
				String query="Select *from cloudserver ";//where patient_name='"+patient+"' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s5=rs.getString(5);
					
					String str="select *from request where user='"+uname+"' and pname='"+s2+"' and view_per='Permitted'";
				Statement s=connection.createStatement();
				ResultSet r=s.executeQuery(str);
				if(r.next())
				{
					%>
					<tr>
					<td height="28"><div align="center"><%=i%></div></td>
					<td><div align="center"><%=s2%></div></td>
					<%if(s3.equalsIgnoreCase("hospital_a"))
					{%>
					<td><div align="center">Hospital A</div></td>
					<%}
					if(s3.equalsIgnoreCase("hospital_b"))
					{%>
					<td><div align="center">Hospital B</div></td>
					<%}
					%>
					<td><div align="center"><%=s5%></div></td>
					<td><div align="center"><a href="U_CDA_Details.jsp?pname=<%=s2%>">View More ...</a></div></td>
					</tr>
					<%
				}
				else
				{
										%>
					<tr>
					<td height="28"><div align="center"><%=i%></div></td>
					<td><div align="center"><%=s2%></div></td>
					<%if(s3.equalsIgnoreCase("hospital_a"))
					{%>
					<td><div align="center">Hospital A</div></td>
					<%}
					if(s3.equalsIgnoreCase("hospital_b"))
					{%>
					<td><div align="center">Hospital B</div></td>
					<%}
					%>
					<td><div align="center"><%=s5%></div></td>
					<td><div align="center"><a href="U_RequestCDA.jsp">Not Permitted</a></div></td>
					</tr>
					<%

				}
				}
	connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
          </table>
          <p>&nbsp;</p>
          <p align="right"><a href="C_Main.jsp"></a></p>
          <p>&nbsp;</p>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
		<li><a href="U_Main.jsp">Home</a></li>
		<li><a href="U_Search.jsp">Search  </a></li>
		<li><a href="U_Login.jsp">Logout</a></li>
		</ul>
        </div>
        <div class="gadget"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
