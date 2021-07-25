<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style9 {font-size: 14px}
.style50 {color: #666666; font-weight: bold;}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li class="active"><a href="C_Main.jsp">Cloud</a></li>
        <li><a href="C_Login.jsp">Logout</a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
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
          <h2><span>Send CDA Reports </span></h2>
          <p align="justify">&nbsp;</p>
          <p align="justify"><em><strong>Select Doctors and Send CDA Reports To Corresponding Doctors : </strong></em></p>
            <p>&nbsp;</p>
            <table width="556" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0;
	ArrayList doc=new ArrayList();
try 
	{		
		
				%>

            <tr>
              <td width="53" height="30"><div align="center" class="style9"><span class="style50"> ID </span></div></td>
              <td width="159"><div align="center" class="style9"><span class="style50">Patient Name </span></div></td>
              <td width="159"><div align="center" class="style9"><span class="style50">Doctor</span></div></td>
              <td width="222"><div align="center" class="style9"><span class="style50">Template ID </span></div></td>
              <td width="145"><div align="center" class="style9"><span class="style50">Send Reports  </span></div></td>
            </tr>
            <%
				
				String query1="Select *from healthcare_sp where status='Authorized'  "; 
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(query1);
				while ( rs1.next() )
				{
					s4=rs1.getString(2);
					doc.add(s4);
				}
				String query="Select *from cloudserver"; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s5=rs.getString(5);
					
					
					
					%>
            <tr>
              <td height="28"><div align="center"><%=i%></div></td>
              <td><div align="center"><%=s2%></div></td>
          <form id="form1" name="form1" method="post" action="C_Send_CDA_to_Doc.jsp">
              <td><div align="center"> <label> 
			  <select name="doctor">
			  <option>-Select-</option>
					<%for(int k=0;k<doc.size();k++){%> 
					<option><%=doc.get(k)%></option><%}%>
					</select> </label></div></td>
					<input type="hidden" name="id" value="<%=i%>" />
              <td><div align="center"><%=s5%></div></td>
              <td><div align="center"><input name="" type="submit" value="Send CDA" /></div></td></form>
            </tr>
							

            <%
			  
				}
	connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
          </table>
          <p align="justify">&nbsp;</p>
          <p align="right"><a href="C_Main.jsp">Back</a></p>
        </div>
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
		<li><a href="C_Main.jsp">Home</a></li>
		<li><a href="C_Login.jsp">Logout</a></li>
		</ul>
        </div>
        <div class="gadget"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>Health Information Exchange</h2>
        <img src="images/pix1.jpg" width="58" height="58" alt="" /> <img src="images/pix2.jpg" width="58" height="58" alt="" /> <img src="images/pix3.jpg" width="58" height="58" alt="" /> <img src="images/pix4.jpg" width="58" height="58" alt="" /> <img src="images/pix5.jpg" width="58" height="58" alt="" /> <img src="images/pix6.jpg" width="58" height="58" alt="" /> </div>
      <div class="col c2">
        <h2>CDA</h2>
        <p align="justify">To ensure interoperability of HIE, the number of HIS that supports CDA needs to be sufficiently large. The structure of CDA is very complex and the production of correct CDA document is hard to achieve without deep understanding of the CDA standard and sufficient experience with it. </p>
      </div>
      <div class="col c3">
        <h2>Cloud Computing</h2>
        <img src="images/white.jpg" width="66" height="66" alt="" />
        <p align="justify">          The CDA document pertaining to a patient is generated at the clinic where the patient is diagnosed. The generated CDA document can be sent to other clinics after patient’s consent is acquired.</p>
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
