<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/9/16
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*" language="java" pageEncoding="gbk" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">
  <title>Title</title>
</head>
<body>
This is my first JSP page.
<%=(new java.util.Date()).toString()%>
</body>
</html>