<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Contact - Mentor Bootstrap Template</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

    <link href="../css/member/mypage.css" rel="stylesheet">
</head>
<body>
<!-- ======= Header ======= -->
<jsp:include page="../header.jsp"/>
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>My Page</h2>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
            <div class="row mt-6">
                <br>
                <section class="photobtn">
                    <div class="thumbnail">
                    <c:if test="${loginUser.profileImg eq null}">
                        <img src="../upload/member/default_img.jpg" id="img">
                    </c:if>
                    <c:if test="${loginUser.profileImg ne null}">
                        <img src="${loginUser.profileImg}" id="img">
                    </c:if>
                    </div>
                    <a id="addphoto" href="" class="btn"><i class="icofont-plus-circle"></i></a>
                    <a id="removephoto" href="" class="btn"><i class="icofont-minus-circle"></i></a>
                </section>
                <input type="file" name="file" id="file"
                       accept="image/*;capture=camera"/>
                <div id="photo_chk" class="vali_check"></div>

                <%--                <div class="col-lg-8 mt-5 mt-lg-0">--%>
                <%--                    <form action="forms/contact.php" method="post" role="form" class="php-email-form">--%>
                <%--                        <div class="form-row">--%>
                <%--                            <div class="col-md-6 form-group">--%>
                <%--                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name"--%>
                <%--                                       data-rule="minlen:4" data-msg="Please enter at least 4 chars"/>--%>
                <%--                                <div class="validate"></div>--%>
                <%--                            </div>--%>
                <%--                            <div class="col-md-6 form-group">--%>
                <%--                                <input type="email" class="form-control" name="email" id="email"--%>
                <%--                                       placeholder="Your Email" data-rule="email"--%>
                <%--                                       data-msg="Please enter a valid email"/>--%>
                <%--                                <div class="validate"></div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                        <div class="form-group">--%>
                <%--                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject"--%>
                <%--                                   data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject"/>--%>
                <%--                            <div class="validate"></div>--%>
                <%--                        </div>--%>
                <%--                        <div class="form-group">--%>
                <%--                            <textarea class="form-control" name="message" rows="5" data-rule="required"--%>
                <%--                                      data-msg="Please write something for us" placeholder="Message"></textarea>--%>
                <%--                            <div class="validate"></div>--%>
                <%--                        </div>--%>
                <%--                        <div class="mb-3">--%>
                <%--                            <div class="loading">Loading</div>--%>
                <%--                            <div class="error-message"></div>--%>
                <%--                            <div class="sent-message">Your message has been sent. Thank you!</div>--%>
                <%--                        </div>--%>
                <%--                        <div class="text-center">--%>
                <%--                            <button type="submit">Send Message</button>--%>
                <%--                        </div>--%>
                <%--                    </form>--%>
                <%--                </div>--%>
            </div>
        </div>
    </section><!-- End Contact Section -->
</main><!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp"/>

<a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
<div id="preloader"></div>
<script src="../js/member/mypage.js"></script>
</body>
</html>