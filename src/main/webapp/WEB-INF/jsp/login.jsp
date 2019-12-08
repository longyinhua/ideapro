<%--
  Created by IntelliJ IDEA.
  User: 88
  Date: 2019/12/6
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录页面</h1>
${message}
<form id="loginForm" action="<%=request.getContextPath()%>/user/login" method="post">
    <input type="text" id="username" name="username">
    <input type="text" id="password" name="password">
    <input type="submit" value="登录">
</form>
</body>
</html>
