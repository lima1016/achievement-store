<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
        <c:forEach items="${boards}" var="board" varStatus='boardList'>
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

