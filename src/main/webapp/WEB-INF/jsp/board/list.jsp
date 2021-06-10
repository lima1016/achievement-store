<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Courses - Mentor Bootstrap Template</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- board CSS File -->
    <link href="../css/board/board.css" rel="stylesheet">

</head>

<body>

<!-- ======= Header ======= -->
<jsp:include page="../header.jsp"/>
<main id="main" data-aos="fade-in">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">
            <h2>Share Your Goal!</h2>
            <p>스스로의 약속을 모두에게 공유하고 지키도록 해보세요!</p>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Courses Section ======= -->
    <section id="courses" class="courses">
        <div class="container" data-aos="fade-up">
            <c:if test="${not empty loginUser}">
                <div class="board-button-div">
                    <button class="set-new-goal" type="button"
                            onclick="location.href='/board/form'"> set my new goal
                    </button>
                </div>
            </c:if>
            <div class="row" data-aos="zoom-in" data-aos-delay="100">
                <c:forEach items="${boards}" var="studyGroup">
                    <c:if test="${studyGroup.isSuccess eq 0}">
                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                            <div class="course-item" onClick="location.href='/board/detail?boardNo=${studyGroup.boardNo}'">
                                <c:if test="${studyGroup.goalImg eq null}">
                                    <img src="../upload/board/study-notebooks.jpg" class="img-fluid" alt="...">
                                </c:if>
                                <c:if test="${studyGroup.goalImg ne null}">
                                    <img src="../upload/board/${studyGroup.goalImg}" class="img-fluid" alt="...">
                                </c:if>

                                <div class="course-content">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4>${studyGroup.goalHam}&nbsp;ham</h4>
                                        <p class="price"><fmt:formatDate pattern="yyy-MM-dd" value="${studyGroup.regiDate}"/></p>
                                    </div>
                                    <h3>${studyGroup.title}</h3>
                                    <p>${studyGroup.goal}</p>
                                    <div class="trainer d-flex justify-content-between align-items-center">
                                        <div class="trainer-profile d-flex align-items-center">
                                            <img src="../img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                                            <span>${studyGroup.member.name}</span>
                                        </div>
                                        <div class="trainer-rank d-flex align-items-center">
                                            <i class="bx bx-user"></i>&nbsp;${studyGroup.boardNo}
                                            &nbsp;&nbsp;<!-- 해당 게시판의 댓글 갯수 -->
                                            <i class="bx bx-heart"></i>&nbsp;${comments}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Course Item-->
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </section><!-- End Courses Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp"/>

<a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
<div id="preloader"></div>

</body>

</html>

