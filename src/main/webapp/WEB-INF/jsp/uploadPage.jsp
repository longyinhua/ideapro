<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 88
  Date: 2019/11/24
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>文件上传</h2>
<form action="<%=request.getContextPath()%>/upload" enctype="multipart/form-data" method="post">
    <input type="file" name="img"/>
    <input type="submit" value="submit"/>
</form>
</body>
</html>
