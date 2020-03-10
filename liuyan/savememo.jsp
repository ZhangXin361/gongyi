<html>
<body>

<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="lybean" scope="page" class="mydb.mydb"/>

<%

 String name,subject,memo;

//提交留言信息
 name=(String)session.getValue("name");
 
subject=new String(request.getParameter("title").getBytes("ISO8859_1"));

memo = new String(request.getParameter("text").getBytes("ISO8859_1"));

//内容为空时
if(name.length() == 0 || subject.length() == 0|| memo .length() == 0)
 {

  out.print("<center><font color=red size=6>输入字段不可为空白</font><p></p> <p><p/>");


  out.print("<hr><a href=main.jsp>查看留言</a>　");

  out.print("<a href=ly.jsp>我要留言</a>");

 }

else

{   

//将留言内容存入数据库，转向留言成功界面    
 
String sql="insert into message(subject,memo,name)   values(' "+subject+" ',' "+memo+" ','  "+name+" ') ";
lybean.executeUpdate(sql);

//out.print(sql);
response.sendRedirect("lysuccess.jsp");

 }

%>
<body>
</html>