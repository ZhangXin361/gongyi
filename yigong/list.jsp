<html>

<head>
<title>ļ�贰��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
/*body {
	background-image: url(images/bj.jpg);
	background-repeat: repeat-x;
}*/

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
#nav{
	height:35px;
	background:url(images/navbg.gif) repeat-x;
	}
#nav ul{
	width:1000px;
	margin:0 auto;
	height:35px;
	}
#nav ul li{
	float:left;
	background:url(images/navline.gif) no-repeat right;
	}
#nav ul li a{
	color:#FFF;
	font-size:16px;
	font-weight:bold;
	padding:0 40px;
	line-height:35px;
	display:block;
	font-family:"΢���ź�";
	font-weight:normal;
	}
#nav ul li a:hover{
	background:url(images/navhover.gif) repeat-x center;
	text-decoration:none;
	}
/*#nav .active{background:url(images/navhover.gif) repeat-x center;}*/
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

<body topmargin="0" leftmargin="0">
<%@page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="shopbean" scope="page" class="mydb.mydb"/>
<div id="header">
    	<h1>���Ĺ�����</h1>
        <ul>
        	<li><i class="iconfont">&#xe602;</i> ���ã���ӭ���밮�Ĺ��� |</li>
          <li><i class="iconfont">&#xe603;</i> <strong>�ǳƣ� </strong><%=(String)session.getValue("name")%>|</li>
            <li><i class="iconfont">&#xe601;</i> <a href="../index/index.html">ע��</a></li>
        </ul>
</div>

<div id="nav">
	<ul>
    	<li class="active"><a href="../index/index1.jsp">�� ҳ</a></li>
        <li><a href="../mujuan/list.jsp">ļ��</a></li>
        <li><a href="list.jsp">�幤�</a></li>
        <li><a href="../liuyan/ly.htm">��������</a></li>
        <li><a href="../index/index4.jsp">���ݱ���</a></li>
        <li><a href="../index/index3.jsp">���˷���</a></li>
        <li><a href="../index/index2.jsp">��ϵ����</a></li>
    </ul>
</div>


<div style=" background:url(images/1.jpg);  margin:0 auto;  width:1000px;">

<br></br>
<p align="center"><b><font size="40" color="#43CD80" face="������κ">��&nbsp;&nbsp;־&nbsp;&nbsp;��</font></b></p>
<br></br>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
     <!--<tr align="center">
        <td width="100%" height="22"><b><font face="������κ" color="#000000" font size="8">
        ��װ�ꡪ������</font></b></td>
      </tr>-->
    </table>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#3399FF" width="100%" id="AutoNumber1" height="173">
<br></br>
  <tr>
    <td width="100%" height="50" colspan="10">
    <!-- <center><form method="POST" action="list.jsp">
     <select size="����" name="search">
      <option selected value="����">����</option>
      <option value="����ʳƷ">����ʳƷ</option>-->
      <!--<option value="��">��</option>
	  <option value="����">����</option>
	  <option value="Ь">Ь</option>-->
     <!-- </select>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="����" name="B1"></p>
    </form>
<%
//try{
//String product_name,product_bb,product_type;
//int product_id,product_price,product_discount;
//product_type=new String(request.getParameter("search").getBytes("ISO8859_1"));
//����ѡ����𣬽���������ۡ����ܵ���Ϣ��ʾ����
//String sql="select * from clothelist where product_type='"+product_type+"'";
//ResultSet rs=shopbean.executeQuery(sql);


%>-->
   
<center>
<br></br>
<table border=2 width="100%">

 <tr bgcolor="#33CCFF">

  <td>�����</td><td>����ʱ��</td><td>����ص�</td><td>�������</td><td>��Ҫ����</td><td>��ϵ�˵绰/����</td><td>��ϸ��Ϣ</td>


 </tr>

<%
 int prep,nextp,pageno,pagecount,pagesize,recordcount, i,j,k;

 pagesize=6; //ÿҳ��¼��
 
 //�����¼���� 
String sql="select count(*) from yigonglist"	;
ResultSet rs = shopbean.executeQuery(sql);
rs.next(); //��¼���մ�ʱָ��λ�ڵ�һ����¼֮ǰ
recordcount=rs.getInt(1);//ִ��count(*)����ֶ��д�ż�¼����
rs.close();

//������ҳ��
pagecount=(recordcount+pagesize-1)/pagesize;

//���ύҳ�Ĵ���
if(request.getParameter("pageno")==null)  //û������ҳ��ʱ��ҳ��Ϊ1
    pageno=1;
else
pageno=Integer.parseInt(request.getParameter("pageno"));//�ַ���ת��Ϊ����

if( pageno> pagecount)
 pageno = pagecount;
 
if (pageno<1)
pageno =1;

//��ǰ��ҳ���ж�
  if(pageno==1)

  prep = 1;

 else

  prep = pageno -1;

 if(pageno == pagecount)

  nextp = pagecount;

 else

  nextp = pageno +1;
  //��ʾ��ҳ
%>


<%
String name,memo,subject,selfdate;
String product_name,product_bb,product_dui,product_time,product_position,tell;
int product_id,product_count;
 //�����ݿ�
 sql = "select * from yigonglist order by id desc";
 rs = shopbean.executeQuery(sql);
 
 //Ҫ��ʾҳ���׼�¼
 i=(pageno-1)*pagesize; //�ƶ�ָ�뵽�׼�¼ 
 for (j=0;j<i;j++)
 rs.next();
 
//��ʾ��¼��ÿҳ��ʾ5�� 
 k=0; 
//out.print("<center>");
//out.print("<table border=2 width='70%'>");
while (k<pagesize && rs.next())
{
	product_id=rs.getInt(1);
	product_name=rs.getString(2);
	product_bb=rs.getString(3);
	product_position=rs.getString(4);
	product_time=rs.getString(5);
	product_count=rs.getInt(6);
	product_dui=rs.getString(7);
	tell=rs.getString(8);

out.print("<tr><td>"+product_name+"</td>");
out.print("<td>"+product_time+"</td>");
out.print("<td>"+product_position+"</td>");
out.print("<td>"+product_dui+"</td>");
out.print("<td>"+product_count+"</td>");
out.print("<td>"+tell+"</td>");
out.print("<td>"+product_bb+"</td>");
out.print("<td><a href=order.jsp?product_id="+product_id+" >�����μ�</a></td>");

out.print("</tr>");
k++;
}
%>

<form action=list.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">Ŀǰҳ��:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">��<font size="2" color="blue"><%=recordcount%></font>����¼</font></td>
                  <td width="68"><font size="2">��</font><a href=list.jsp?pageno=<%=prep%>><font size="2">[��һҳ]</font></a></td>
                  <td width="55"><a href=list.jsp?pageno=<%=nextp%>><font size="2">[��һҳ]</font></a></td>
                  <td width="55"><a href=list.jsp?pageno=1><font size="2">[��һҳ]</font></a></td>
                  <td width="68"><a href=list.jsp?pageno=<%=pagecount%>><font size="2">[���һҳ]</font></a></td>
                  <td width="105"><font size="2">����ҳ��:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=����></td>
                </tr>
              </table>
            </form>


</table>
<hr>

<center><font color="#FF0000">&nbsp;</font><a href=../index/index1.jsp><font color="#FF0000">������ҳ</font></a><font color="#FF9933">&nbsp;
</font>

 </td>
</tr>
  <tr>
    <td width="100%" height="16" colspan="4">
    
  </tr>
</table>

<%//}
//catch(Throwable t){}
%>

</div>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>���Ĺ����� ��Ȩ����</p>
</div>

</body>

</html>