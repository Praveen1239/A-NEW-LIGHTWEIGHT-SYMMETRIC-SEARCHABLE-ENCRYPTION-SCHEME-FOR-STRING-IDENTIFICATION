<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*" %>
<%@include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Cloud Files</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {color: #00BC94}
.style10 {color: #0000FF; }
.style11 {color: #0000CC}
.style12 {font-family: "Courier New", Courier, monospace}
.style1 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li></li>
          <li><a href="CloudDataServer.jsp"><span>Cloud Data Server </span></a></li>
           <li><a href="DataOwner.jsp"><span>Data Owner </span></a></li>
           <li class="active"><a href="EndUser.jsp"><span>End User </span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1"><a href="index.html" class="style1">A New Lightweight Symmetric Searchable Encryption Scheme for String Identification</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="940" height="271" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="940" height="271" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="940" height="271" alt="" /></a></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
        <div class="article">
          <h2>View<span class="style11"> Cloud </span><span class="style6">Files </span> </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          	<table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
   <td width="178" bgcolor="#A4D176"><div align="center" class="style10"><span class="style3">Owner  Name</span></div></td>
 
   <td width="140" height="32" bgcolor="#A4D176"><div align="center" class="style10"><span class="style3">FileName</span></div></td>

	  <td width="115" bgcolor="#A4D176"><div align="center" class="style10"><span class="style3">Date</span></div></td>
  </tr>

<%
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from cloudserver "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		
		%>

  <tr>
    <td height="29"><div align="center" class="style12"><%=s2%></div></td>

    <td><div align="center" class="style12"><%=s3%></div></td>
	  <td><div align="center" class="style12"><%=s8%></div></td>
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
</table></p>
          <p>&nbsp;</p>
          <p><a href="UserMain.jsp">Go Back</a>
          </p>
          <div class="clr"></div>
        </div>
       
    </div>
    
      <div class="clr"></div>
  </div>
</div>
   <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>