<html>
<head>
<title>�幤����</title>
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
    	<h1>���Ĺ�����</h1>
                <ul>
        	<li><i class="iconfont">&#xe602;</i> ���ã���ӭ���밮�Ĺ��� |</li>
                <li><i class="iconfont">&#xe603;</i> <strong>�ǳƣ� </strong><%=(String)session.getValue("name")%>|</li>
            	<li><i class="iconfont">&#xe601;</i> <a href="../index/index.html">ע��</a></li>
        	</ul>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>

<div style=" background:url(images/a.jpg);  margin:0 auto;  width:1000px; height:700px;">

<br></br>
<br></br>
<table>
<form >
			<p align="center"><font color="#44FF33" face="���Ŀ���" size="+20">��������������
			<jsp:useBean id="bookbean" scope="page" class="mydb.mydb"/>

<% 
	//��ȡ��¼ʱ���������
   String name=(String)session.getValue("name");
   //int product_id=(Integer)session.getValue("id");
   int product_id=Integer.parseInt(request.getParameter("product_id"));
   //�����ݿ⽫�û�������ʾ����
  //String sql="select user.id,user.name,user.u_name,user.tel,user.address,yigonglist.product_name,yigonglist.product_time from user where user.name='" +name+"' and yigonglist.product_id='" +product_id+"' ";  
  String sql="select id,name,u_name,tel,address from user where name='" +name+"' ";  
  ResultSet rs=bookbean.executeQuery(sql);
  
  String sql1="select product_name,product_time from yigonglist where id=" + product_id;  
  ResultSet rss=bookbean.executeQuery(sql1);
  
  //out.print(rs.next());
   if (rss.next() && rs.next())
   { 
   //int id = rs.getInt("id");
   //��ȡid��Ϊ��������domodify.jsp
	//int product_id=rs.getInt(5);
	//int quantity=rs.getInt(6);
%> 

</font></p>
<br></br>
<br></br>
<table align="center">
 	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">�ǳ�:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("name")%></font></b></td>
    </tr>
    <tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">����:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("u_name")%></font></b></td>
    </tr>
	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">�绰:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("tel")%></font></b></td>
    </tr>
	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">��ַ:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rs.getString("address")%></font></b></td>
    </tr>
    
    <!--  
    <tr>
	<td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">�����:</font></b></td>
	<td width="78%" align="center"><b><font size="5">
	<select size="1" name="postway">
      <option selected value="10-18������">10-18������</option>
      <option value="18-30������">18-30������</option>
      <option value="30-45������">30-45������</option>
	  <option value="46-60������">46-60������</option>
	  <option value="60����������">60����������</option>
      </select>
	 </font></b> </td>
	</tr>-->

	
  	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">�����:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rss.getString("product_name")%></font></b></td>
    </tr>
	<tr>
      <td width="22%" align="center" bgcolor="#66FFCC"><b><font size="5">����ʱ��:</font></b></td>
      <td width="78%" align="center"><b><font size="5"><%=rss.getString("product_time")%></font></b></td>
    </tr>
    
    
    
</table>


<p align="center"><a href="ordersuccess.jsp?product_id=<%=product_id%>">ȷ�ϲμ�</a></p>
</form>

<p align="center"><a href="../index/index1.jsp">������ҳ</a></p>
 <% 
    rs.close();
    rss.close();}
  %>
</table>
<!-- End ImageReady Slices -->
</div>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>���Ĺ����� ��Ȩ����</p>
</div>

</body>
</html>