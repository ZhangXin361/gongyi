<html>
<head>
<title>留言窗口</title>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
.STYLE9 {color: #000000}
-->
</style>
>
<style type="text/css">
<!--
.style3 {
	font-family: "华文新魏";
	font-size: 36px;
	color: #324EEB;
}
.style4 {font-size: 34px}
.style5 {color: #CC0033}
.style6 {color: #CC0000}
.style8 {
	font-family: "华文楷体";
	font-size: xx-large;
	font-weight: bold;
}
/*body {
	background-image: url(images/beijing.jpg);
}*/
#Layer4 {
	position:absolute;
	width:597px;
	height:261px;
	z-index:3;
	left: 365px;
	top: 19px;
}
#Layer5 {
	position:absolute;
	width:267px;
	height:115px;
	z-index:1;
	left: 146px;
	top: 72px;
}
#Layer6 {
	position:absolute;
	width:94px;
	height:43px;
	z-index:4;
	left: 230px;
	top: 283px;
}
#Layer7 {
	position:absolute;
	width:99px;
	height:41px;
	z-index:1;
	left: 162px;
	top: 3px;
}
#Layer8 {
	position:absolute;
	width:101px;
	height:42px;
	z-index:1;
	left: 211px;
	top: -1px;
}
#Layer10 {
	position:absolute;
	width:101px;
	height:47px;
	z-index:5;
	left: 797px;
	top: 310px;
}
.STYLE10 {color:black}
.STYLE11 {color:black}
-->
li{ list-style:none;}
a{ text-decoration:none;}
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
#header ul{
	position:absolute;
	top:0;
	right:0;
	}
#header ul li{
	float:left;
	color:#999;
	line-height:25px;
	font-size:12px;
	margin:0 5px;
	}
#header ul li a{
	color:#999;
	line-height:25px;
	padding:0 5px;
	}	
#nav{
	height:35px;
	background:url(images/navbg.gif) repeat-x;
	}
#nav ul{
	width:1000px;
	margin:0 auto;
	height:35px;
	}
#nav ul li{
	float:left;
	background:url(images/navline.gif) no-repeat right;
	}
#nav ul li a{
	color:#FFF;
	font-size:16px;
	font-weight:bold;
	padding:0 40px;
	line-height:35px;
	display:block;
	font-family:"微软雅黑";
	font-weight:normal;
	}
#nav ul li a:hover{
	background:url(images/navhover.gif) repeat-x center;
	text-decoration:none;
	}
/*#nav .active{background:url(../images/navhover.gif) repeat-x center;}*/
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
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<%--@include file="protect/protect.jsp"--%>
<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>
<div id="header">
    	<h1>爱心公益网</h1>
        <ul>
        	<li><i class="iconfont">&#xe602;</i> 您好，欢迎参与爱心公益 |</li>
            <li><i class="iconfont">&#xe603;</i> <strong>昵称： </strong><%=(String)session.getValue("name")%>|</li>
            <li><i class="iconfont">&#xe601;</i> <a href="../index/index.html">注销</a></li>
        </ul>
</div>

<div id="nav">
	<ul>
    	<li class="active"><a href="../index/index1.jsp">首 页</a></li>
        <li><a href="../mujuan/list.jsp">募捐活动</a></li>
        <li><a href="../yigong/list.jsp">义工活动</a></li>
        <li><a href="ly.jsp">公益留言</a></li>
        <li><a href="../index/index4.jsp">数据报表</a></li>
        <li><a href="../index/index3.jsp">个人服务</a></li>
        <li><a href="../index/index2.jsp">联系我们</a></li>
    </ul>
</div>

<table style="background:url(images/backg5.jpg);" id="__01" align="center"width="1007" height="993" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="160" colspan="5"><br></td>
		<td rowspan="2"><div id="Layer4" style="top: 161px; left: 382px;"><br>
		  <div id="Layer5" style="top: 29px; left: 177px;"><img src="images/t4.png" width="278" height="110"></div>
		</div></td>
	</tr>
	<!--<tr>
		<td height="46">
			<a href="../index1.jsp"></a></td>
		<td>
			<a href="main.jsp"></a></td>
		<td>
			<a href="../xiangce/main.html"></a></td>
		<td>
			<a href="../linkway/linkway1.jsp"></a></td>
		<td>
		  
		  <div id="Layer9"></div>
			<a href="../control/control.html"></a></td>
	</tr>
	<tr>
		
	</tr>-->
	<tr valign="top">
<td height="535" colspan="6"><div id="Layer1" style="position:absolute; width:178px; height:533px; z-index:1">
		  <p><br>
        </p>
		  <p>&nbsp;</p>
	    <p align="center">&nbsp;</p>
	    <p align="center"><br>
            <a href="ly.jsp"><img src="images/fa.png" width="159" height="53" border="0"></a></p>
		  <p align="center">&nbsp;</p>
		  <div id="Layer2" style="position: absolute; width: 715px; height: 402px; z-index: 2; left: 230px; top: 51px;">
		    <form action="savememo.jsp" method="post" name="form1" class="style3">
		      <div align="center">
		        <table border="0" background="images/p.jpg" style="top: 1px; left: 13px; height: 501px;" width="651">
                  <tr>
                    <td width="142" height="142"><div align="center" class="style4">
                      <div align="center" class="style5">
                        <p class="STYLE11">主题</p>
                      </div>
                    </div></td>
                    <td width="407" valign="middle"><input name="title" type="text" id="title" size="41" maxlength="30" height="35"></td>
                  </tr>
                  <tr>
                    <td height="122"><div align="center" class="style4 style6 STYLE10">内容</div></td>
                    <td><textarea name="text" cols="40" rows="8" id="text"></textarea></td>
                  </tr>
                  <tr>
                    <td height="63" colspan="2"><div align="center">
                      <p>
<input type="submit" name="SEND" value="提交留言">                      　 　　　　
                      <input type="reset" value="重写留言">
                      　　</p>
                      </div></td>
                  </tr>
                </table>
	          </div>
		    </form>
	    </div>
		  <p align="center"><a href="main.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('show','','images/show1.jpg',1)"><img src="images/ll.png" name="show" width="159" height="54" border="0"></a><br>
        </p>
		</div>
	    <div id="Layer3" style="position: absolute; width: 326px; height: 41px; z-index: 2; left: 385px; top: 332px;" class="style3">
	      <div align="center" class="style8 STYLE9">我要留言</div>
      </div></td>
  </tr>
	<tr>
		<td colspan="6">			</td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
</div>
</body>
</html>