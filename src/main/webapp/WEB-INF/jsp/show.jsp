<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1" cellspacing="0" cellpadding="10">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>年龄</td>
            <td>性别</td>
            <td>电话</td>
            <td>邮箱</td>
            <td>班级</td>
        </tr>
    <c:forEach var="s" items="${studentList}">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
            <td>${s.age}</td>
            <td>${s.gender}</td>
            <td>${s.telephone}</td>
            <td>${s.email}</td>
            <td>${s.classid}</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
