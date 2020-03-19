<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">

<title>信息处理</title>
</head>


<body>
<%@page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>

<%
String zname=(String)session.getValue("name");

//提交购买用户资料
String name=new String(request.getParameter("name").getBytes("ISO8859_1"));
String phone=request.getParameter("phone");
String youbian=request.getParameter("youbian");
String address=new String(request.getParameter("address").getBytes("ISO8859_1"));
String email=request.getParameter("email");
String postway=new String(request.getParameter("postway").getBytes("ISO8859_1"));
String memo=new String(request.getParameter("memo").getBytes("ISO8859_1"));
//填写不完整
if (name==null || phone.equals("") || address.equals("") || postway.equals("") || youbian.equals("") )
{out.print("<p align='center'>请将信息填写完整");
}
else
{
//将购物车信息取出
String sql="select clothelist.product_id,clothelist.product_name,clothelist.product_count,shop_cart.quantity from shop_cart,clothelist where  shop_cart.name='"
      + zname + "'and shop_cart.product_id=clothelist.product_id";

ResultSet rs=shopbean.executeQuery(sql);
int sum,product_count,quantity,product_id;
String product_name;

if(rs!=null){
//while(rs.next())
while(rs.next())
{
 product_id=rs.getInt(1);//商品编号 
 product_name = rs.getString(2);//书名
 product_count=rs.getInt(3);//优惠价格
 quantity=rs.getInt(4);//数量
 //sum=product_discount*quantity;//总价
 

//插入定购数据库
 sql="insert into shop_order1(name,phone,youbian,address,email,postway,memo,product_id,product_name,quantity,nname) values('"+name+"','"+phone+"','"+youbian+"','"+address+"','"+email+"','"+postway+"','"+memo+"','"+product_id+"','"+product_name+"','"+quantity+"','"+zname+"')";    

 shopbean.executeUpdate(sql);//必须再定义一个新的smt对象
 
}}
response.sendRedirect("ordersuccess.jsp");
}
%>
<p>　</p>
<p>　</p>
<p>　</p>
<p>　</p>
<p>　</p>
<p>　</p>
<p>　</p>
<!--<p align="center"><a href="shop_order.htm">返回</a></p>-->
</body>

</html>