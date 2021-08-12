<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1" />
        <title>Insert title here</title>
        <link
            rel="stylesheet"
            href="/webjars/bootstrap/css/bootstrap.min.css"
        />
        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1>All Books</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Language</th>
                    <th scope="col">Number of Pages</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td><c:out value="${book.title}" /></td>
                        <td><c:out value="${book.description}" /></td>
                        <td><c:out value="${book.language}" /></td>
                        <td><c:out value="${book.numberOfPages}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="/books/new">New Book</a>
    </body>
</html>
