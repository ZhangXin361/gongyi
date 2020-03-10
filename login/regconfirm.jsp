<html>
<head>
<title>regconfirm</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
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
	<tr>
		<td colspan="3">
			<img src="images/b2.jpg" width="900" height="261" alt=""></td>
	</tr>
	<tr>
		
		<td>
		<jsp:useBean id="registerbean" scope="page" class="mydb.mydb"/>

<%!
 boolean checkemail(String str)

 {
  int index;
  boolean check;
  if((index=str.indexOf("@")) != -1)
   check = true;
  else
   check = false;
  return(check);
 }
%>

<%
String name,mima,yanzheng,wenti,daan,sex,birthday,tel,qq,addr,u_name;


//提交用户注册信息
name=new String(request.getParameter("name").getBytes("ISO8859_1"));
u_name=new String(request.getParameter("u_name").getBytes("ISO8859_1"));
mima=request.getParameter("password");
yanzheng=request.getParameter("yanzheng");
wenti=new String(request.getParameter("question").getBytes("ISO8859_1"));
daan=new String(request.getParameter("answer").getBytes("ISO8859_1"));
sex=new String(request.getParameter("sex").getBytes("ISO8859_1"));
birthday=new String(request.getParameter("birthday").getBytes("ISO8859_1"));
tel=request.getParameter("tel");
qq=request.getParameter("qq");
addr=new String(request.getParameter("address").getBytes("ISO8859_1"));

//将昵称保存下来，在regsuccess.jsp中使用
request.getSession(true);
session.putValue("name",name);


//昵称、密码、验证、问题、答案为空
if (mima==null || yanzheng.equals("") || wenti.equals("") || daan.equals("") || name.equals("") || u_name.equals(""))
{%>
<script language='javascript'> 
alert('请填写完整') 
window.history.back()   
</script>
<%}
else
//密码与验证不符
if(!mima.equals(yanzheng))
	{
%>
<script language='javascript'> 
  alert('密码与验证不符') 
window.history.back()   
</script>

	 
 <%} 
 else  
 //重名   
 { 
    String sql="select * from user where name='"+name+"'";
    ResultSet rs=registerbean.executeQuery(sql);
  if (rs.next())
    {%>
    <script language='javascript'> 
     alert('重名，请换一个名字') 
 window.history.back()  
    </script>
       <% rs.close();}
   else{ %>
   <form method=post action="regsuccess.jsp">
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="password" value="<%=mima%>">
<input type="hidden" name="yanzheng" value="<%=yanzheng%>">
<input type="hidden" name="question" value="<%=wenti%>">
<input type="hidden" name="answer" value="<%=daan%>">
<input type="hidden" name="sex" value="<%=sex%>">
<input type="hidden" name="birthday" value="<%=birthday%>">
<input type="hidden" name="tel" value="<%=tel%>">
<input type="hidden" name="qq" value="<%=qq%>">
<input type="hidden" name="address" value="<%=addr%>">
<input type="hidden" name="u_name" value="<%=u_name%>">
   <p align="center">hello,<%=name%>,以下是你的信息，请确认！ </p>
   <div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bgcolor="#66FFCC" width="71%" id="AutoNumber1">
    <tr>
      <td width="50%" align="center" ><b><font size="2">昵称</font></b></td>
      <td width="50%" align="center" ><%=name%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">密码</font></b></td>
      <td width="50%" align="center"><%=mima%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">姓名</font></b></td>
      <td width="50%" align="center"><%=u_name%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">问题</font></b></td>
      <td width="50%" align="center"><%=wenti%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">答案</font></b></td>
      <td width="50%" align="center"><%=daan%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><font size="2"><b>性别</b></font></td>
      <td width="50%" align="center"><%=sex%>　</td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">生日</font></b></td>
      <td width="50%" align="center"><%=birthday%></td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">电话</font></b></td>
      <td width="50%" align="center"><%=tel%></td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">QQ</font></b></td>
      <td width="50%" align="center"><%=qq%></td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">家庭住址</font></b></td>
      <td width="50%" align="center"><%=addr%></td>
    </tr>
  </table>
  </center>
</div>
<p align="center">
<input type="submit" value="提交注册">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="返回修改" onClick="history.back()"></p>

</form>
 <%}}%>
		</td>
		
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