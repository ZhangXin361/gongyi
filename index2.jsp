<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>联系我们</title>
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
.imgList-banner{background:url(images/ad3.jpg) no-repeat center;}
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
	<h2 class="hong">CONTACT US</h2>
</div>
<!--baner部分结构结束-->

<!--主体部分开始-->
<div class="wrap clearfix">
	<div class="contact">
    	<h2>Contact Us</h2>
        <p>
        	the Nei Monggol [Inner Mongolia] Autonomous Region<br />
            Hohhot City Horinger County <br />
            Sheng Le Economic Industrial Park <br />
            Inner Mongol Normal University <br />
            <strong>telephone：</strong> 052-014868 <br />
            <strong>mobile phone：</strong> 15659789521 <br />
            <strong>E-mail：</strong> huizhong.thailand@gmail.com <br />
        </p>
         
    </div>
    
    <div class="con1">
    	<h2>联系我们</h2>
        <p>
        	内蒙古自治区<br />
            呼和浩特市和林格尔县 <br />
            盛乐经济工业园区<br />
            内蒙古师范大学 <br />
            <strong>电话：</strong> 052-014868 <br />
            <strong>手机：</strong> 15659789521 <br />
            <strong>电子邮件：</strong> huizhong.thailand@gmail.com <br />
        </p>
         
    </div>
    <img src="images/m.gif" /> 
    
</div>





<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
	<!--<p><a href="#">网站首页</a> | <a href="#">关于我们</a> | <a href="#">工程案例</a> | <a href="#">人才招聘</a></p>-->
</div>
</body>
</html>
