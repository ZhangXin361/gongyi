<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="messagebean" scope="page" class="mydb.mydb"/>

<%
//����id������ת��Ϊ����
int message_id=Integer.parseInt(request.getParameter("id"));

//���ü�¼ɾ�� 
 String sql = "delete from message where id ="+message_id;
 messagebean.executeUpdate(sql);
%>

<script language='javascript'>
    alert("�ɹ�ɾ��������")
    location='index5.jsp';
</script>
