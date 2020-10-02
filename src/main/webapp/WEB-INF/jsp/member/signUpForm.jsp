<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sign in or Sign Up</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="../css/common/fontAwesome.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/member/signUpLogin.css">

</head>
<body>

<div class="overlay"></div>
<section class="cd-hero">
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1><a href="/index">Sign In or Sign Up</a></h1>
                <span>Set your goals and let everyone know your goals.</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                <div class="signUp-form">
                                    <div class="container-signUp" id="container">
                                        <div class="form-container sign-up-container">
                                            <form method="post" action="signUp" name="form" onsubmit="return checkAll();">
                                                <h1 class="signIn-h1">Create Account</h1>
                                                <div class="social-container">
                                                    <a href="#" class="social signIn-a"><i class="fab fa-facebook-f"></i></a>
                                                    <a href="#" class="social signIn-a"><i class="fab fa-google-plus-g"></i></a>
                                                    <a href="#" class="social signIn-a"><i class="fab fa-linkedin-in"></i></a>
                                                </div>
                                                <span>or use your email for registration</span>
                                                <input type="text" id = "name" name="name" placeholder="Name" required/>
                                                <input type="text" id= "id" name="id" placeholder="ID" onblur="idCheckFunc()"/>
                                                <div id="userId_chk"></div>
                                                <input type="email" id="email" name="email" placeholder="Email" onblur="email_check()"/>
                                                <div id="email_chk"></div>
                                                <input type="password" id="password" name="password" placeholder="Password" onblur="password_check()"/>
                                                <div id="password_chk"></div>
                                                <button class="signInUpBtn">Sign Up</button>
                                            </form>
                                        </div>
                                        <div class="form-container sign-in-container">
                                            <form method="POST" action="signIn" name="form">
                                                <h1 class="signIn-h1">Sign in</h1>
                                                <div class="social-container">
                                                    <a href="#" class="social signIn-a"><i class="fab fa-facebook-f"></i></a>
                                                    <a href="#" class="social signIn-a"><i class="fab fa-google-plus-g"></i></a>
                                                    <a href="#" class="social signIn-a"><i class="fab fa-linkedin-in"></i></a>
                                                </div>
                                                <span>or use your account</span>
                                                <input type="text" name="id"placeholder="Id" />
                                                <input type="password" name="password" placeholder="Password" />
                                                <a class="signIn-a" href="#">Forgot your password?</a>
                                                <button class="signInUpBtn">Sign In</button>
                                            </form>
                                        </div>
                                        <div class="overlay-container">
                                            <div class="overlay-signUp">
                                                <div class="overlay-panel overlay-left">
                                                    <h1 class="signIn-h1">Welcome Back!</h1>
                                                    <p class="signUp-p">To keep connected with us please login with your personal info</p>
                                                    <button class="ghost signInUpBtn" id="signIn">Sign In</button>
                                                </div>
                                                <div class="overlay-panel overlay-right">
                                                    <h1 class="signIn-h1">Hello, Friend!</h1>
                                                    <p class="signUp-p">Enter your personal details and start journey with us</p>
                                                    <button class="ghost signInUpBtn" id="signUp">Sign Up</button>
                                                </div>
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
    </ul> <!-- .cd-hero-slider -->
</section> <!-- .cd-hero -->
<jsp:include page="../footer.jsp"/>

<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });

</script>
<script src="../js/member/signUpLogin.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</body>
</html>