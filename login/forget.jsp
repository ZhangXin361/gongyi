<html>
<head>
<title>forget</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:530px;
	height:208px;
	z-index:1;
	left: 421px;
	top: 496px;
}
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
<br></br><br></br>
<%@ page contentType="text/html;charset=gb2312"%>
<!-- ImageReady Slices (forget) -->
<div id="header">
    	<h1>爱心公益网</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<table background="images/a1.jpg" id="__01"  bgcolor="#FFFFFF" align="center"width="900" height="886" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3">
			</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	  <td>
	  <%//如果问题或答案有误，将提示错误信息
String msg=request.getParameter("msg");
	if (msg!=null)
	out.print(msg);


%>
<form method="POST" action="searchmima.jsp">
	  <div id="Layer1">
        <table width="534" height="207" border="1">
          <tr bordercolor="#111111">
            <td align="center" height="30"><b>登陆名</b></td>
            <td height="25"><input type="text" name="name" size="20"></td>
          </tr>
          <tr bordercolor="#111111">
            <td align="center" height="30"><b>密码提示问题</b></td>
            <td height="25"><input type="text" name="wenti" size="20"></td>
          </tr>
          <tr bordercolor="#111111">
            <td align="center" height="30"><b>密码回答答案</b></td>
            <td height="25"><input type="text" name="daan" size="20"></td>
          </tr>
          <tr bordercolor="#111111">
            <td height="105"><p align="center">
                <input type="submit" value="查找密码" name="B1" style="float: right" >
                  </td>
            <td height="105" align="center"><p>
                <input type="reset" value="重新输入" name="B2" style="float: left" >
                  </td>
          </tr>
        </table>
      </div></td>
		<td>&nbsp;</td>
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