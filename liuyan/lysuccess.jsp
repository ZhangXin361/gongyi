<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>留言成功</title>
<style type="text/css">
<!--
body {
	background-image: url(images/k1.jpg);
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style2 {font-size: 36px}
.style4 {
	color: #3333FF;
	font-size: 24px;
}
.style5 {color: #3300FF}
#Layer1 {
	position:absolute;
	width:104px;
	height:29px;
	z-index:1;
	left: 474px;
	top: 296px;
}
#Layer2 {
	position:absolute;
	width:107px;
	height:31px;
	z-index:2;
	left: 309px;
	top: 30px;
}
.STYLE6 {color: #FF0000}
.STYLE7 {color: #CC9900; font-size: 24px; }
.STYLE9 {
	font-size: 36px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
	color: #000000;
}
.STYLE10 {color: #000000}
--> 
a{ text-decoration:none;}
a:hover{
	cursor:pointer;
	text-decoration:none;
	}
</style></head>

<body>

<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="lybean" scope="page" class="mydb.mydb"/>
<p>&nbsp;</p>
<p align="center"><b>



<b><span class="STYLE10"><font size=5 face="隶书"><%=session.getValue("name")%></font></span><span class="STYLE9">您已留言成功</span></b></p>
<p align="center">&nbsp;</p>
<p align="center">
    

  <%
//打开数据库，将刚写进去的留言显示出来
 String name,subject,date,memo;
String sql = "select * from message order by id desc";
ResultSet rs = lybean.executeQuery(sql);

out.print("<center>");

out.print("<table border=1>");
//从数据库获取各字段
 if(rs.next())

 {

 name = rs.getString(4);

 date= rs.getString(5);

subject= rs.getString(2);

memo = rs.getString(3);
 //显示

  out.print("<tr><td bgcolor='99ccff'>姓名</td><td>"+name+"</td></tr>");
  
  out.print("<tr><td bgcolor=99ccff>时间</td><td>"+date+"</td></tr>");

  out.print("<tr><td bgcolor=99ccff>主题</td><td>"+subject+"</td></tr>");

  out.print("<tr><td valign=top bgcolor=99ccff>留言</td><td>"+memo+"</td></tr>");

 

 }
out.print("</table><p>");

%>
</p>
<p align="center">&nbsp;</p>
<center>
  
  <div id="Layer1">
  <p class="style4"><a href="ly.jsp" class="STYLE6">我要留言</a>  
  <div id="Layer2"><a href="main.jsp" class="STYLE7">查看留言</a></p></div>
  </div>
  <p class="style4"> 　</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</center>
</body>
</html>
