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
            <p>Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit
                quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium. </p>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Courses Section ======= -->
    <section id="courses" class="courses">
        <div class="container" data-aos="fade-up">
            <c:if test="${not empty loginUser}">
                <div class="board-button-div">
                    <button class="set-new-goal" type="button"
                            onclick="location.href='/studygroup/form'"> create study group
                    </button>
                </div>
            </c:if>
            <div class="row" data-aos="zoom-in" data-aos-delay="100">
                <c:forEach items="${studyGroups}" var="studyGroup">
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div class="course-item" onClick="location.href='/studygroup/detail?studyNo=${studyGroup.studyNo}'">
                            <c:if test="${studyGroup.img eq null}">
                                <img src="../upload/studyGroup/studyGroup.jpg" class="img-fluid" alt="...">
                            </c:if>
                            <c:if test="${studyGroup.img ne null}">
                                <img src="../upload/studyGroup/${studyGroup.img}" class="img-fluid" alt="...">
                            </c:if>

                            <div class="course-content">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4>${studyGroup.maxPeople}&nbsp;people</h4>
                                    <p class="price"><fmt:formatDate pattern="yyy-MM-dd" value="${studyGroup.regDate}"/></p>
                                </div>
                                <h3>${studyGroup.title}</h3>
                                <div class="trainer d-flex justify-content-between align-items-center">
                                    <div class="trainer-profile d-flex align-items-center">
                                        <img src="../img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                                        <span>${studyGroup.member.name}</span>
                                    </div>
                                    <div class="trainer-rank d-flex align-items-center">
                                        <i class="bx bx-user"></i>&nbsp;${studyGroup.people}
                                        &nbsp;&nbsp;<!-- 해당 게시판의 댓글 갯수 -->
<%--                                        <i class="bx bx-heart"></i>&nbsp;${comments}--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                    <!-- End Course Item-->--%>
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

