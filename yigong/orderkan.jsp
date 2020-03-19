<html>
<head>
<title>爱心公益</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
body {
	background-image: url(images/0.jpg);
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
        <td width="100%" height="22"><b><font face="华文行楷" font size="12">
      <%=session.getValue("name")%> 参加活动记录</font></b></td>
      </tr>
</table >
			<br></br>
			
<table border=2 width="100%" align="center">
 <tr bgcolor="#FF9966">
  <td width="15%" align="center">用户姓名</td>
  <td width="20%" align="center">活动名称</td>
  <td width="15%" align="center">服务时间</td>
  <td width="15%" align="center">活动编号</td>
  <td width="15%" align="center">报名时间</td>
  <!--<td width="15%" align="center">总价</td>
  <td width="15%" align="center">快递方式</td>-->
</tr>
			
<%
	String name=(String)session.getValue("name");
	int prep,nextp,pageno,pagecount,pagesize,recordcount,i,j,k;

 	pagesize=10; //每页记录数
 
	 //计算记录总数 
	String sql="select count(*) from shop_order where nname='"+name+"'"	;
	ResultSet rs = bookbean.executeQuery(sql);
	rs.next(); //记录集刚打开时指针位于第一条记录之前
	recordcount=rs.getInt(1);//执行count(*)后该字段中存放记录总数
	rs.close();	
	//计算总页数
	pagecount=(recordcount+pagesize-1)/pagesize;

	//对提交页的处理
	if(request.getParameter("pageno")==null)  //没有输入页码时，页码为1
   	 pageno=1;
	else
	pageno=Integer.parseInt(request.getParameter("pageno"));//字符串转化为整形

	if( pageno> pagecount)
	 pageno = pagecount;
 
	if (pageno<1)
	pageno =1;

	//对前后页的判断
  	if(pageno==1)

 	prep = 1;

	else

  	prep = pageno -1;

 	if(pageno == pagecount)

  	nextp = pagecount;

 	else

  	nextp = pageno +1;
  	//显示分页
%>


<%
	String order_condition,age,product_name,u_name,product_time,tel;
	int product_id;
	
 	//打开数据库
 	sql = "select * from shop_order where nname='"+name+"' order by sub_id desc";
	
 	rs = bookbean.executeQuery(sql);
 
 	//要显示页的首纪录
 	i=(pageno-1)*pagesize; 
 	//移动指针到首纪录 
	for (j=0;j<i;j++)
 	rs.next();
 
	//显示纪录，每页显示10条 
 	k=0; 
	//out.print("<center>");
	
 	while(k<pagesize && rs.next())

	{
		u_name = rs.getString(7);
		product_name = rs.getString(4);
		order_condition = rs.getString(5);
		//age = rs.getString(3);
		product_id=rs.getInt(3);
	    product_time = rs.getString(8);
	    //tel = rs.getString(9);
		//sum = rs.getInt(6);
%>
		
<%

  		out.print("<table>"); 
  		out.print("<tr><td width='350' height='20'>"+u_name+"</td><td width='450'  height='20'>"+product_name+"</td><td width='350'  height='20'>"+product_time+"</td><td width='350'  height='20'>"+product_id+"</td><td width='300'  height='20'>"+order_condition+"</td></tr>");
		out.print("</table>");

		out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/q.jpg");
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
                  <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
                  <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount%></font>条记录</font></td>
                  <td width="68"><font size="2">　</font><a href=orderkan.jsp?pageno=<%=prep%>><font size="2">[上一页]</font></a></td>
                  <td width="55"><a href=orderkan.jsp?pageno=<%=nextp%>><font size="2">[下一页]</font></a></td>
                  <td width="55"><a href=orderkan.jsp?pageno=1><font size="2">[第一页]</font></a></td>
                  <td width="68"><a href=orderkan.jsp?pageno=<%=pagecount%>><font size="2">[最后一页]</font></a></td>
                  <td width="105"><font size="2">输入页号:</font>
                      <input size=3 name=pageno type=text></td>
                  <td width="41"><input type=submit name=SEND2 value=查找></td>
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

<p align="center"><a href="../index/index1.jsp">返回主页</a></p>        
<!-- End ImageReady Slices -->
</body>
</html>
