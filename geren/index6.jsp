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
            <li><i class="iconfont">&#xe601;</i> <a href="../index/index.html">注销</a></li>
        </ul>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>


<div style=" background:url(images/q.jpg);  margin:0 auto; width:1000px">

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
	String name=(String)session.getValue("name");
	int prep1,nextp1,pageno1,pagecount1,pagesize1,recordcount1,i1,j1,k1;

 	pagesize1=10; //每页记录数
 
	 //计算记录总数 
	String sql1="select count(*) from shop_order1 where nname='"+name+"'"	;
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
 	sql1 = "select * from shop_order1 where nname='"+name+"' order by sub_id desc";
	
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
		out.print("width='1000'  height='6'></td></tr>");
		out.print("</table>");  
		k1++;
	}
 	out.print("</table><p>");
%>

<form action=index6.jsp.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno1%></font> /<font size="2" color="blue"><%=pagecount1%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount1%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=index6.jsp?pageno=<%=prep1%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=index6.jsp?pageno1=<%=nextp1%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=index6.jsp?pageno1=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=index6.jsp?pageno1=<%=pagecount1%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno1 type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
                </tr>
              </table>
            </form>


</table>


<p align="center"><a href="../index/index3.jsp">返回个人中心</a></p>
</div>





<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
	<!--<p><a href="#">网站首页</a> | <a href="#">关于我们</a> | <a href="#">工程案例</a> | <a href="#">人才招聘</a></p>-->
</div>
</body>
</html>
