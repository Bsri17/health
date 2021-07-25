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
          <h2><span>Enter  Search Key </span>To Search Patient Records </h2>
          <p>&nbsp;</p>
          <p>
            <%
			String name=(String)application.getAttribute("uname");
			
			String query="select * from patient where name='"+name+"' ";//and status!='Requested'";
			Statement st = connection.createStatement();
			ResultSet rs1 =st.executeQuery(query);
			if(rs1.next())
			{
				String stat=rs1.getString(13);
				
				if(stat.equalsIgnoreCase("Requested"))
				{
					%>
</p>
          <h3 align="left" >Please Wait For Cloud To Generate Search Key <a href="U_SearchKey.jsp">Click Here </a>To View Response !!</h3>
          <%
				
				}
				else if (stat.equalsIgnoreCase("No"))
				{
					%>
          <h3 align="left" >You Have Not Requested Search Key <a href="U_SearchKey.jsp">Click Here </a>To Request !! </h3>
          <%
				}
				else
				{
						%>
          </p>
          <form id="form1" method="post" action="U_Search0.jsp">
            <table width="487" border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
              <tr>
                <th width="236" height="40" scope="row"><div align="left"><span class="style15"><span class="odd  style16">Enter  Search  Key : </span></span></div></th>
                <td width="320"><span class="style15">
                  <input required="required" name="t14" type="text" value="" size="30" />
                </span></td>
              </tr>
            </table>
            <p align="center" class="style15">&nbsp;</p>
            <p align="center">
              <input type="submit" name="Submit2" value="Submit" />
            </p>
            <p align="left"> <a href="U_SearchKey.jsp" class="style19"> View Search Key Response</a></p>
          </form>
          <%
				 	}
				}
				
				  
				  %>
          <p align="right"><a href="U_Main.jsp">Back</a></p>
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
