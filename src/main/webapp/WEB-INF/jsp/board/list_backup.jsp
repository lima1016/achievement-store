<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
            <th scope="col">등록일</th>
        </tr>
        </thead>
        <tbody>
        <!-- align="center" -->
        <c:forEach items="${boards}" var="board">
            <c:if test="${board.isSuccess eq 0}">
                <tr class="board-list-tr" onClick="location.href='/board/detail?boardNo=${board.boardNo}'"
                    style="cursor:pointer;">
                    <th scope="row">${board.boardNo}</th>
                    <td>${board.title}</td>
                    <td>${board.goal}</td>
                    <td>${board.member.name}</td>
                    <td>
                        <fmt:formatDate pattern="yyy-MM-dd" value="${board.regiDate}"/>
                    </td>
                </tr>
            </c:if>
        </c:forEach>
        </tbody>
    </table>
</div>

