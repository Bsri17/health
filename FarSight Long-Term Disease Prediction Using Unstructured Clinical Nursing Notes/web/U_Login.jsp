<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>End User</title>
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
          <h2><span>End User Login </span></h2>
          <form action="U_Authentication.jsp" method="post" id="leavereply">
            <label for="name"><br />
            <br />
            <span class="style9"><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Name (required)</span>&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <input name="userid" type="text" class="box" id="name" value="" size="35" />
            <label for="email"><br />
            <br />
            <span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password (required)</span>&nbsp;&nbsp; </label>
            <input name="pass" type="password" class="box" id="pass" size="35" />
            <p>&nbsp;</p>
            <p align="center">
              <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
              <input type="reset" name="imageField" id="imageField"  class="RESET" />
            </p>
            <p align="center"><span class="style8">New User? click here to <a href="U_Register.jsp"> Register</a></span></p>
          </form>
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
				<li><a href="index.html">Home</a></li>
				<li><a href="U_Login.jsp">End User </a></li>
				<li><a href="HA_Login.jsp">Hospital - A </a></li>
				<li><a href="HB_Login.jsp">Hospital - B </a></li>
				<li><a href="C_Login.jsp">Cloud Server</a></li>
				<li><a href="HC_Login.jsp">Health Care Service Provider</a></li>
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
