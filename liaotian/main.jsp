<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>'main.jsp'</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">   
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  </head>
  <frameset rows="58%,42%">
      <frameset cols="80%,20%">
          <frame src="left.jsp" name="left" />
          <frame src="right.jsp" name="right" />
      </frameset>
     
      <frameset>
          <frame src="bottom.jsp" name="bottom" />
      </frameset>
  </frameset>
</html>