<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="board_wrap">

    <c:if test="${not empty loginUser}">
        <div class="board-button-div">
            <button class="board-button btn btn-outline-warning" type="button"
                    onclick="location.href='/board/form'"> set my new goal
            </button>
        </div>
    </c:if>
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
        <!-- align="center" -->
        <c:forEach items="${boards}" var="board">
            <tr class="board-list-tr" onClick="location.href='http://www.daum.net/'" style="cursor:pointer;">
                <th scope="row">${board.boardNo}</th>
                <td>${board.title}</td>
                <td>${board.goal}</td>
                <td>${board.member.id}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

