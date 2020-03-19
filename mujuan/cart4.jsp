<html>

<head>
<title>删除或清空后的信息</title>
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

<body>
<%@page contentType="text/html;charset=GB2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>
<div id="header">
    	<h1>爱心公益网</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<div style=" background:url(images/b1.jpg);  margin:0 auto;  width:1000px; height:600px;">
<br></br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%"  id="AutoNumber2">
      <tr>
        <td  align="center" width="100%" height="22"><b><font face="华文新魏" color="#3399FF" font size="8">爱心公益募捐区</font></b></td>
      </tr>
    </table>


<br></br>
<p align="center"><font size="5" color="#9966CC"><b><%=session.getValue("name")%>的募捐区</b></font></p>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  
  <tr>
    <td width="100%" height="16" colspan="4">　</td>
  </tr>
  <tr>
    <td width="100%" colspan="4" height="20">
        </td>
  </tr>
  <tr>
    <td width="100%" height="23" colspan="4">
<center>

<br></br>
<table border=2 width="100%">

 <tr bgcolor="#3399FF">

  <td width="20%" align="center">物品名称</td>
  <!-- <td width="15%" align="center">市场价</td>-->
  <td width="30%" align="center">捐物需求量</td>
  <td width="10%" align="center">捐赠数量</td>
  <!--<td width="10%" align="center">小计</td>-->
  <td width="10%" align="center">删除</td>
</tr>

<%


String name=(String)session.getValue("name"); 
//打开商品数据库（shop_product）与购物车数据库(shop_cart)显示删除或清空后的结果
String sql="select clothelist.product_id,clothelist.product_name,clothelist.product_count,shop_cart.quantity  from shop_cart,clothelist where  shop_cart.name='"
      + name + "'and shop_cart.product_id=clothelist.product_id";

ResultSet rs =shopbean.executeQuery(sql);
int total;

total=0;

String product_name;
int product_count;
int product_discount;

int cart_quantity;

while (rs.next())
{
int proid=rs.getInt(1);//商品编号
product_name=rs.getString(2);//商品名称
product_count=rs.getInt(3);//商品价格
//product_discount=rs.getInt(4);//优惠价格
cart_quantity=rs.getInt(4);//数量

%>

<tr>
<td width="20%" height="1" align="center"><%=product_name%></td>

<td width="30%" height="1" align="center"><%=product_count%></td>
<td width="10%" height="1" align="center"><a href="cart3.jsp?action=decrease&product_id=<%=proid%>"><input type="button"  value="-"><input type="text" name="<%= "t" + proid %>" size="3" value="<%=cart_quantity%>"><a href="cart3.jsp?action=add&product_id=<%=proid%>"><input type="button"  value="+"action="add"></td>

<td width="10%" height="1"><div align="center"><center><p><a href="cart3.jsp?action=delete&product_id=<%=proid%>">delete</a></td>
</tr>



<!--<tr align="center">
<td width="72%" colspan="6" height="16"><div align="right"><p>总计</td>
<td width="36%" colspan="2" height="16"><div align="left"><%=total%></td>
</tr>-->


<%
  }
 %>
 </table>

<center><p><a href="shop_order.htm">确认捐赠</a>&nbsp;&nbsp;&nbsp;
<a href="list.jsp">继续募捐</a>&nbsp;&nbsp;&nbsp;
<a href="cart3.jsp?action=clear">清空信息</a>

 <p></p> 
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
 <p></p>
<p></p> 
 <p></p>
 <p></p>

<hr>

<center><font color="#FF9933">&nbsp;</font><a href="../index/index1.jsp"><font color="#FF0000">返回主页</font></a><font color="#FF9933">&nbsp;
</font>

<p>　</p>
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
    <p>爱心公益网 版权所有</p>
</div>

</body>

</html>
