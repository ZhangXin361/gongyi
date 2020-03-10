<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>登录页面处理</title>
</head>

<body>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="loginbean" scope="page" class="mydb.mydb"/>
<%! int count=0;%>          

<%
//提交姓名和密码
String name=new String(request.getParameter("name").getBytes("ISO8859_1"));
String usercount;            //usercount 用来记录使用者上网时的人数
String mima=request.getParameter("password");
//为空时
if (name.length()==0||mima.length()==0)
{%>
<script language='javascript'> 
   alert("请填写完整")
   window.history.back()
   </script>
   
<%}
else
{
//没注册
String sql="select * from user where name='"+name+"'";
ResultSet rs=loginbean.executeQuery(sql); 
if(!rs.next())
{
%>
<script language='javascript'>
alert("请先注册")
window.history.back()

</script ><%}
else
//密码错
{
String mima1=rs.getString("password");
if (!mima1.equals(mima))
{%>
<script language='javascript'> 
   alert("密码错误")
window.history.back()
</script>

<%
}
else
{
//成功登录，计数器加一
  count++;
  usercount = String.valueOf(count);//数字转换成字符
   request.getSession(true);//如果存在的话返回该会话
  session.putValue("usercount",usercount);
   
//保存用户信息
 request.getSession(true);     //将session会话打开
 session.putValue("name",name);//将变量存入session，以便跳转网页时候能保存变量信息。
	int priority = Integer.parseInt(rs.getString("priority"));
	
	if(priority==1){
		response.sendRedirect("../control/control.html");
	}
	else
		response.sendRedirect("../index/index1.jsp");
 rs.close(); 
//转向主页

}
}

}
%>
</body>

</html>