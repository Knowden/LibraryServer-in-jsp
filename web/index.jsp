<%@ page import="base_data.User" %>
<%@ page import="main.Server" %>
<%--
  Created by IntelliJ IDEA.
  User: knowden
  Date: 2019-03-26
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>LibraryServer</title>
  </head>
  <h1> Welcome to This LibrarySever System</h1>
  <body>

    <%! private Server server = new Server(); %>
    <%! User user = null;%>

    <%  String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        user = server.login(userName, passWord);
    %>

  <form action="#" method="post">
    UserName: <label>
    <input type="text" name="username"/>
  </label>
    <br>
    PassWord: <label>
    <input type="password" name="password"/>
  </label>
    <br>
    <input type="submit" value="Confirm">
  </form>

    <%
      if (user == null) {
        if (passWord != null) {
        out.println("您输入的账号或密码有误");
        }
      } else {
        session.setAttribute("user", user);
        String site = "Welcome.jsp" ;
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
      }
    %>

  </body>
</html>
