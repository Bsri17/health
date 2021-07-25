<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style11 {color: #3e3e3e; font-weight: bold; font-size: 12; }
.style12 {font-size: 12}
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
          <h2><span>Generate CDA </span></h2><br />
		            <form id="form1" name="form1" method="post" action="HB_GenerateCDA1.jsp">
          <p align="justify"><span class="style3">Document Information </span><br />
============================================================================== </p>
          <table width="506" style="border-collapse:collapse" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
			<%SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;%>
              <td width="167" height="32"><div align="left"><span class="style11">Creation Time : </span></div></td>
              <td width="339"><input readonly="readonly" type="text" name="creation_time" value="<%=dt%>" />
              <span class="style12"></span></td>
            </tr>
            <tr>
              <td height="29"><div align="left"><span class="style11">Template ID : </span></div></td>
              <td><span class="style12">
                <input type="text" name="template_id" />
              </span></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">Language Code : </span></div></td>
              <td><span class="style12">
                <input type="text" name="language_code" />
              </span></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">Purpose : </span></div></td>
              <td><span class="style12">
                <input type="text" name="purpose" />
              </span></td>
            </tr>
            <tr>
              <td height="29"><span class="style12"></span></td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p align="justify"><span class="style3">Patient's Information </span><br />
============================================================================== </p>
          <table width="506" style="border-collapse:collapse" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="167" height="32"><div align="left"><span class="style11">ID  : </span></div></td>
              <td width="339"><input type="text" name="patient_id" />
                  <span class="style12"></span></td>
            </tr>
            <tr>
              <td height="29"><div align="left"><span class="style11"> Name : </span></div></td>
              <td><span class="style12">
                <input type="text" name="patient_name" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><div align="left"><span class="style11">Gender : </span></div></td>
              <td><select name="patient_gender">
                <option>Male</option>
                <option>Female</option>
                            </select>
              <span class="style12">              </span></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">DOB : </span></div></td>
              <td><span class="style12">
                <input type="text" name="patient_dob" />
              </span></td>
            </tr>
            <tr>
              <td height="29"><span class="style12"></span></td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p align="justify"><span class="style3">Author's Information </span><br />
          ============================================================================== </p>
          <table width="506" style="border-collapse:collapse" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="167" height="32"><div align="left"><span class="style11">ID  : </span></div></td>
              <td width="339"><input type="text" name="author_id" />
                  <span class="style12"></span></td>
            </tr>
            <tr>
              <td height="29"><div align="left"><span class="style11"> Name : </span></div></td>
              <td><span class="style12">
                <input type="text" name="author_name" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><div align="left"><span class="style11">Represented Organization  : </span></div></td>
              <td><span class="style12">
                <input type="text" name="author_org" />
              </span><span class="style12"> </span></td>
            </tr>
            <tr>
              <td height="30">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p align="justify"><span class="style3">Organization's Information </span><br />
============================================================================== </p>
          <table width="506" style="border-collapse:collapse" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="167" height="32"><div align="left"><span class="style11">Name  : </span></div></td>
              <td width="339"><input type="text" name="org_name" />
                  <span class="style12"></span></td>
            </tr>
            <tr>
              <td height="29"><div align="left"><span class="style11"> Address : </span></div></td>
              <td><span class="style12">
                <input type="text" name="org_addrs" />
              </span></td>
            </tr>
            <tr>
              <td height="33"><div align="left"><span class="style11">Phone Number    : </span></div></td>
              <td><span class="style12">
                <input type="text" name="org_phno" />
              </span><span class="style12"> </span></td>
            </tr>
            <tr>
              <td height="30">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p align="justify"></p>
            <label>
              <div align="right">Page 1 of 2 </div>
              <div align="center">
                <input type="submit" name="Submit" value="Save &amp; Continue" />
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
