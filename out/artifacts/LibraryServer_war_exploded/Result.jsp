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
    <title>Title</title>
</head>
<body>
    <%! User user; %>
    <% user = (User)session.getAttribute("user"); %>
    <h1>Welcome <%= user.getName()%></h1>
</body>
</html>
