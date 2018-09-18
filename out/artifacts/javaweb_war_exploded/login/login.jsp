<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/9/18
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<form action="login1.jsp">
    用户名:<input type="text" name="name"><br>
    密码：<input type="password" name="password"><br>
    <input type="submit" value="提交">
    <div id="error">
        <font color="red"></font>
        <%
        String message = (String)request.getAttribute("error");
        if(message != null) out.println(message);
        %>
    </div>


</form>

</body>
</html>
