<html>

<head>
<title>ļ����</title>
<style>
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



<%@page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>
<body>
<div id="header">
    	<h1>���Ĺ�����</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<div style=" background:url(images/b1.jpg);  margin:0 auto;  width:1000px; height:600px;">
<br></br>

<table width="100%" id="AutoNumber2">
      <tr align="center">
        <td width="100%" height="22"><b><font face="������κ" font size="8">
        ���Ĺ���ļ����</font></b></td>
      </tr>
</table>
<br></br>
<p align="center"><font size="5" color="#9966CC"><b><%=session.getValue("name")%>��ļ����</b></font></p>

<center>
<br></br>
<table border=2 width="100%" align="center">
 <tr bgcolor="#3399FF">
  <td width="20%" align="center">��Ʒ����</td>
  <!--<td width="15%" align="center">�г���</td>-->
  <td width="30%" align="center">����������</td>
  <td width="10%" align="center">��������</td>
  <!--<td width="10%" align="center">С��</td>-->
  <td width="10%" align="center">ɾ��</td>
</tr>

<%
String name;

int product_id;

//�ύ��Ʒ���
product_id=Integer.parseInt(request.getParameter("product_id"));

//�ύ�˿���
name=(String)session.getValue("name");

//request.getSession(true);
//session.putValue("name",name);


//���빺�ﳵ

//�鿴�û��Ƿ����״ι������Ʒ
String sql="select quantity from shop_cart where  name='" + name + "' and  product_id=" + product_id ;
ResultSet rs = shopbean.executeQuery(sql);

//����ѹ����
if (rs.next())
{

//��Ʒ������һ
int quantity;
quantity=rs.getInt("quantity")+1;

//�޸����ݿ�
 sql="update shop_cart set quantity=" + quantity + " where  name='" + name + "' and product_id=" + product_id ;
 shopbean.executeUpdate(sql);
}

//��һ�ι��򣬽�������Ʒ��Ϣ���빺�ﳵ���ݿ�
else
{
sql="select * from shop_cart order by cart_id desc";
rs=shopbean.executeQuery(sql);
 int idz;
 idz=1;
 if(rs.next())
 {
 
 idz=rs.getInt(1)+1;//���һ����¼��id��1
}
sql="insert into shop_cart (cart_id,name,product_id,quantity)  values ("+idz+",'" + name + "'," + product_id + ","+1+")";
shopbean.executeUpdate(sql);

}



//����Ʒ���ݿ⣨shop_product���빺�ﳵ���ݿ�(shop_cart)�г��û�ѡ�������Ʒ��Ϣ
sql="select clothelist.product_id,clothelist.product_name,clothelist.product_count,shop_cart.quantity from shop_cart,clothelist where  shop_cart.name='"
      + name + "'and shop_cart.product_id=clothelist.product_id";

rs =shopbean.executeQuery(sql);
int total;

total=0;

String product_name;
int product_count;
int product_discount;

int quantity;

while (rs.next())
{
int proid=rs.getInt(1);//��Ʒ���
product_name=rs.getString(2);//��Ʒ����
product_count=rs.getInt(3);//��Ʒ����
//product_discount=rs.getInt(4);//�Żݼ۸�
quantity=rs.getInt(4);//����

%>

<tr>
<td width="20%" height="1" align="center"><%=product_name%></td>

<td width="30%" height="1" align="center"><%=product_count%></td>
<td width="10%" height="1" align="center"><a href="cart3.jsp?action=decrease&product_id=<%=proid%>"><input type="button"  value="-"></a><input type="text" name="<%= "t" + proid %>" size="3" value="<%=quantity%>"><a href="cart3.jsp?action=add&product_id=<%=proid%>"><input type="button"  value="+"action="add"></a></td>

<td width="10%" height="1"><div align="center"><center><p><a href="cart3.jsp?action=delete&product_id=<%=proid%>">delete</a></td>
</tr>

<%
//total=total+product_discount*quantity;
//String strtotal= String.valueOf(total);
 // request.getSession(true);
 //session.putValue("sum",strtotal);



%>

<!--<tr align="center">
<td width="72%" colspan="6" height="16"><div align="right"><p>�ܼ�</td>
<td width="36%" colspan="2" height="16"><div align="left"><%=total%></td>
</tr>-->


<%
  }
%>
</table>

<center><p><a href="shop_order.htm">ȷ�Ͼ���</a>&nbsp;&nbsp;&nbsp;
<a href="list.jsp">����ļ��</a>&nbsp;&nbsp;&nbsp;
<a href="cart3.jsp?action=clear">�����Ϣ</a>



   <p></p>
<hr>

<center><font color="#FF9933">&nbsp;</font><a href="../index/index1.jsp"><font color="#FF9933">������ҳ</font></a><font color="#FF9933">&nbsp;
</font>

<p>��</p>
 </td>
</tr>
<center>
  <tr>
    <td width="100%" height="30" colspan="4">
   
  </tr>
</table>
</div>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>���Ĺ����� ��Ȩ����</p>
</div>

</body>

</html>
