<html>
<head>
<title>ļ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
body {
	background-image: url(images/111.jpg);
	/*background-repeat: repeat-y;*/
}
</style>
</head>
<body topmargin="0" leftmargin="0">
	<%@ page contentType="text/html;charset=gb2312"%>
	<%@ page language="java" import="java.sql.*"%>	
		<!-- ImageReady Slices (regconfirm) -->
		<table  width="100%" align="center">
			<tr>
				<td>
			<jsp:useBean id="bookbean" scope="page" class="mydb.mydb"/>
			<br></br>
			<br></br>
			<table width="100%" id="AutoNumber2">
      <tr align="center">
        <td width="100%" height="22"><b><font face="�����п�" font size="12">
      <%=session.getValue("name")%> �����¼</font></b></td>
      </tr>
</table >
			<br></br>
			
<table border=2 width="100%" align="center">
 <tr bgcolor="#FF9966">
  <td width="15%" align="center">����</td>
  <td width="20%" align="center">��Ʒ����</td>
  <td width="15%" align="center">��������</td>
  <td width="15%" align="center">��ݷ�ʽ</td>
  <td width="15%" align="center">����ʱ��</td>
  <!--<td width="15%" align="center">�ܼ�</td>
  <td width="15%" align="center">��ݷ�ʽ</td>-->
</tr>
			
<%
	String name=(String)session.getValue("name");
	int prep,nextp,pageno,pagecount,pagesize,recordcount,i,j,k;

 	pagesize=10; //ÿҳ��¼��
 
	 //�����¼���� 
	String sql="select count(*) from shop_order1 where nname='"+name+"'"	;
	ResultSet rs = bookbean.executeQuery(sql);
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
	String order_condition,postway,product_name;
	int product_id,quantity,sum;
	
 	//�����ݿ�
 	sql = "select * from shop_order1 where nname='"+name+"' order by sub_id desc";
	
 	rs = bookbean.executeQuery(sql);
 
 	//Ҫ��ʾҳ���׼�¼
 	i=(pageno-1)*pagesize; 
 	//�ƶ�ָ�뵽�׼�¼ 
	for (j=0;j<i;j++)
 	rs.next();
 
	//��ʾ��¼��ÿҳ��ʾ10�� 
 	k=0; 
	//out.print("<center>");
	
 	while(k<pagesize && rs.next())

	{
		name = rs.getString(2);
		product_name = rs.getString(10);
		 order_condition = rs.getString(12);
		postway = rs.getString(7);
		//product_id=rs.getInt(9);
		quantity = rs.getInt(11);
		//sum = rs.getInt(6);
%>
		
<%
  		out.print("<table>"); 
  		out.print("<tr><td width='350' height='20'>"+name+"</td><td width='450'  height='20'>"+product_name+"</td><td width='350'  height='20'>"+quantity+"</td><td width='350'  height='20'>"+postway+"</td><td width='237'  height='20'>"+order_condition+"</td></tr>");
		out.print("</table>");

		out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/bbj4.jpg");
		out.print('\"');
		out.print("width='1800'  height='6'></td></tr>");
		out.print("</table>");  
		k++;
	}
 	out.print("</table><p>");
%>

<form action=orderkan.jsp method=post>
              <table border=0 width="100%">
                <tr>
                  <td width="92"><font size="2">Ŀǰҳ��:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">��<font size="2" color="blue"><%=recordcount%></font>����¼</font></td>
                  <td width="68"><font size="2">��</font><a href=orderkan.jsp?pageno=<%=prep%>><font size="2">[��һҳ]</font></a></td>
                  <td width="55"><a href=orderkan.jsp?pageno=<%=nextp%>><font size="2">[��һҳ]</font></a></td>
                  <td width="55"><a href=orderkan.jsp?pageno=1><font size="2">[��һҳ]</font></a></td>
                  <td width="68"><a href=orderkan.jsp?pageno=<%=pagecount%>><font size="2">[���һҳ]</font></a></td>
                  <td width="105"><font size="2">����ҳ��:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=����></td>
                </tr>
              </table>
            </form>


</table>
<form action=orderkan.jsp method=post>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>  
</td>
</tr>
</table>

<p align="center"><a href="../index/index1.jsp">������ҳ</a></p>        
<!-- End ImageReady Slices -->
</body>
</html>
