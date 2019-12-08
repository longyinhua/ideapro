<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 88
  Date: 2019/11/24
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>新增学员</h1>
<p>
    年级：
    <select>
        <c:forEach items="${requestScope.grades}" var ="grade">
                <option value="${grade}">${grade}</option>
        </c:forEach>
    </select>
</p>
<p>
    <%--此处的f：input path="xx" 有两个作用：
    1）提交时作为表单元素提交
    2）显示modelAttribute属性指定的对象的属性值，modelAttribute属性指定的对象名称在Controller中通过
    Model对象带给页面作用域，若在Controller中没有对应的设置，则页面会报错，此处可以与Controller结合起来
    理解。
    --%>
    <f:form action="${ctx}/student/save" modelAttribute="student" method="post">
 <%--添加时不需要id属性--%>
        姓名：<f:input path="username"></f:input><f:errors path="username"></f:errors></br>
        密码：<f:password path="password"></f:password><f:errors path="password"></f:errors><br>>
        <input type="submit" value="提交">
    </f:form>
</p>
</body>
</html>
