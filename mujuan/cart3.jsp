<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ջ�ɾ��ĳ��Ʒ</title>
</head>

<body>
<%@page contentType="text/html;charset=GB2312"%>

<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>

<%
String action=request.getParameter("action");
String name=(String)session.getValue("name"); 

//�����վ���

if (action.equals("clear")) 
{
//���û����о�����Ϣ�����ݿ�ɾ��
 
String sql="delete from shop_cart where name='" + name + "'";
shopbean.executeUpdate(sql);
request.getSession(true);
session.putValue("name","");
}

//������û�ĳһ����Ʒ�Ĺ���ɾ��

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

//����ѹ����
if (rs.next())
{

//��Ʒ������һ
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

//����ѹ����
if (rs.next())
{

//��Ʒ������һ
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