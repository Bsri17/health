<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
          <h2><span>Welcome to <%=application.getAttribute("uname")%>(Patient) Page</span></h2>
          <p align="justify"> The proposed modeling approaches that are built on FarSightaggregated clinical nursing data is summarized. Table 3 shows the performance of all the proposed modeling approaches built on data obtained by naïvely aggregating the patients? nursing notes using their identification numbers. We observe that the NMFFTW with SC approach built on FarSight-aggregated data and modeled using Conv-LSTM consistently outperforms other data modeling and classification approaches with respect to all the metrics. Also, the performance of the proposed models drastically increased by 2.47% in ACC, 16.07% in MCC, 13.43% in F1, 16.13% in AUPRC, and 6.50% in AUROC when the data was aggregated using the FarSight long-term aggregation mechanism. Furthermore, we compared the actual and predicted (using ConvLSTM trained on NMFFTW with SC representations) number of clinical notes that received a particular diagnostic code.</p>
          <img src="images/img1.jpg" width="287" height="97" alt="" class="fl" /> <img src="images/img2.jpg" width="287" height="97" alt="" /></div>
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
		<li><a href="U_ViewCDA.jsp">View Clinical Nursing Notes</a></li>
		<li><a href="U_SearchKey.jsp">Search Key  </a></li>
		<li><a href="U_RequestCDA.jsp">Request Clinical Nursing Notes</a>  </li>
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
