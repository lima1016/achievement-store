<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="board_wrap">
    <div class="board-button-div">
        <button class="board-button btn btn-outline-warning" type="button"
                onclick="location.href='/board/form'"> set my new goal
        </button>
    </div>
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
        <c:forEach items="${myBoards}" var="myBoards">
            <c:if test="${myBoards.isSuccess eq 0}">
                <tr class="board-list-tr" onClick="location.href='/board/detail?boardNo=${myBoards.boardNo}'"
                    style="cursor:pointer;">
                    <th scope="row">${myBoards.boardNo}</th>
                    <td>${myBoards.title}</td>
                    <td>${myBoards.goal}</td>
                    <td>${myBoards.member.name}</td>
                    <td>
                        <fmt:formatDate pattern="yyy-MM-dd" value="${myBoards.regiDate}"/>
                    </td>
                </tr>
            </c:if>
        </c:forEach>
        </tbody>
    </table>
</div>
