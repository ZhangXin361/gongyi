<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
String sUserName = (String)session.getAttribute("UserName");
%>
<！ DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="5">
<title>欢迎光临公益聊天室</title>
</head>
<BODY bgcolor="#DFFDFF">
<h1 align="center">欢迎<font color = "#0000FF"><%=sUserName %></font>光临公益聊天室</h1>
<hr>
<%
Vector vChat =(Vector ) application.getAttribute("vChat");
if(vChat != null)
{
     Object[] objWords = vChat.toArray();
     int iLen=objWords.length;
     for(int i=iLen-1;i>=0;i--)
     {
           out.println(objWords[i]);
      }
}
%>
</body>
</html>