<%@ page import="javax.print.attribute.standard.RequestingUserName" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="s" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 88
  Date: 2019/11/20
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>title</title>

</head>
<body>

<s:hasRole name="管理员">
    <a href="<%=request.getContextPath()%>/i18n/change">
        <t:message code="language"></t:message>
    </a>
</s:hasRole>
<li><a href="<%=request.getContextPath()%>/students/addPage"><t:message code="stu.add"></t:message></a></li>
<li><a href="<%=request.getContextPath()%>/students/updatePage?sid=6"><t:message code="stu.upate"></t:message></a></li>
<li><a href="<%=request.getContextPath()%>/students/addPage"><t:message code="uploadDir"></t:message></a></li>

<s:hasPermission name="bookmanager:book:add">
    <li><a href="#">书本查询</a></li>
</s:hasPermission>
<s:hasPermission name="bookmanager:book:add">
    <li><a href="#">书本新增</a></li>
</s:hasPermission>
<s:hasPermission name="bookmanager:book:edit">
    <li><a href="#">书本修改</a></li>
</s:hasPermission>
<s:hasPermission name="bookmanager:book:del">
    <li><a href="#">书本删除</a></li>
</s:hasPermission>

<h1>用于演示权限注解</h1>
<li><a href="<%=request.getContextPath()%>/bookmanager/book/query">查询书本</a></li>
<li><a href="<%=request.getContextPath()%>/bookmanager/book/add">增加书本</a></li>
<li><a href="<%=request.getContextPath()%>/bookmanager/book/edit">修改书本</a></li>
<li><a href="<%=request.getContextPath()%>/bookmanager/book/del">删除书本</a></li>








<h1>hello mvc</h1>
<p>
    <img src="<%=request.getContextPath()%>/static/images/1.jpg"/>
</p>
<p>
<ul>
    <li><a href="<%=request.getContextPath()%>/student/add"><t:message code="stu.add"/></a></li>
</ul>
</p>
<c:if test="${empty requestScope.lst}">
    当前没有数据
    <c:redirect url="/student/all"></c:redirect>
</c:if>
<c:if test="${!empty requestScope.lst}">
    <table border="1" cellspacing="0" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>密码</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${requestScope.lst}" var="emp">
            <tr>
                <th>${emp.id}</th>
                <th>${emp.username}</th>
                <th>${emp.password}</th>
                <th><a href="/student/update?id=${emp.id}"><t:message code="stu.upate"/></a></th>
                <th><a href="/student/delete?id=${emp.id}">Delete</a></th>
            </tr>
        </c:forEach>
    </table>
</c:if>
<ul>
    <li><img src="<%=request.getContextPath()%>/static/images/1.jpg"></li>
    <a href="<%=request.getContextPath()%>/i18n/change"><t:message code="language"/></a>
    <li><a href="<%=request.getContextPath()%>/uploadPage">文件上传</a></li>
</ul>
</body>
</html>
