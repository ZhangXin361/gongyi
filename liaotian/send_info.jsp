<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
String isFirst = (String) session.getAttribute("First");
String sUserName =  (String) session.getAttribute("UserName ");

Vector vChat = (Vector) application.getAttribute("vChat");

if(vChat == null)
{
vChat = new Vector();
application.setAttribute("vChat",vChat);

String sWel = "<font color = red>"+sUserName +"</font>进入聊天室！<br>";
vChat.add(sWel);
session.setAttribute("First","Not");
}
else
{
	if(isFirst == null)
	{
		String sWel = "<font color = red>"+sUserName +"</font>进入聊天室！<br>";
		vChat.add(sWel);
		session.setAttribute("First","Not");
	}
	else
	{
		String sContent = request.getParameter("Content");
		String sTo =  request.getParameter("To");
		String sAction=  request.getParameter("Action");

		if(sContent != null && sContent != " ")
		{
			sTo = new String(sTo.getBytes("iso8859_1"));
			sAction = new String( sAction.getBytes("iso8859_1"));
			sContent = new String(sContent.getBytes("iso8859_1"));
			String sTotal = "<font color = blue>"+sUserName+"</font>"+sAction +"对 <font color=red>"+sTo +"</font>说： "+ sContent + "<br>";
			vChat.add(sTotal);
		}
	}
}
%>
<！ DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="15">
<title>欢迎光临公益聊天室</title>
</head>
<BODY bgcolor="#DFFDFF">
<BR>
<from name = "from1" action="send_info.jsp" method="post" target="_self">
      &nbsp;&nbsp;<%=sUserName%>&nbsp;
<input type ="text" name="Content" size="30" maxlength="50">&nbsp;&nbsp;
<input type ="submit" name="sub" value="发言">&nbsp;&nbsp;
<a herf="../index/index1.jsp" target="_top">退出聊天室</a>
<br>
<br>
&nbsp;&nbsp;对
<select name="To">
<option value="所有人" selseted>所有人</option>
<%
      Hashtable userList=(Hashtable)application.getAttribute("userList");
      Enumeration e = userList.elements();
	while(e.hasMoreElements())
	{
		String sInfo = (String) e.nextElement();
		int i = sInfo.indexOf("***");
		if(i != -1)
		{
			sInfo = sInfo.substring(i+3);
		}
		out.println("<option value=\" "+sInfo+"\">"+sInfo+"</option>");
	}
%>
</select>
&nbsp;动作表情&nbsp;
<select name="Action">
<option value=" " selseted>无表情</option>
<option value="微笑着">微笑</option>
<option value="脸红红地">脸红</option>
<option value="恶狠狠地">凶恶</option>
<option value="依依不舍地">告别</option>
<option value="热情地">打招呼</option>
</select>
</form>
</BODY>
</HTML>


