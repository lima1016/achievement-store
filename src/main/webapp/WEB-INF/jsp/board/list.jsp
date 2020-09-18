<%--
  Created by IntelliJ IDEA.
  User: kimyo
  Date: 9/11/2020
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/board/board.css">
    <link rel="stylesheet" href="/css/common/index.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="board_wrap">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">제목</th>
            <th scope="col">목표</th>
            <th scope="col">작성자</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${boards}" var="board">
            <tr>
                <th scope="row">${board.boardNo}</th>
                <td>${board.title}</td>
                <td>${board.goal}</td>
                <td>${board.memberNo}</td>
            </tr>
        </c:forEach>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>
        <tr>
            <th scope="row">safgasdg</th>
            <td>agdfhdfag</td>
            <td>adfgadfhn</td>
            <td>ahwaa</td>
        </tr>











        </tbody>
    </table>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>
