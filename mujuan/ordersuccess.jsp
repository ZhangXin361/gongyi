<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">

<title>��Ϣ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
body {
	background-image: url(images/bj4.jpg);
	/*background-repeat: repeat-y;*/
}
</style>
</head>


<body>
<%@page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>

<%
//String name=(String)session.getValue("name");

//�ύ�����û�����
//String name=new String(request.getParameter("name").getBytes("ISO8859_1"));
//int product_id=Integer.parseInt(request.getParameter("product_id"));
//int quantity=Integer.parseInt(request.getParameter("quantity"));
//String order_condition=new String(request.getParameter("order_condition").getBytes("ISO8859_1"));
//int sum=Integer.parseInt(request.getParameter("sum"));
//String postway=new String(request.getParameter("postway").getBytes("ISO8859_1"));
//��д������

//�����ﳵ��Ϣȡ��
//String sql="select clothelist.product_id,clothelist.product_name,clothelist.product_count,shop_cart.quantity from shop_cart,clothelist where  shop_cart.name='"
  //    + name + "'and shop_cart.product_id=clothelist.product_id";

//ResultSet rs=shopbean.executeQuery(sql);
//int sum,product_discount,quantity,product_id;
//String product_name;




%>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<p align="center"><font color="#3399FF" face="���Ŀ���" size="+12">���ѳɹ��ύ��Ϣ
<br></br>
<a href="orderkan.jsp">�����¼</a>&nbsp;&nbsp;&nbsp;
<a href="../index/index1.jsp">������ҳ</a></p>
</body>

</html>
