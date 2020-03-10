<% String name=null,pri=null;
 request.getSession(true);
 session.putValue("name",name);
 session.putValue("pri",pri);
response.sendRedirect("../login/login.html");%>