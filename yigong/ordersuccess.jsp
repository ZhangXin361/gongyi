<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">

<title>信息处理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
body {
	background-image: url(images/b.jpg);
	/*background-repeat: repeat-y;*/
}
</style>
</head>


<body>
<%@page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>

<%
//String action=request.getParameter("action");
String name=(String)session.getValue("name");
//int product_id=(Integer)session.getValue("product_id");
int product_id=Integer.parseInt(request.getParameter("product_id"));
//提交购买用户资料
//String name=new String(request.getParameter("name").getBytes("ISO8859_1"));
//int product_id=Integer.parseInt(request.getParameter("product_id"));
//int quantity=Integer.parseInt(request.getParameter("quantity"));
//String order_condition=new String(request.getParameter("order_condition").getBytes("ISO8859_1"));
//int sum=Integer.parseInt(request.getParameter("sum"));
//String age=new String(request.getParameter("age").getBytes("ISO8859_1"));
//String postway=new String(request.getParameter("postway").getBytes("ISO8859_1"));

//填写不完整

//将购物车信息取出

String sql="select u_name,tel,address from user where name='" +name+"' ";  
  ResultSet rs=shopbean.executeQuery(sql);
  
String sql1="select product_name,product_time from yigonglist where id=" + product_id;    
  ResultSet rss=shopbean.executeQuery(sql1);
  

String u_name,tel,address,product_name,product_time;
if(rs.next() && rss.next())

{
 	//name=rs.getString(1);
 	u_name=rs.getString(1);
 	tel=rs.getString(2);
 	address=rs.getString(3);
	//product_id=rs.getInt(1);//商品编号 
 	product_name = rss.getString(1);//书名
 	product_time = rss.getString(2);//书名
 

//插入定购数据库
 sql="insert into shop_order(nname,product_id,product_name,product_time,u_name,tel,address) values('"+name+"',"+product_id+",'"+product_name+"','"+product_time+"','"+u_name+"','"+tel+"','"+address+"')";    

 shopbean.executeUpdate(sql);//必须再定义一个新的smt对象
 
}

 
   rs.close();
    rss.close();




%>

<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<p align="center"><font color="#3399FF" face="华文楷体" size="+12">您已成功提交信息
<br></br>
<a href="orderkan.jsp">捐物记录</a>&nbsp;&nbsp;&nbsp;
<a href="../index/index1.jsp">返回主页</a></p>
</body>

</html>
