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
<title>Hospital - A</title>
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
          <br />
		  
		            <form id="form1" name="form1" method="post" action="HA_GenerateCDA3.jsp">
          <p align="center"><span class="style3">Clinical Nursing Notes </span>================================================================================ </p>
          <p align="justify">
            <%		
		String creation_time=request.getParameter("creation_time");
		String template_id=request.getParameter("template_id");
		String language_code=request.getParameter("language_code");
		String purpose=request.getParameter("purpose");
		String patient_id=request.getParameter("patient_id");
		String patient_name=request.getParameter("patient_name");
		String patient_gender=request.getParameter("patient_gender");
		String patient_dob=request.getParameter("patient_dob");
		String author_id=request.getParameter("author_id");
		String author_name=request.getParameter("author_name");
		String author_org=request.getParameter("author_org");
		String org_name=request.getParameter("org_name");
		String org_addrs=request.getParameter("org_addrs");
		String org_phno=request.getParameter("org_phno");
		
		
		String payers=request.getParameter("payers");
		String advance=request.getParameter("advance");
		String support=request.getParameter("support");
		String functional_status=request.getParameter("functional_status");
		String problems=request.getParameter("problems");
		String family_history=request.getParameter("family_history");
		String social_history=request.getParameter("social_history");
		String allergies=request.getParameter("allergies");
		String medications=request.getParameter("medications");
		String medical_equipment=request.getParameter("medical_equipment");
		String vital_signs=request.getParameter("vital_signs");
		String results=request.getParameter("results");
		String procedures=request.getParameter("procedures");
		String encounters=request.getParameter("encounters");
		String plan_of_care=request.getParameter("plan_of_care");
		
		String keys = "ef50a0ef2c3e3a5f";
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		
		String creation_time1 = new String(Base64.encode(creation_time.getBytes()));
		String language_code1 = new String(Base64.encode(language_code.getBytes()));
		String patient_dob1 = new String(Base64.encode(patient_dob.getBytes()));
		String org_name1 = new String(Base64.encode(org_name.getBytes()));
		String org_addrs1 = new String(Base64.encode(org_addrs.getBytes()));
		String purpose1 = new String(Base64.encode(purpose.getBytes()));
		String author_name1 = new String(Base64.encode(author_name.getBytes()));
		
		String payers1 = new String(Base64.encode(payers.getBytes()));
		String support1 = new String(Base64.encode(support.getBytes()));
		String advance1 = new String(Base64.encode(advance.getBytes()));
		String functional_status1 = new String(Base64.encode(functional_status.getBytes()));
		String medications1 = new String(Base64.encode(medications.getBytes()));
		String procedures1 = new String(Base64.encode(procedures.getBytes()));
		String plan_of_care1 = new String(Base64.encode(plan_of_care.getBytes()));
		
		%>
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
              <td><span class="style48"><input readonly="readonly" name="family_history" value="<%=family_history%>" /></span></td>
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
          <p align="justify">&nbsp;</p>
          <br />
          <br />
				
				
		
		
		
         
          <div align="center">
                <input type="submit" name="Submit" value="Upload" />
                </div>
            </label>
          </form>
          <p>&nbsp;</p>
          <p align="justify"></p>
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
		<li><a href="HA_Main.jsp">Home</a></li>
		<li><a href="HA_Login.jsp">Logout</a></li>
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
