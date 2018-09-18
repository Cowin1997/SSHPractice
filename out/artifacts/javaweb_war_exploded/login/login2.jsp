<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/9/18
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session简单实例</title>
</head>
<%
    String name = (String)session.getAttribute("user");
    if(name == null)
        request.getRequestDispatcher("login.jsp").forward(request,response);
%>
<body>
    <h1>登陆成功！</h1>
    <%--<%=request.getParameter("name")%>--%>

</body>
</html>
