<html>
<body>

<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="lybean" scope="page" class="mydb.mydb"/>

<%

 String name,subject,memo;

//�ύ������Ϣ
 name=(String)session.getValue("name");
 
subject=new String(request.getParameter("title").getBytes("ISO8859_1"));

memo = new String(request.getParameter("text").getBytes("ISO8859_1"));

//����Ϊ��ʱ
if(name.length() == 0 || subject.length() == 0|| memo .length() == 0)
 {

  out.print("<center><font color=red size=6>�����ֶβ���Ϊ�հ�</font><p></p> <p><p/>");


  out.print("<hr><a href=main.jsp>�鿴����</a>��");

  out.print("<a href=ly.jsp>��Ҫ����</a>");

 }

else

{   

//���������ݴ������ݿ⣬ת�����Գɹ�����    
 
String sql="insert into message(subject,memo,name)   values(' "+subject+" ',' "+memo+" ','  "+name+" ') ";
lybean.executeUpdate(sql);

//out.print(sql);
response.sendRedirect("lysuccess.jsp");

 }

%>
<body>
</html>