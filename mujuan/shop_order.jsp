<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">

<title>��Ϣ����</title>
</head>


<body>
<%@page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>

<%
String zname=(String)session.getValue("name");

//�ύ�����û�����
String name=new String(request.getParameter("name").getBytes("ISO8859_1"));
String phone=request.getParameter("phone");
String youbian=request.getParameter("youbian");
String address=new String(request.getParameter("address").getBytes("ISO8859_1"));
String email=request.getParameter("email");
String postway=new String(request.getParameter("postway").getBytes("ISO8859_1"));
String memo=new String(request.getParameter("memo").getBytes("ISO8859_1"));
//��д������
if (name==null || phone.equals("") || address.equals("") || postway.equals("") || youbian.equals("") )
{out.print("<p align='center'>�뽫��Ϣ��д����");
}
else
{
//�����ﳵ��Ϣȡ��
String sql="select clothelist.product_id,clothelist.product_name,clothelist.product_count,shop_cart.quantity from shop_cart,clothelist where  shop_cart.name='"
      + zname + "'and shop_cart.product_id=clothelist.product_id";

ResultSet rs=shopbean.executeQuery(sql);
int sum,product_count,quantity,product_id;
String product_name;

if(rs!=null){
//while(rs.next())
while(rs.next())
{
 product_id=rs.getInt(1);//��Ʒ��� 
 product_name = rs.getString(2);//����
 product_count=rs.getInt(3);//�Żݼ۸�
 quantity=rs.getInt(4);//����
 //sum=product_discount*quantity;//�ܼ�
 

//���붨�����ݿ�
 sql="insert into shop_order1(name,phone,youbian,address,email,postway,memo,product_id,product_name,quantity,nname) values('"+name+"','"+phone+"','"+youbian+"','"+address+"','"+email+"','"+postway+"','"+memo+"','"+product_id+"','"+product_name+"','"+quantity+"','"+zname+"')";    

 shopbean.executeUpdate(sql);//�����ٶ���һ���µ�smt����
 
}}
response.sendRedirect("ordersuccess.jsp");
}
%>
<p>��</p>
<p>��</p>
<p>��</p>
<p>��</p>
<p>��</p>
<p>��</p>
<p>��</p>
<!--<p align="center"><a href="shop_order.htm">����</a></p>-->
</body>

</html>