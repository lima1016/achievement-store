<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Newline Template</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <link rel="stylesheet" href="css/common/bootstrap.min.css">
    <link rel="stylesheet" href="css/common/bootstrap-theme.min.css">
    <link href="css/common/fontAwesome.css" rel="stylesheet">
    <link href="css/common/templatemo-style.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/board/board.css">
</head>
<body>

<div class="overlay"></div>
<section class="cd-hero">

    <jsp:include page="header.jsp" />

    <ul class="cd-hero-slider">

        <li class="selected">
            <div class="heading">
                <h1>ACHIEVEMENT-STORE</h1>
                <span>Welcome to Achievement-Store</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                ddddddd
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>Share My Goals</h1>
                <span>share your goals with other people</span>
            </div>
            <div class="cd-half-width second-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content second-content">
                                <div class="row">
<%--                                    <div class="col-md-7 left-image">--%>
<%--                                        <img src="img/left-about-image.jpg">--%>
<%--                                    </div>--%>
                                    <div class="col-md-12">
                                        <div class="right-about-text">
                                            <jsp:include page="board/list.jsp"/>
                                    </div>
                                </div>
<%--                                <div class="row">--%>
<%--                                    <div class="col-md-7">--%>
<%--                                        <div class="left-about-text">--%>
<%--                                            <h4>What we do?</h4>--%>
<%--                                            <p>Nam aliquam ultrices interdum. Vivamus metus mi, accumsan a tincidunt a, efficitur id felis. Vivamus non nibh malesuada, vestibulum nulla in, iaculis sem. Aenean tincidunt faucibus ipsum, ac aliquet nunc accumsan sed. Nulla sodales nunc sit amet libero egestas, ut interdum ex congue.</p>--%>
<%--                                            <div class="primary-button">--%>
<%--                                                <a href="#">Discover More</a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-5 right-image">--%>
<%--                                        <img src="img/right-about-image.jpg">--%>
<%--                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>Featured</h1>
                <span>We produce featured product every week</span>
            </div>
            <div class="cd-half-width third-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content third-content">
                                <div class="row">
                                    <div class="col-md-7 left-image">
                                        <img src="img/left-feature-image.png">
                                    </div>
                                    <div class="col-md-5">
                                        <div class="right-feature-text">
                                            <h4>Featured Product: <em>Newline</em></h4>
                                            <p>Lorem ipsum dolor amet, consecte adipiscing elit, quisque dictum convallis mi. In dapibus auctor dictum donec mattis quis eros ultricies feugiat. Morbi congue faucibus mi, ague blandit curabitur ac lacinia.</p>
                                            <div class="feature-list">
                                                <ul>
                                                    <p>- Suspendisse mattis finibus sem</p>
                                                    <p>- Pellentesque et urna vel lectus</p>
                                                    <p>- Vestibulum iaculis nisi dui</p>
                                                    <p>- Donec sagittis eros , ac tempus ligula</p>
                                                    <p>- Integer sapien risus, auctor</p>
                                                </ul>
                                            </div>
                                            <div class="primary-button">
                                                <a href="#">Discover More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>Our projects</h1>
                <span>Here you can check our recent projects</span>
            </div>
            <div class="cd-half-width fourth-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content fourth-content">
                                <div class="row">
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-01.jpg" data-lightbox="image-1"><img src="img/project-item-01.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-02.jpg" data-lightbox="image-1"><img src="img/project-item-02.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-03.jpg" data-lightbox="image-1"><img src="img/project-item-03.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-04.jpg" data-lightbox="image-1"><img src="img/project-item-04.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-05.jpg" data-lightbox="image-1"><img src="img/project-item-05.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-06.jpg" data-lightbox="image-1"><img src="img/project-item-06.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-07.jpg" data-lightbox="image-1"><img src="img/project-item-07.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-08.jpg" data-lightbox="image-1"><img src="img/project-item-08.jpg"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>Contact us</h1>
                <span>You'll be responded within 48 hrs</span>
            </div>
            <div class="cd-half-width fivth-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content fivth-content">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="left-info">
                                            <p>Maecenas imperdiet sagittis lacus, ut consequat velit iaculis id. Praesent eu consequat urna. Morbi justo dolor, ornare sed lorem et, auctor iaculis ligula.
                                                <br><br>
                                                <em>5566 Donec mollis libero<br>at metus luctus 10660</em>
                                            </p>
                                            <ul class="social-icons">
                                                <i><a href="#"><i class="fa fa-facebook"></i></a></i>
                                                <i><a href="#"><i class="fa fa-twitter"></i></a></i>
                                                <i><a href="#"><i class="fa fa-linkedin"></i></a></i>
                                                <i><a href="#"><i class="fa fa-rss"></i></a></i>
                                                <i><a href="#"><i class="fa fa-behance"></i></a></i>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <form id="contact" action="" method="post">
                                                <div class="col-md-6">
                                                    <fieldset>
                                                        <input name="name" type="text" class="form-control" id="name" placeholder="Your Name" required="">
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-6">
                                                    <fieldset>
                                                        <input name="email" type="email" class="form-control" id="email" placeholder="Email" required="">
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-12">
                                                    <fieldset>
                                                        <textarea name="message" rows="6" class="form-control" id="message" placeholder="Message" required=""></textarea>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-12">
                                                    <fieldset>
                                                        <button type="submit" id="form-submit" class="btn">Send Message</button>
                                                    </fieldset>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul> <!-- .cd-hero-slider -->
</section> <!-- .cd-hero -->

<jsp:include page="footer.jsp" />

<script src="/js/common/vendor/jquery-1.11.2.min.js"></script>
<script src="js/common/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<script src="js/common/vendor/bootstrap.min.js"></script>
<script src="js/common/plugins.js"></script>
<script src="js/common/main.js"></script>

</body>
</html>