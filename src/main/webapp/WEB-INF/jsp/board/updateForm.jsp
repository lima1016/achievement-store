<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Achievement Store</title>
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/board/detail.css">
</head>
<body>
<div class="overlay"></div>
<section class="cd-hero">
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1><a href="/index">Update My Goal</a></h1>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                <div class="form-group">
                                    <h3>Register Date</h3>
                                    <fmt:formatDate pattern="yyy-MM-dd" value="${board.regiDate}"></fmt:formatDate>
                                    <br>

                                    <form method="post" action="update" name="form">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" id="form-boardNo" name="boardNo"
                                                   value="${board.boardNo}"/>
                                            <input type="hidden" id="member" name="memberNo"
                                                   value="${loginUser.memberNo}" readonly/><br>

                                            <h2 for="form-title">Title for your goal</h2>
                                            <input type="text" class="form-control" id="form-title" name="title"
                                                   value="${board.title}" required/>

                                            <label for="form-goal">Your goal</label>
                                            <input type="text" class="form-control" id="form-goal" name="goal"
                                                   value="${board.goal}" required/>

                                            <label for="form-contents">contents</label>
                                            <textarea type="text" class="form-control" id="form-contents"
                                                      name="contents" required>${board.contents}</textarea>

                                            <label for="form-myHam">My Ham: </label>
                                            <a id="form-myHam">${board.goalHam}</a>

                                            <h3>Goal Date</h3>
                                            <div class="input-group date">
                                                <fmt:formatDate var="fmtDate" pattern="yyy/MM/dd" value="${board.goalDate}"></fmt:formatDate>
                                                <input type="text" class="form-control" name="goalDate"
                                                       value="${fmtDate}" required>
                                                <span class="input-group-addon"><i class="fa fa-calendar"aria-hidden="true"></i></span>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary boardForm-btn" type="submit">Summit</button>
                                        <button class="btn btn-danger boardForm-btn" type="button"
                                                onclick="history.back()">Cancel
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul> <!-- .cd-hero-slider -->
</section>
<jsp:include page="../footer.jsp"/>
<script src="../js/common/vendor/jquery-1.11.2.min.js"></script>
<script src="../js/common/vendor/bootstrap.min.js"></script>
<script type='text/javascript'
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type='text/javascript'>
    $(function () {
        $('.input-group.date').datepicker({
            calendarWeeks: false,
            todayHighlight: true,
            autoclose: true,
            format: "yyyy/mm/dd",
            language: "kr"
        });
    });
</script>
<script>
    history.replaceState({}, null, location.pathname);
</script>
</body>
</html>
