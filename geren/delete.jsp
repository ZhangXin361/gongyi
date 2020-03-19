<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="messagebean" scope="page" class="mydb.mydb"/>

<%
//接受id参数并转换为整型
int message_id=Integer.parseInt(request.getParameter("id"));

//将该记录删除 
 String sql = "delete from message where id ="+message_id;
 messagebean.executeUpdate(sql);
%>

<script language='javascript'>
    alert("成功删除此留言")
    location='index5.jsp';
</script>
