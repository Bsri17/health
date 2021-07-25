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
<title>Hospital - B</title>
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
          <h2><span>Generated Clinical Nursing Notes </span></h2>
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
				String id =request.getParameter("usid");

				String query="Select *from cloudserver where id='"+id+"' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					
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
            <p align="center"><span class="style3">Clinical Document Architecture  (CDA) </span>================================================================================ </p>
          <p align="justify">
          </p>
          <table width="615" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="145" height="33"><span class="style36">Creation Time :</span></td>
              <td width="181"><span class="style21 style22">
                <input name="creation_time"  value="<%=creation_time1%>" readonly="readonly"/>
              </span></td>
              <td width="129"><span class="style38">Language Code :</span></td>
              <td width="160"><span class="style23">
                <input name="language_code" value="<%=language_code1%>" readonly="readonly" />
              </span></td>
            </tr>
            <tr>
              <td height="30"><span class="style36">Template ID :</span></td>
              <td><span class="style23">
                <input name="template_id"  value="<%=template_id%>" readonly="readonly" />
              </span></td>
              <td><span class="style38">Purpose : </span></td>
              <td><span class="style23">
                <input readonly="readonly" name="purpose" value="<%=purpose1%>" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Patient ID :</span></td>
              <td><span class="style23">
                <input name="patient_id" value="<%=patient_id%>" readonly="readonly" />
              </span></td>
              <td><span class="style38">Gender :</span></td>
              <td><span class="style23">
                <input readonly="" name="patient_gender" value="<%=patient_gender%>" />
              </span></td>
            </tr>
            <tr>
              <td height="32"><span class="style36">Patient Name :</span></td>
              <td><span class="style23">
                <input readonly="readonly" name="patient_name" value="<%=patient_name%>" />
              </span></td>
              <td><span class="style38">DOB :</span></td>
              <td><span class="style23">
                <input readonly="readonly" name="patient_dob" value="<%=patient_dob1%>" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Author ID :</span></td>
              <td><span class="style23">
                <input readonly="readonly" name="author_id" value="<%=author_id%>" />
              </span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="32"><span class="style36">Author Name :</span></td>
              <td><span class="style23">
                <input readonly="readonly" name="author_name" value="<%=author_name1%>" />
              </span></td>
              <td><span class="style38">Author Organization :</span></td>
              <td><span class="style23">
                <input readonly="readonly" name="author_org" value="<%=author_org%>" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Org Name :</span></td>
              <td><span class="style23">
                <input readonly="readonly" name="org_name" value="<%=org_name1%>" />
              </span></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="49"><span class="style36">Org Address :</span></td>
              <td><span class="style23">
                <textarea name="org_addrs" cols="" rows=""><%=org_addrs1%></textarea>
              </span></td>
              <td><span class="style38">Org Ph no : </span></td>
              <td><span class="style23">
                <input readonly="readonly" name="org_phno" value="<%=org_phno%>" />
              </span></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <table width="411" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
            <tr>
              <td width="136" height="38"><span class="style36">Payers : </span></td>
              <td width="275"><span class="style48"><input readonly="readonly" name="payers" value="<%=payers1%>" /></span></td>
            </tr>
            <tr>
              <td height="28"><span class="style36">Advance : </span></td>
              <td><span class="style48"><input readonly="readonly" name="advance" value="<%=advance1%>" /></span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Support : </span></td>
              <td><span class="style48"><input readonly="readonly" name="support" value="<%=support1%>" /></span></td>
            </tr>
            <tr>
              <td height="31"><span class="style36">Functional Status : </span></td>
              <td><span class="style48"><input readonly="readonly" name="functional_status" value="<%=functional_status1%>" /></span></td>
            </tr>
            <tr>
              <td height="31"><span class="style36">Problems : </span></td>
              <td><span class="style48"><input readonly="readonly" name="problems" value="<%=problems%>" /></span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Family History : </span></td>
              <td><span class="style48"><input readonly="readonly" name="family_history" value="<%=family_history1%>" /></span></td>
            </tr>
            <tr>
              <td height="32"><span class="style36">Social History : </span></td>
              <td><span class="style48"><input readonly="readonly" name="social_history" value="<%=social_history%>" />
              </span></td>
            </tr>
            <tr>
              <td height="34"><span class="style36">Allergies : </span></td>
              <td><span class="style48"><input readonly="readonly" name="allergies" value="<%=allergies%>" />
              </span></td>
            </tr>
            <tr>
              <td height="31"><span class="style36">Medications : </span></td>
              <td><span class="style48"><input readonly="readonly" name="medications" value="<%=medications1%>" />
              </span></td>
            </tr>
            <tr>
              <td height="29"><span class="style36">Medical Equipment : </span></td>
              <td><span class="style48"><input readonly="readonly" name="medical_equipment" value="<%=medical_equipment%>" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Vital Signs : </span></td>
              <td><span class="style48"><input readonly="readonly" name="vital_signs" value="<%=vital_signs%>" />
              </span></td>
            </tr>
            <tr>
              <td height="30"><span class="style36">Results : </span></td>
              <td><span class="style48"><input readonly="readonly" name="results" value="<%=results%>" />
              </span></td>
            </tr>
            <tr>
              <td height="28"><span class="style36">Procedures : </span></td>
              <td><span class="style48"><input readonly="readonly" name="procedures" value="<%=procedures1%>" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Encounters : </span></td>
              <td><span class="style48"><input readonly="readonly" name="encounters" value="<%=encounters%>" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><span class="style36">Plan Of Care : </span></td>
              <td><span class="style48"><textarea readonly="readonly" name="plan_of_care" ><%=plan_of_care1%></textarea>
              </span></td>
            </tr>
          </table>
          <p>
            <%
		}
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>	
            
            
            
            
            </label>
          </p>
          <div align="right"><a href="HB_ViewCDA.jsp">Back</a></div>
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
		<li><a href="HB_Main.jsp">Home</a></li>
		<li><a href="HB_Login.jsp">Logout</a></li>
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
