<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/jdt.css" media="all" />

<style>
.hong{background:#ff3273;}
.message-board{ 
	float:right;
	}
.banner{
	height:315px;
	position:relative;
	margin-bottom:50px;}
.imgList-banner{background:url(images/ad3.jpg) no-repeat center;}
.banner:before{
	content:"";
	height:10px;
	background:rgba(0,0,0,0.2);
	display:block;
	}
.banner:after{
	content:"";
	height:100px;
	width:100%;
	display:block;
	background:url(images/zl.png) repeat-x;
	position:absolute;
	top:260px;}
.banner h2{
	width:350px;
	height:60px;
	font-size:30px;
	color:#FFF;
	line-height:60px;
	padding-left:30px;
	position:absolute;
	top:222px;
	left:50%;
	margin-left:-480px;
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
<div style="height:10px; background-color:#C00; position:relative;"></div>


<div style=" background:url(images/q.jpg);  margin:0 auto; width:1000px">
<table width="100%" id="AutoNumber2">
      <tr align="center">
        <td width="100%" height="22"><b><font face="华文行楷" font size="12">
    <%=session.getValue("name")%>留言记录</font></b></td>
      </tr>
</table >
<%
 String name=(String)session.getValue("name");
 int prep,nextp,pageno,pagecount,pagesize,recordcount, i,j,k;

 pagesize=5; //每页记录数
 
 //计算记录总数 
String sql="select count(*) from message "	;
ResultSet rs = indexbean.executeQuery(sql);
rs.next(); //记录集刚打开时指针位于第一条记录之前
recordcount=rs.getInt(1);//执行count(*)后该字段中存放记录总数
rs.close();

//计算总页数
pagecount=(recordcount+pagesize-1)/pagesize;

//对提交页的处理
if(request.getParameter("pageno")==null)  //没有输入页码时，页码为1
    pageno=1;
else
pageno=Integer.parseInt(request.getParameter("pageno"));//字符串转化为整形

if( pageno> pagecount)
 pageno = pagecount;
 
if (pageno<1)
pageno =1;

//对前后页的判断
  if(pageno==1)

  prep = 1;

 else

  prep = pageno -1;

 if(pageno == pagecount)

  nextp = pagecount;

 else

  nextp = pageno +1;
  //显示分页
%>
          </p>
<%

 String memo,subject,selfdate;
 //打开数据库
 sql = "select * from message order by id desc";
 rs = indexbean.executeQuery(sql);
 
 //要显示页的首纪录
 i=(pageno-1)*pagesize; //移动指针到首纪录 
 for (j=0;j<i;j++)
 rs.next();
 
//显示纪录，每页显示5条 
 k=0; 
out.print("<center>");
out.print("<table border=2 width='70%'>");

 while(k<pagesize && rs.next())
{
int proid=rs.getInt(1);//商品编号
  name = rs.getString(4);
  subject= rs.getString(2);
  memo= rs.getString(3);
   selfdate=rs.getString(5);
  out.print("<table>"); 
  out.print("<tr><td align=center width='99' height='31'><div align='center'>姓名</div></td><td width='70%'>"+name+"</td></tr>");
 
  out.print("<tr><td align=center width='99' height='31'><div align='center'>主题</div></td><td width='70%'>"+subject+"</td></tr>");

  out.print("<tr><td align=center width='99'  height='50'><div align='center'>留言</div></td><td width='70%'>"+memo+"</td></tr>");

out.print("<tr><td align=center width='99'  height='50'><div align='center'>日期</div></td><td width='70%'>"+selfdate+"</td></tr>");
out.print("<tr><td align=center width='99'  height='50'><div align='center'>删除</div></td><td width='70%'><a href=delete.jsp?id="+proid+">delete</a></td></tr>");
out.print("</table>");

out.print("<table>");
out.print("<tr><td> <img src=");
out.print('\"');
out.print("images/q1.jpg");
out.print('\"');
out.print("width='540'  height='20'></td></tr>");
out.print("</table>");  
k++;

}
 out.print("</table><p>");

%>
            <form action=index7.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=index5.jsp?pageno=<%=prep%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=index5.jsp?pageno=<%=nextp%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=index5.jsp?pageno=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=index5.jsp?pageno=<%=pagecount%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
                </tr>
              </table>
            </form>


<p align="center"><a href="../index/index3.jsp">返回个人中心</a></p>
</div>





<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
	<!--<p><a href="#">网站首页</a> | <a href="#">关于我们</a> | <a href="#">工程案例</a> | <a href="#">人才招聘</a></p>-->
</div>
</body>
</html>
