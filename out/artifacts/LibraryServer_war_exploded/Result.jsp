<%@ page import="main.Server" %>
<%@ page import="base_data.Book" %>
<%@ page import="base_data.ISBN" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: knowden
  Date: 2019-03-26
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <%! private Server server = new Server(); %>

    <h1>对于 <%= request.getParameter("query")%> 的查询结果如下</h1>
    <table border="1" cellspacing="0">
        <tr>
            <th>ISBN</th>
            <th>Name</th>
            <th>Author</th>
            <th>Price</th>
        </tr>
        <%
            ArrayList<Book> books = new ArrayList<>();
            String type = request.getParameter("type");
            if (type.equals("isbn")) {
                ISBN isbn = new ISBN(request.getParameter("query"));
                books = server.inquireBooks(isbn);
            }
            else if (type.equals("keyword")) {
                String keyWord = request.getParameter("query");
                books = server.inquireBooks(keyWord);
            }
            for (Book book : books) {
                out.println("<tr>");
                out.println("<th>" + book.getIsbn() + "</th>");
                out.println("<th>" + book.getName() + "</th>");
                out.println("<th>" + book.getAuthor() + "</th>");
                out.println("<th>" + book.getPrice() + "</th>");
                out.println("</tr");
            }
        %>
    </table>

</body>
</html>
