<html>
<head>
<title>regconfirm</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE1 {font-size: 16px}
-->
#header{
	width:1000px;
	height:101px;
	margin:0 auto;
	background:url(images/phone.gif) no-repeat right 40px;
	position:relative;
	}
#header h1{
	width:421px;
	height:101px;
	background:url(images/logo1.jpg) no-repeat;
	text-indent:-9999px;
	}
#footer{
	background:#e1e1e1;
	border-top:#CCC solid 2px;
	text-align:center;
	font-size:12px;
	color:#666;
	line-height:30px;
	padding:15px;
	font-family:Arial;
	}
</style>
</head>
<body>
<div id="header">
    	<h1>爱心公益网</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<!-- ImageReady Slices (regconfirm) -->
<table background="images/b3.jpg" id="__01" bgcolor="#FFFFFF" align="center" width="900" height="888" border="0" cellpadding="0" cellspacing="0">
	<!--<tr>
		<td colspan="3">
			<img src="images/b2.jpg" width="900" height="237" alt=""></td>
	</tr>-->
	<td colspan="3">
			<img src="images/b2.jpg" width="900" height="237" alt=""></td>
	<tr>
		
	  <td>
<jsp:useBean id="registerbean" scope="page" class="mydb.mydb"/>
<%
String name,mima,wenti,daan,sex,email,memo,birthday,tel,qq,addr,jobaddr,sign,sql,u_name;


//提交表单隐藏域的信息
name=new String(request.getParameter("name").getBytes("ISO8859_1"));
u_name=new String(request.getParameter("u_name").getBytes("ISO8859_1"));
mima=request.getParameter("password");
wenti=new String(request.getParameter("question").getBytes("ISO8859_1"));
daan=new String(request.getParameter("answer").getBytes("ISO8859_1"));
sex=new String(request.getParameter("sex").getBytes("ISO8859_1"));
birthday=new String(request.getParameter("birthday").getBytes("ISO8859_1"));
tel=new String(request.getParameter("tel").getBytes("ISO8859_1"));
qq=new String(request.getParameter("qq").getBytes("ISO8859_1"));
addr=new String(request.getParameter("address").getBytes("ISO8859_1"));

 //将用户信息存入数据库
 
 sql="insert into user(name,password,birthday,tel,qq,address,question,answer,sex,u_name) values("+"'"+name+"','"+mima+"','"+birthday+"','"+tel+"','"+qq+"','"+addr+"','"+wenti+"','"+daan+"','"+sex+"','"+u_name+"')";    
 registerbean.executeUpdate(sql);
 %>

 <p align="center"><font color="#0000FF"><%=name%>,你已注册成功</font></p>


　<p align="center"><b><a href="login.html" class="STYLE1">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#0000FF">&nbsp;<a href="modify.jsp" class="STYLE1">修改</a> </font>&nbsp;&nbsp;&nbsp; </b></p>

			<br></td>
		
	</tr>
	<tr>
		<td colspan="3">
			<br></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
</div>
</body>
</html>