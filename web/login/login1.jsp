<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/9/18
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session简单实例</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if(name.equals("zhangsan")){
        if(password.equals("password")){
            session.setAttribute("user",name);
            response.sendRedirect("login2.jsp");
        }
        else{
            request.setAttribute("error","密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
    else{
        request.setAttribute("error","用户名错误");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }



%>

</body>
</html>
