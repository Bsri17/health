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
<title>Cloud</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style3 {
	color: #3e3e3e;
	font-style: italic;
	font-weight: bold;
	font-size: 14px;
}
.style21 {font-size: 14px; font-weight: bold; color: #333333; }
.style22 {color: #FF0000}
.style23 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style36 {color: #3e3e3e; font-weight: bold; font-size: 12px; }
.style38 {color: #3e3e3e; font-weight: bold; }
.style48 {font-size: 11px; font-weight: bold; color: #FF0000; }
.style49 {font-size: 14px}
.style50 {color: #666666; font-weight: bold;}
.style51 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style51 {color: #FF0000; font-weight: bold; }
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
          <h2>Reply Letter For CDA Reports </h2>
          <p align="justify">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
			String query11="Select *from cda_reply_letter  "; 
			Statement st11=connection.createStatement();
			ResultSet rs11=st11.executeQuery(query11);
			while ( rs11.next() )
			{	
			
				String pname=rs11.getString(2);
				
				String query="Select *from cloudserver where patient_name='"+pname+"' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				if ( rs.next() )
				{
					
					String patient_name=rs.getString(2);
					String hospital=rs.getString(3);
					String creation_time=rs.getString(4);
					String template_id=rs.getString(5);
					String language_code=rs.getString(6);
					String purpose=rs.getString(7);
					String patient_id=rs.getString(8);
					String patient_gender=rs.getString(9);
					String patient_dob=rs.getString(10);
					String author_id=rs.getString(11);
					String author_name=rs.getString(12);
					String author_org=rs.getString(13);
					String org_name=rs.getString(14);
					String org_addrs=rs.getString(15);
					String org_phno=rs.getString(16);
				
					String payers=rs.getString(17);
					String advance=rs.getString(18);
					String support=rs.getString(19);
					String functional_status=rs.getString(20);
					String problems=rs.getString(21);
					String family_history=rs.getString(22);
					String social_history=rs.getString(23);
					String allergies=rs.getString(24);
					String medications=rs.getString(25);
					String medical_equipment=rs.getString(26);
					String vital_signs=rs.getString(27);
					String results=rs.getString(28);
					String procedures=rs.getString(29);
					String encounters=rs.getString(30);
					String plan_of_care=rs.getString(31);
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
				
					String creation_time1 = new String(Base64.decode(creation_time.getBytes()));
					String language_code1 = new String(Base64.decode(language_code.getBytes()));
					String patient_dob1 = new String(Base64.decode(patient_dob.getBytes()));
					String org_name1 = new String(Base64.decode(org_name.getBytes()));
					String org_addrs1 = new String(Base64.decode(org_addrs.getBytes()));
					String purpose1 = new String(Base64.decode(purpose.getBytes()));
					String author_name1 = new String(Base64.decode(author_name.getBytes()));
					
					String payers1 = new String(Base64.decode(payers.getBytes()));
					String support1 = new String(Base64.decode(support.getBytes()));
					String advance1 = new String(Base64.decode(advance.getBytes()));
					String functional_status1 = new String(Base64.decode(functional_status.getBytes()));
					String family_history1 = new String(Base64.decode(family_history.getBytes()));
					String medications1 = new String(Base64.decode(medications.getBytes()));
					String procedures1 = new String(Base64.decode(procedures.getBytes()));
					String plan_of_care1 = new String(Base64.decode(plan_of_care.getBytes()));	
			
					%>
          </p>
          <p align="center">================================================================================ </p>
          <p align="justify" class="style51">
            <%if(hospital.equalsIgnoreCase("hospital_a"))
					{out.print("Hospital A");}
					if(hospital.equalsIgnoreCase("hospital_b"))
					{out.print("Hospital B");}
					%>
          </p>
          <form id="form1" name="form1" method="post" action="C_Reply_Letter.jsp">
            <table width="615" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="145" height="33"><span class="style36">Creation Time :</span></td>
                <td width="181"><span class="style21 style22">
                  <input name="creation_time"  value="<%=creation_time1%>" readonly="readonly"/>
                </span></td>
                <td width="129">&nbsp;</td>
                <td width="160" bgcolor="#000000"><label>
                    <div align="center">
                      <input type="submit" name="Submit" value="View Reply Letter" />
                    </div>
                  </label>
                </td>
              </tr>
              <tr>
                <td height="30"><span class="style36">Template ID :</span></td>
                <td><span class="style51">
                  <input name="template_id"  value="<%=template_id%>" readonly="readonly" />
                </span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="33"><span class="style36">Patient ID :</span></td>
                <td><span class="style51">
                  <input name="patient_id" value="<%=patient_id%>" readonly="readonly" />
                </span></td>
                <td><span class="style38">Gender :</span></td>
                <td><span class="style51">
                  <input readonly="" name="patient_gender" value="<%=patient_gender%>" />
                </span></td>
              </tr>
              <tr>
                <td height="32"><span class="style36">Patient Name :</span></td>
                <td><span class="style51">
                  <input readonly="readonly" name="patient_name" value="<%=patient_name%>" />
                </span></td>
                <td><span class="style38">DOB :</span></td>
                <td><span class="style51">
                  <input readonly="readonly" name="patient_dob" value="<%=patient_dob1%>" />
                </span></td>
              </tr>
            </table>
          </form>
          <p>
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
          </p>
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
