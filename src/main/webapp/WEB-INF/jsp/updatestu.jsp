<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 88
  Date: 2019/11/24
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<f:form action="${ctx}/student/saveeit" modelAttribute="student" method="post">
    id:<f:input path="id"></f:input><f:errors path="id"></f:errors></br>
    姓名：<f:input path="username"></f:input><f:errors path="username"></f:errors></br>
    密码：<f:input path="password"></f:input><f:errors path="password"></f:errors></br>
    <input type="submit" value="提交">
</f:form>
</body>
</html>
