<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>清空或删除某商品</title>
</head>

<body>
<%@page contentType="text/html;charset=GB2312"%>

<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>

<%
String action=request.getParameter("action");
String name=(String)session.getValue("name"); 

//如果清空捐物

if (action.equals("clear")) 
{
//将用户所有捐物信息从数据库删除
 
String sql="delete from shop_cart where name='" + name + "'";
shopbean.executeUpdate(sql);
request.getSession(true);
session.putValue("name","");
}

//如果将用户某一种商品的购买删除

if (action.equals("delete"))
 { 
int id=Integer.parseInt(request.getParameter("product_id"));

String sql="delete from shop_cart where  name='" + name + "' and product_id=" + id ;
shopbean.executeUpdate(sql);


}
if (action.equals("add"))
 { 
int id=Integer.parseInt(request.getParameter("product_id"));
String sql="select quantity from shop_cart where  name='" + name + "' and  product_id=" + id ;
ResultSet rs = shopbean.executeQuery(sql);

//如果已购买过
if (rs.next())
{

//商品数量加一
int quantity;
quantity=rs.getInt("quantity")+1;
sql="update shop_cart set quantity="+quantity+" where  name='" + name + "' and product_id=" + id ;
shopbean.executeUpdate(sql);
}

}
if (action.equals("decrease"))
 { 
int id=Integer.parseInt(request.getParameter("product_id"));
String sql="select quantity from shop_cart where  name='" + name + "' and  product_id=" + id ;
ResultSet rs = shopbean.executeQuery(sql);

//如果已购买过
if (rs.next())
{

//商品数量加一
int quantity;
quantity=rs.getInt("quantity")-1;
sql="update shop_cart set quantity="+quantity+" where  name='" + name + "' and product_id=" + id ;
shopbean.executeUpdate(sql);
}

}
response.sendRedirect("cart4.jsp");
%>

</body>

</html>