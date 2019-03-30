<%@ page import="base_data.User" %><%--
  Created by IntelliJ IDEA.
  User: knowden
  Date: 2019-03-26
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <%! User user; %>
    <% user = (User)session.getAttribute("user"); %>
    <h1>Welcome <%= user.getName()%></h1>
    <h3>请输入您要查询的书目</h3>
    <form action="Result.jsp" method="get">
        <input type="text" name="query"> <br>
        <input type="radio" name="type" value="isbn">ISBN<br>
        <input type="radio" name="type" value="keyword">KeyWord
        <input type="submit" value="查询">
    </form>
</body>
</html>
