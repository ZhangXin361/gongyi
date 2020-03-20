<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%!
//定义变量
int iUserNum = 0;
String sUserName = null;
String sNickName = null;
String sSex = null;
String sInfo = null;
%>
<! DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="5">
<title>欢迎光临公益聊天室</title>
<jsp:useBean id="ExecuteDB" scope="page" class="mydb.mydb"/>
</head>
<BODY bgcolor = "#DFFDFF">
<%
Hashtable userList =(Hashtable)application.getAttribute("userList");
Enumeration e=userList.elements();
iUserNum=userList.size();
%>​
<div align =center>​
[<A href="user_info.jsp" target="_self">刷新用户列表</A>]
</div>​
<br>​
在线人数:<font color ="#FF0000">​<%=iUserNum %></font>&nbsp;人
<hr>​
<%
while(e.hasMoreElements())
{
sInfo=(String) e.nextElement();
int i = sInfo.indexOf("**");
if(i != -1)
{
sUserName = sInfo.substring(0,i);
sInfo=sInfo.substring(i+2);
}
 i = sInfo.indexOf("***");
if(i != -1)
{
sSex = sInfo.substring(0,i);
sInfo=sInfo.substring(i+3);
}
sNickName=sInfo;
%>
<img src="images/<% if (sSex.equals("女"))out.print("gg"); else out.print("mm");%>.gif">
<font color ="#0000FF" size="2"><%= sUserName %></font>
<br>
<%
}
%>​
</BODY>
</HTML>