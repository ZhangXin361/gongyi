<html>
<head>
<title>义工服务</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">

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
<body>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<!-- ImageReady Slices (modify) -->
<div id="header">
    	<h1>爱心公益网</h1>
                <ul>
        	<li><i class="iconfont">&#xe602;</i> 您好，欢迎参与爱心公益 |</li>
                <li><i class="iconfont">&#xe603;</i> <strong>昵称： </strong><%=(String)session.getValue("name")%>|</li>
            	<li><i class="iconfont">&#xe601;</i> <a href="../index/index.html">注销</a></li>
        	</ul>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>

<div style=" background:url(images/a.jpg);  margin:0 auto;  width:1000px; height:700px;">

<br></br>
<br></br>
<table>
<form >
			<p align="center"><font color="#44FF33" face="华文楷体" size="+20">以下是您的资料
			<jsp:useBean id="bookbean" scope="page" class="mydb.mydb"/>

<% 
	//获取登录时保存的名字
   String name=(String)session.getValue("name");
   //int product_id=(Integer)session.getValue("id");
   int product_id=Integer.parseInt(request.getParameter("product_id"));
   //打开数据库将用户资料显示出来
  //String sql="select user.id,user.name,user.u_name,user.tel,user.address,yigonglist.product_name,yigonglist.product_time from user where user.name='" +name+"' and yigonglist.product_id='" +product_id+"' ";  
  String sql="select id,name,u_name,tel,address from user where name='" +name+"' ";  
  ResultSet rs=bookbean.executeQuery(sql);
  
  String sql1="select product_name,product_time from yigonglist where id=" + product_id;  
  ResultSet rss=bookbean.executeQuery(sql1);
  
  //out.print(rs.next());
   if (rss.next() && rs.next())
   { 
   //int id = rs.getInt("id");
   //获取id作为参数传给domodify.jsp
	//int product_id=rs.getInt(5);
	//int quantity=rs.getInt(6);
%> 

</font></p>
<br></br>
<br></br>
<table align="center">
 	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">昵称:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("name")%></font></b></td>
    </tr>
    <tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">姓名:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("u_name")%></font></b></td>
    </tr>
	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">电话:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("tel")%></font></b></td>
    </tr>
	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">地址:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("address")%></font></b></td>
    </tr>
    
    <!--  
    <tr>
	<td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">年龄段:</font></b></td>
	<td width="78%" align="center"><b><font size="5">
	<select size="1" name="postway">
      <option selected value="10-18岁少年">10-18岁少年</option>
      <option value="18-30岁青年">18-30岁青年</option>
      <option value="30-45岁青年">30-45岁青年</option>
	  <option value="46-60岁中年">46-60岁中年</option>
	  <option value="60岁以上老年">60岁以上老年</option>
      </select>
	 </font></b> </td>
	</tr>-->

	
  	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">活动名称:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rss.getString("product_name")%></font></b></td>
    </tr>
	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">服务时间:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rss.getString("product_time")%></font></b></td>
    </tr>
    
    
    
</table>


<p align="center"><a href="ordersuccess.jsp?product_id=<%=product_id%>">确认参加</a></p>
</form>

<p align="center"><a href="../index/index1.jsp">返回主页</a></p>
 <% 
    rs.close();
    rss.close();}
  %>
</table>
<!-- End ImageReady Slices -->
</div>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
</div>

</body>
</html>