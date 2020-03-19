<html>

<head>
<title>募捐窗口</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
/*body {
	background-image: url(images/bj.jpg);
	background-repeat: repeat-x;
}*/

li{ list-style:none;}
a{ text-decoration:none;}
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
#header ul{
	position:absolute;
	top:0;
	right:0;
	}
#header ul li{
	float:left;
	color:#999;
	line-height:25px;
	font-size:12px;
	margin:0 5px;
	}
#header ul li a{
	color:#999;
	line-height:25px;
	padding:0 5px;
	}	
#nav{
	height:35px;
	background:url(images/navbg.gif) repeat-x;
	}
#nav ul{
	width:1000px;
	margin:0 auto;
	height:35px;
	}
#nav ul li{
	float:left;
	background:url(images/navline.gif) no-repeat right;
	}
#nav ul li a{
	color:#FFF;
	font-size:16px;
	font-weight:bold;
	padding:0 40px;
	line-height:35px;
	display:block;
	font-family:"微软雅黑";
	font-weight:normal;
	}
#nav ul li a:hover{
	background:url(images/navhover.gif) repeat-x center;
	text-decoration:none;
	}
/*#nav .active{background:url(images/navhover.gif) repeat-x center;}*/
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

<body topmargin="0" leftmargin="0">
<%@page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>
<div id="header">
    	<h1>爱心公益网</h1>
        <ul>
        	<li><i class="iconfont">&#xe602;</i> 您好，欢迎参与爱心公益 |</li>
          <li><i class="iconfont">&#xe603;</i> <strong>昵称： </strong><%=(String)session.getValue("name")%>|</li>
            <li><i class="iconfont">&#xe601;</i> <a href="../index/index.html">注销</a></li>
        </ul>
</div>

<div id="nav">
	<ul>
    	<li class="active"><a href="../index/index1.jsp">首 页</a></li>
        <li><a href="../mujuan/list.jsp">募捐活动</a></li>
        <li><a href="list.jsp">义工活动</a></li>
        <li><a href="../liuyan/ly.htm">公益留言</a></li>
        <li><a href="../index/index4.jsp">数据报表</a></li>
        <li><a href="../index/index3.jsp">个人服务</a></li>
        <li><a href="../index/index2.jsp">联系我们</a></li>
    </ul>
</div>


<div style=" background:url(images/1.jpg);  margin:0 auto;  width:1000px;">

<br></br>
<p align="center"><b><font size="40" color="#43CD80" face="华文新魏">乐&nbsp;&nbsp;志&nbsp;&nbsp;工</font></b></p>
<br></br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
     <!--<tr align="center">
        <td width="100%" height="22"><b><font face="华文新魏" color="#000000" font size="8">
        服装店—购物区</font></b></td>
      </tr>-->
    </table>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#3399FF" width="100%" id="AutoNumber1" height="173">
<br></br>
  <tr>
    <td width="100%" height="50" colspan="10">
    <!-- <center><form method="POST" action="list.jsp">
     <select size="捐物" name="search">
      <option selected value="捐物">捐物</option>
      <option value="捐赠食品">捐赠食品</option>-->
      <!--<option value="包">包</option>
	  <option value="衬衣">衬衣</option>
	  <option value="鞋">鞋</option>-->
     <!-- </select>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="搜索" name="B1"></p>
    </form>
<%
//try{
//String product_name,product_bb,product_type;
//int product_id,product_price,product_discount;
//product_type=new String(request.getParameter("search").getBytes("ISO8859_1"));
//根据选择类别，将书名、书价、介绍等信息显示出来
//String sql="select * from clothelist where product_type='"+product_type+"'";
//ResultSet rs=shopbean.executeQuery(sql);


%>-->
   
<center>
<br></br>
<table border=2 width="100%">

 <tr bgcolor="#33CCFF">

  <td>活动名称</td><td>服务时间</td><td>服务地点</td><td>服务对象</td><td>需要人数</td><td>联系人电话/邮箱</td><td>详细信息</td>


 </tr>

<%
 int prep,nextp,pageno,pagecount,pagesize,recordcount, i,j,k;

 pagesize=6; //每页记录数
 
 //计算记录总数 
String sql="select count(*) from yigonglist"	;
ResultSet rs = shopbean.executeQuery(sql);
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


<%
String name,memo,subject,selfdate;
String product_name,product_bb,product_dui,product_time,product_position,tell;
int product_id,product_count;
 //打开数据库
 sql = "select * from yigonglist order by id desc";
 rs = shopbean.executeQuery(sql);
 
 //要显示页的首纪录
 i=(pageno-1)*pagesize; //移动指针到首纪录 
 for (j=0;j<i;j++)
 rs.next();
 
//显示纪录，每页显示5条 
 k=0; 
//out.print("<center>");
//out.print("<table border=2 width='70%'>");
while (k<pagesize && rs.next())
{
	product_id=rs.getInt(1);
	product_name=rs.getString(2);
	product_bb=rs.getString(3);
	product_position=rs.getString(4);
	product_time=rs.getString(5);
	product_count=rs.getInt(6);
	product_dui=rs.getString(7);
	tell=rs.getString(8);

out.print("<tr><td>"+product_name+"</td>");
out.print("<td>"+product_time+"</td>");
out.print("<td>"+product_position+"</td>");
out.print("<td>"+product_dui+"</td>");
out.print("<td>"+product_count+"</td>");
out.print("<td>"+tell+"</td>");
out.print("<td>"+product_bb+"</td>");
out.print("<td><a href=order.jsp?product_id="+product_id+" >立即参加</a></td>");

out.print("</tr>");
k++;
}
%>

<form action=list.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=list.jsp?pageno=<%=prep%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=list.jsp?pageno=<%=nextp%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=list.jsp?pageno=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=list.jsp?pageno=<%=pagecount%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
                </tr>
              </table>
            </form>


</table>
<hr>

<center><font color="#FF0000">&nbsp;</font><a href=../index/index1.jsp><font color="#FF0000">返回主页</font></a><font color="#FF9933">&nbsp;
</font>

 </td>
</tr>
  <tr>
    <td width="100%" height="16" colspan="4">
    
  </tr>
</table>

<%//}
//catch(Throwable t){}
%>

</div>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
</div>

</body>

</html>