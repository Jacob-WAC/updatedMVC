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
        <h1><c:out value="${book.title}" /></h1>
        <p>Description: <c:out value="${book.description}" /></p>
        <p>Language: <c:out value="${book.language}" /></p>
        <p>Number of pages: <c:out value="${book.numberOfPages}" /></p>
        <a href="/books/${book.id}/edit">Edit Book</a>
        <form action="/books/${book.id}" method="post">
            <input type="hidden" name="_method" value="delete" />
            <input type="submit" value="Delete" />
        </form>
    </body>
</html>
