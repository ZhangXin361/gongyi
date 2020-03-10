<html>

<html>
<head>
<title>forget</title>
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
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<!-- ImageReady Slices (forget) -->
<div id="header">
    	<h1>爱心公益网</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<table background="images/a1.jpg" id="__01"  bgcolor="#FFFFFF" align="center"width="900" height="886" border="0" cellpadding="0" cellspacing="0">
	
	<tr>
		<td>&nbsp;</td>
<td>
<jsp:useBean id="bean" scope="page" class="mydb.mydb"/>


<% String msg,wenti,daan,name,sql;

	//提交问题和答案
  name=new String(request.getParameter("name").getBytes("ISO8859_1"));
  wenti=new String(request.getParameter("wenti").getBytes("ISO8859_1"));
  daan=new String(request.getParameter("daan").getBytes("ISO8859_1"));
   //问题或密码不能为空
   if (wenti.length()==0 || daan.length()==0 || name.length()==0)
   {msg="not null";
   response.sendRedirect("forget.jsp?msg="+msg);
   }
   else
   { sql="select * from user where question='" +wenti+"'and answer='"+daan+"' and name='"+name+"'";
    ResultSet rs=bean.executeQuery(sql);
     //问题错误
    if (!rs.next())
    {
     msg="wrong question or wrong anser";
     response.sendRedirect("forget.jsp?msg="+msg);

    }
  
	else
	//找到密码		
    {
    out.print("<center>您的密码为"+rs.getString("password"));
    rs.close();
   	
    }
  }
	%>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>


 <a href="login.html">重新登录</a></td>
		<td>&nbsp;</td>
	</tr>
	
</table>
<!-- End ImageReady Slices -->
<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
</div>
</body>
</html>


</html>