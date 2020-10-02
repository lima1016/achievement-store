<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Newline Template</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="../css/common/fontAwesome.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/board/board.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
</head>
<body>

<div class="overlay"></div>
<section class="cd-hero">
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1><a href="/index">Set My Goals</a></h1>
                <span>Set your goals and let everyone know your goals.</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                <form method="post" action="add" name="form">
                                    <div class="form-group">
                                        <input type="hidden" id="member" name="memberNo"
                                               value="${loginUser.memberNo}" readonly/><br>

                                        <label for="form-title">Title for your goal</label>
                                        <input type="text" class="form-control" id="form-title" name="title"
                                               placeholder="title"/>

                                        <label for="form-goal">Your goal</label>
                                        <input type="text" class="form-control" id="form-goal" name="goal"
                                               placeholder="goal"/>

                                        <label for="form-contents">contents</label>
                                        <input type="text" class="form-control" id="form-contents" name="contents"
                                               placeholder="Another input"/>

                                        <label for="form-ham">My Ham: </label>
                                        <input type="text" id="form-ham" value="${loginUser.ham} ham" readonly>

                                        <label for="form-goal-ham">Make a bet:</label>
                                        <input type="text" id="form-goal-ham" name="goalHam"/>

                                        <div class="container">
                                            <h1>Bootstrap datepicker</h1>
                                            <div class="input-group date">
                                                <input type="text" class="form-control" name="goalDate"><span class="input-group-addon"><i
                                                    class="glyphicon glyphicon-calendar"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit">Summit</button>
                                    <button type="button" onclick="history.back()">Back</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul> <!-- .cd-hero-slider -->
</section> <!-- .cd-hero -->

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<script type='text/javascript'
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>

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

<jsp:include page="../footer.jsp"/>
</body>
</html>