

<html>
<head>
<title>������ҳ</title>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<style type="text/css">
<!--
.style6 {
	font-family: "�����п�";
	font-size: 24px;
	color: #2D7EF9;
	font-weight: bold;
}
.style10 {font-size: larger}
/*body {
	background-image: url(images/beijing.jpg);
}*/
#Layer1 {
	position:absolute;
	width:586px;
	height:269px;
	z-index:1;
	left: 347px;
	top: 19px;
}
#Layer2 {
	position:absolute;
	width:280px;
	height:115px;
	z-index:2;
	left: 506px;
	top: 100px;
}
#Layer3 {
	position:absolute;
	width:100px;
	height:43px;
	z-index:3;
	left: 215px;
	top: 289px;
}
#Layer4 {
	position:absolute;
	width:103px;
	height:49px;
	z-index:4;
	left: 542px;
	top: 293px;
}
#Layer5 {
	position:absolute;
	width:103px;
	height:45px;
	z-index:5;
	left: 723px;
	top: 292px;
}
#Layer6 {
	position:absolute;
	width:105px;
	height:51px;
	z-index:6;
	left: 889px;
	top: 289px;
}
-->
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
/*#nav .active{background:url(../images/navhover.gif) repeat-x center;}*/
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
<%@ page import="java.util.Date"%>
<%@ page language="java" import="java.sql.*"%>
<%--@include file="protect/protect.jsp"--%>
<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>
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
        <li><a href="../yigong/list.jsp">�幤�</a></li>
        <li><a href="ly.jsp">��������</a></li>
        <li><a href="../index/index4.jsp">���ݱ���</a></li>
        <li><a href="../index/index3.jsp">���˷���</a></li>
        <li><a href="../index/index2.jsp">��ϵ����</a></li>
    </ul>
</div>

<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="lybean" scope="page" class="mydb.mydb"/>



<table style="background:url(images/qqw.jpg);" id="__01" align="center"width="1007" height="716" border="0" cellpadding="0" cellspacing="0">
<tr>
  <!--<td height="269" colspan="5">&nbsp;</td>-->
  <td width="459" rowspan="2">
    <div id="Layer2" style="top: 218px; left: 525px;"><img src="images/t4.png" width="278" height="101"></div></td>
</tr>
<!--<tr>
  <td width="93" height="46">     
    <a href="../index1.jsp"></a></td>
  <td width="97"> <a href="main.jsp"></a></td>
  <td width="117"> <a href="../xiangce/main.html"></a></td>
  <td width="107"> <a href="../linkway/linkway1.jsp"></a></td>
  <td width="134"><a href="../control/control.html"></a></td>
</tr>-->
<tr>
  
</tr>
<tr>
  <td height="314" colspan="6"><table width="1007" height="119" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="105" height="119" valign="top"><p>&nbsp;</p>
            <p>&nbsp;</p>
 <p><a href="ly.jsp"><img src="images/fa.png" name="ly" width="183" height="57" vspace="30" border="0"></a></p>            
 <p>&nbsp;</p><p><a href="main.jsp"><img height="54" width="181" vspace="30" border="0" src="images/ll.png" name="show"></a></p>
<p><br></p><p><br></p>
          </td>
          <td width="902" valign="top"><p><span class="style10">��Ŀǰ���ڵ�λ����:���Ĺ���&gt;&gt;���԰�</span>

 <%
 int prep,nextp,pageno,pagecount,pagesize,recordcount, i,j,k;

 pagesize=5; //ÿҳ��¼��
 
 //�����¼���� 
String sql="select count(*) from message"	;
ResultSet rs = lybean.executeQuery(sql);
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
          </p>
<%

 String name,memo,subject,selfdate;
 //�����ݿ�
 sql = "select * from message order by id desc";
 rs = lybean.executeQuery(sql);
 
 //Ҫ��ʾҳ���׼�¼
 i=(pageno-1)*pagesize; //�ƶ�ָ�뵽�׼�¼ 
 for (j=0;j<i;j++)
 rs.next();
 
//��ʾ��¼��ÿҳ��ʾ5�� 
 k=0; 
out.print("<center>");
out.print("<table border=2 width='70%'>");

 while(k<pagesize && rs.next())
{

  name = rs.getString(4);
  subject= rs.getString(2);
  memo= rs.getString(3);
   selfdate=rs.getString(5);
  out.print("<table>"); 
  out.print("<tr><td align=center width='99' height='31'><div align='center'>����</div></td><td width='70%'>"+name+"</td></tr>");
 
  out.print("<tr><td align=center width='99' height='31'><div align='center'>����</div></td><td width='70%'>"+subject+"</td></tr>");

  out.print("<tr><td align=center width='99'  height='50'><div align='center'>����</div></td><td width='70%'>"+memo+"</td></tr>");

out.print("<tr><td align=center width='99'  height='50'><div align='center'>����</div></td><td width='70%'>"+selfdate+"</td></tr>");
out.print("</table>");

out.print("<table>");
out.print("<tr><td> <img src=");
out.print('\"');
out.print("images/fe.png");
out.print('\"');
out.print("width='540'  height='20'></td></tr>");
out.print("</table>");  
k++;
}
 out.print("</table><p>");

%>
            <form action=main.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">Ŀǰҳ��:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">��<font size="2" color="blue"><%=recordcount%></font>����¼</font></td>
                  <td width="68"><font size="2">��</font><a href=main.jsp?pageno=<%=prep%>><font size="2">[��һҳ]</font></a></td>
                  <td width="55"><a href=main.jsp?pageno=<%=nextp%>><font size="2">[��һҳ]</font></a></td>
                  <td width="55"><a href=main.jsp?pageno=1><font size="2">[��һҳ]</font></a></td>
                  <td width="68"><a href=main.jsp?pageno=<%=pagecount%>><font size="2">[���һҳ]</font></a></td>
                  <td width="105"><font size="2">����ҳ��:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=����></td>
                </tr>
              </table>
            </form>
            
           
            <center>
              
            </center>          </td>
        </tr>
      </table>      </td>
</tr>

<tr>
  <td colspan="6"><div align="center"></div></td>
</tr>
</table>

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>���Ĺ����� ��Ȩ����</p>
	<!--<p><a href="#">��վ��ҳ</a> | <a href="#">��������</a> | <a href="#">���̰���</a> | <a href="#">�˲���Ƹ</a></p>-->
</div>

</body>
</html>
