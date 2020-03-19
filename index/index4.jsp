<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>联系我们</title>
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
            <li><i class="iconfont">&#xe601;</i> <a href="index.html">注销</a></li>
        </ul>
</div>

<div id="nav">
	<ul>
    	<li class="active"><a href="index1.jsp">首 页</a></li>
        <li><a href="../mujuan/list.jsp">募捐活动</a></li>
        <li><a href="../yigong/list.jsp">义工活动</a></li>
        <li><a href="../liuyan/ly.jsp">公益留言</a></li>
        <li><a href="index4.jsp">数据报表</a></li>
        <li><a href="index3.jsp">个人服务</a></li>
        <li><a href="index2.jsp">联系我们</a></li>
    </ul>
</div>


<div style=" background:url(images/q.jpg);  margin:0 auto;">
<table width="100%" id="AutoNumber2">
      <tr align="center">
        <td width="100%" height="22"><b><font face="华文行楷" font size="12">
      留言记录</font></b></td>
      </tr>
</table >
<%
 int prep,nextp,pageno,pagecount,pagesize,recordcount, i,j,k;

 pagesize=5; //每页记录数
 
 //计算记录总数 
String sql="select count(*) from message"	;
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

 String name,memo,subject,selfdate;
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

  name = rs.getString(4);
  subject= rs.getString(2);
  memo= rs.getString(3);
   selfdate=rs.getString(5);
  out.print("<table>"); 
  out.print("<tr><td align=center width='99' height='31'><div align='center'>姓名</div></td><td width='70%'>"+name+"</td></tr>");
 
  out.print("<tr><td align=center width='99' height='31'><div align='center'>主题</div></td><td width='70%'>"+subject+"</td></tr>");

  out.print("<tr><td align=center width='99'  height='50'><div align='center'>留言</div></td><td width='70%'>"+memo+"</td></tr>");

out.print("<tr><td align=center width='99'  height='50'><div align='center'>日期</div></td><td width='70%'>"+selfdate+"</td></tr>");
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
            <form action=index4.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=index4.jsp?pageno=<%=prep%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=index4.jsp?pageno=<%=nextp%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=index4.jsp?pageno=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=index4.jsp?pageno=<%=pagecount%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
                </tr>
              </table>
            </form>


<table width="100%" id="AutoNumber2">
      <tr align="center">
        <td width="100%" height="22"><b><font face="华文行楷" font size="12">
      捐物记录</font></b></td>
      </tr>
</table >
<table border=2 width="100%" align="center">
 <tr bgcolor="#FF9966">
  <td width="15%" align="center">姓名</td>
  <td width="20%" align="center">物品名称</td>
  <td width="15%" align="center">捐赠数量</td>
  <td width="15%" align="center">快递方式</td>
  <td width="15%" align="center">捐物时间</td>
  <!--<td width="15%" align="center">总价</td>
  <td width="15%" align="center">快递方式</td>-->
</tr>
			
<%
	//String name=(String)session.getValue("name");
	int prep1,nextp1,pageno1,pagecount1,pagesize1,recordcount1,i1,j1,k1;

 	pagesize1=5; //每页记录数
 
	 //计算记录总数 
	String sql1="select count(*) from shop_order1"	;
	ResultSet rs1 = indexbean.executeQuery(sql1);
	rs1.next(); //记录集刚打开时指针位于第一条记录之前
	recordcount1=rs1.getInt(1);//执行count(*)后该字段中存放记录总数
	rs1.close();	
	//计算总页数
	pagecount1=(recordcount1+pagesize1-1)/pagesize1;

	//对提交页的处理
	if(request.getParameter("pageno1")==null)  //没有输入页码时，页码为1
   	 pageno1=1;
	else
	pageno1=Integer.parseInt(request.getParameter("pageno1"));//字符串转化为整形

	if( pageno1> pagecount1)
	 pageno1 = pagecount1;
 
	if (pageno1<1)
	pageno1 =1;

	//对前后页的判断
  	if(pageno1==1)

 	prep1 = 1;

	else

  	prep1 = pageno1 -1;

 	if(pageno1 == pagecount1)

  	nextp1 = pagecount1;

 	else

  	nextp1 = pageno1 +1;
  	//显示分页
%>


<%
	String order_condition,postway,product_name;
	int product_id,quantity,sum;
	
 	//打开数据库
 	sql1 = "select * from shop_order1 order by sub_id desc";
	
 	rs1 = indexbean.executeQuery(sql1);
 
 	//要显示页的首纪录
 	i1=(pageno1-1)*pagesize1; 
 	//移动指针到首纪录 
	for (j1=0;j1<i1;j1++)
 	rs1.next();
 
	//显示纪录，每页显示10条 
 	k1=0; 
	//out.print("<center>");
	
 	while(k1<pagesize1 && rs1.next())

	{
		name = rs1.getString(2);
		product_name = rs1.getString(10);
		 order_condition = rs1.getString(12);
		postway = rs1.getString(7);
		//product_id=rs.getInt(9);
		quantity = rs1.getInt(11);
		//sum = rs.getInt(6);
%>
		
<%
  		out.print("<table>"); 
  		out.print("<tr><td width='350' height='20'>"+name+"</td><td width='450'  height='20'>"+product_name+"</td><td width='350'  height='20'>"+quantity+"</td><td width='350'  height='20'>"+postway+"</td><td width='237'  height='20'>"+order_condition+"</td></tr>");
		out.print("</table>");

		out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/q1.jpg");
		out.print('\"');
		out.print("width='1800'  height='6'></td></tr>");
		out.print("</table>");  
		k1++;
	}
 	out.print("</table><p>");
%>

<form action=index4.jsp.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno1%></font> /<font size="2" color="blue"><%=pagecount1%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount1%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=index4.jsp?pageno=<%=prep1%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=index4.jsp?pageno1=<%=nextp1%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=index4.jsp?pageno1=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=index4.jsp?pageno1=<%=pagecount1%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno1 type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
                </tr>
              </table>
            </form>


</table>



<table width="100%" id="AutoNumber2">
      <tr align="center">
        <td width="100%" height="22"><b><font face="华文行楷" font size="12">
      参加活动记录</font></b></td>
      </tr>
</table >
<table border=2 width="100%" align="center">
 <tr bgcolor="#FF9966">
  <td width="15%" align="center">用户姓名</td>
  <td width="20%" align="center">活动名称</td>
  <td width="15%" align="center">服务时间</td>
  <td width="15%" align="center">活动编号</td>
  <td width="15%" align="center">报名时间</td>
  <!--<td width="15%" align="center">总价</td>
  <td width="15%" align="center">快递方式</td>-->
</tr>
			
<%
	//String name=(String)session.getValue("name");
	int prep2,nextp2,pageno2,pagecount2,pagesize2,recordcount2,i2,j2,k2;

 	pagesize2=5; //每页记录数
 
	 //计算记录总数 
	String sql2="select count(*) from shop_order ";
	ResultSet rs2 = indexbean.executeQuery(sql2);
	rs2.next(); //记录集刚打开时指针位于第一条记录之前
	recordcount2=rs2.getInt(1);//执行count(*)后该字段中存放记录总数
	rs2.close();	
	//计算总页数
	pagecount2=(recordcount2+pagesize2-1)/pagesize2;

	//对提交页的处理
	if(request.getParameter("pageno2")==null)  //没有输入页码时，页码为1
   	 pageno2=1;
	else
	pageno2=Integer.parseInt(request.getParameter("pageno2"));//字符串转化为整形

	if( pageno2> pagecount2)
	 pageno2 = pagecount2;
 
	if (pageno2<1)
	pageno2 =1;

	//对前后页的判断
  	if(pageno2==1)

 	prep2 = 1;

	else

  	prep2 = pageno2 -1;

 	if(pageno2 == pagecount2)

  	nextp2 = pagecount2;

 	else

  	nextp2 = pageno2 +1;
  	//显示分页
%>


<%
	String order_condition2,age,product_name2,u_name,product_time;
	int product_id2;
	
 	//打开数据库
 	sql2 = "select * from shop_order order by sub_id desc";
	
 	rs2 = indexbean.executeQuery(sql2);
 
 	//要显示页的首纪录
 	i2=(pageno2-1)*pagesize2; 
 	//移动指针到首纪录 
	for (j2=0;j2<i2;j2++)
 	rs2.next();
 
	//显示纪录，每页显示10条 
 	k2=0; 
	//out.print("<center>");
	
 	while(k2<pagesize2 && rs2.next())

	{
		u_name = rs2.getString(7);
		product_name2 = rs2.getString(4);
		order_condition2 = rs2.getString(5);
		//age = rs.getString(3);
		product_id2=rs2.getInt(3);
	    product_time = rs2.getString(8);
		//sum = rs.getInt(6);
%>
		
<%
  		out.print("<table>"); 
  		out.print("<tr><td width='350' height='20'>"+u_name+"</td><td width='450'  height='20'>"+product_name2+"</td><td width='350'  height='20'>"+product_time+"</td><td width='350'  height='20'>"+product_id2+"</td><td width='300'  height='20'>"+order_condition2+"</td></tr>");
		out.print("</table>");

		out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/q1.jpg");
		out.print('\"');
		out.print("width='1800'  height='6'></td></tr>");
		out.print("</table>");  
		k2++;
	}
 	out.print("</table><p>");
%>

<form action=index4.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno2%></font> /<font size="2" color="blue"><%=pagecount2%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount2%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=index4.jsp?pageno=<%=prep2%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=index4.jsp?pageno2=<%=nextp2%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=index4.jsp?pageno2=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=index4.jsp?pageno2=<%=pagecount2%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno2 type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
                </tr>
              </table>
            </form>


</table>

</div>





<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
	<!--<p><a href="#">网站首页</a> | <a href="#">关于我们</a> | <a href="#">工程案例</a> | <a href="#">人才招聘</a></p>-->
</div>
</body>
</html>
