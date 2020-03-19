<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>爱心公益网</title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/jdt.css" media="all" />

<style>
.hong{background:#ff3273;}
.message-board{ 
	float:right;
	}
.banner{
	height:315px;
	position:relative;
	margin-bottom:50px;}
.imgList-banner{background:url(images/ad4.jpg) no-repeat center;}
.banner:before{
	content:"";
	height:10px;
	background:rgba(0,0,0,0.2);
	display:block;
	}
.banner:after{
	content:"";
	height:100px;
	width:100%;
	display:block;
	background:url(images/zl.png) repeat-x;
	position:absolute;
	top:260px;}
.banner h2{
	width:350px;
	height:60px;
	font-size:30px;
	color:#FFF;
	line-height:60px;
	padding-left:30px;
	position:absolute;
	top:222px;
	left:50%;
	margin-left:-480px;
	}
</style>

</head>

<body>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<%--@include file="protect/protect.jsp"--%>
<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>

<div id="header">
    	<h1>爱心公益网</h1>
        <ul>
        	<li><i class="iconfont">&#xe602;</i> 您好，欢迎参与爱心公益 |</li>
            <li><i class="iconfont">&#xe603;</i> <strong>昵称： </strong><%=(String)session.getValue("name")%>|</li>
            <li><i class="iconfont">&#xe601;</i> <a href="index.html">注销</a></li>
        </ul>
</div>

<div id="nav">
	<ul>
    	<li class="active"><a href="index1.jsp">首 页</a></li>
        <li><a href="../mujuan/list.jsp">募捐活动</a></li>
        <li><a href="../yigong/list.jsp">义工活动</a></li>
        <li><a href="../liuyan/ly.jsp">公益留言</a></li>
        <li><a href="index4.jsp">数据报表</a></li>
        <li><a href="index3.jsp">个人服务</a></li>
        <li><a href="index2.jsp">联系我们</a></li>
    </ul>
</div>


<!--baner部分结构开始-->
<div class="banner imgList-banner">
	<h2 class="hong">个人资料</h2>
</div>
<!--baner部分结构结束-->


<!-- <div style=" margin:0 auto; width:1000px;">-->
<div class="wrap clearfix">
	<div class="contact">
<% 
	//获取登录时保存的名字
   String name=(String)session.getValue("name");

   //打开数据库将用户资料显示出来
  String sql="select * from user where name='" +name+"' ";   
  ResultSet rs=indexbean.executeQuery(sql);
   if (rs.next())
   { int id = rs.getInt("id");//获取id作为参数传给domodify.jsp

%> </font></b>
<p>　</p>
	   
  
    

  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="500" id="AutoNumber1">
 	<tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">登录名</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="name" value=<%=rs.getString("name")%>  size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">密码　</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="mima" value=<%=rs.getString("password")%> size="50"></td>
    </tr>

    <tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">问题　</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="wenti" value=<%=rs.getString("question")%> size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">姓名　</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="u_name" value=<%=rs.getString("u_name")%> size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">答案　</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="daan" value=<%=rs.getString("answer")%> size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">性别　</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="sex" value="<%=rs.getString("sex")%>"  size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">生日</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="birthday" value="<%=rs.getString("birthday")%>" size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">电话</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="tel" value="<%=rs.getString("tel")%>" size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><b><font size="2">QQ</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="qq" value="<%=rs.getString("qq")%>" size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#8EACF0"><strong><font size="2">地址</font></strong></td>
      <td width="78%" align="center"><p align="left">
	  <input type="text" name="addr" value="<%=rs.getString("address")%>" size="50"></td>
    </tr>
       
      <tr>
      <td width="100%" align="center" colspan="2">
      <p><br /><br /><br /><br /><br /><a href="../login/modify.jsp"><img src="images/4.png" name="ly" width="300" height="80" vspace="30" border="0"></p></a>
      </td>
      </tr>  
  </table>
  </center>
  </div>

       
   <%  
    rs.close();}%>
    <div class="con1">
    <a href="../geren/index5.jsp"><img src="images/1.png" name="ly" width="300" height="80" vspace="30" border="0"></a>
    <a href="../geren/index6.jsp"><img src="images/2.png" name="ly" width="300" height="80" vspace="30" border="0"></a>
    <a href="../geren/index7.jsp"><img src="images/3.png" name="ly" width="300" height="80" vspace="30" border="0"></a>
    </div>
</div>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
	<!--<p><a href="#">网站首页</a> | <a href="#">关于我们</a> | <a href="#">工程案例</a> | <a href="#">人才招聘</a></p>-->
</div>
</body>
</html>
