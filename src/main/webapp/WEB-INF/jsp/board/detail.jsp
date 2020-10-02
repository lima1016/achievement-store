<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Achievement Store</title>
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/board/board.css">
</head>
<body>
<div class="overlay"></div>
<section class="cd-hero">
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1><a href="/index">${board.title}</a></h1>
                <span>Set your goals and let everyone know your goals.</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                <form method="post" action="add" name="form">
                                    <div class="form-group">
                                        <label for="form-goal">Your goal</label>
                                        <input class="form-control" id="form-goal" value="${board.goal}" readonly/>

                                        <label for="form-contents">contents</label>
                                        <textarea  type="text" class="form-control" id="form-contents" readonly>${board.contents}</textarea>

                                        <label for="form-goal-ham">Make a bet:</label>
                                        <input type="text" id="form-goal-ham" value="${board.goalHam}" readonly/>

                                        <h3>Goal Date</h3>
                                        <div class="input-group date">
                                            <input type="text" class="form-control" value="${board.goalDate}" readonly>
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
        </li>
    </ul> <!-- .cd-hero-slider -->
</section>
<jsp:include page="../footer.jsp"/>
<script src="../js/common/vendor/jquery-1.11.2.min.js"></script>
<script src="../js/common/vendor/bootstrap.min.js"></script>
<script src="../js/common/plugins.js"></script>
<script src="../js/common/main.js"></script>
<script src="../js/member/signUpLogin.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</body>
</html>
