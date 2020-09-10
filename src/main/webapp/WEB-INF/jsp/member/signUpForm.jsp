<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <link rel="stylesheet" href="/css/member/signUpLogin.css">

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="/js/member/signUpLogin.js" type="text/javascript"></script>
</head>
<body>
<div class="overlay"></div>
<div class="modal position">
    <img src="https://www.dropbox.com/s/poqtu9ihb4xsmq3/mn-logo.png?raw=1" class="logo">
    <div class="brand login-text">
        Sign in with your email or username<br><br>
        <strong>OR</strong><br><br> Use Facebook secure login for quick access to your account.
    </div>
    <button class="brand login flat-button facebook">Continue with Facebook</button>
    <div class="form position">
        <a href="#"><button class="close">x</button></a>
        <div class="form-inner">
            <!-- Tabs-->
            <div class="tabs">
                <ul class="tabs">
                    <li class="current" data-tab="member">
                        <a href="#member">I am a member</a>
                    </li>
                    <li data-tab="new">
                        <a href="#new">I am new here</a>
                    </li>
                </ul>
                <!--Login Form -->
                <div class="form-content current" id="member">
                    <form id="sign-in" method="POST" action="signIn" name="form">
                        <input type="userId" name="userId-id"  placeholder="USERID" class="field" required>
                        <input type="password" name="password" placeholder="PASSWORD" class="field" required>
                        <div class="clear"></div>
                        <input type="checkbox" name="rmbrme" id="custom-check" class="check"><label for="custom-check" class="check-label secondary-text">Remember me</label><a href=""><span class="forgot secondary-text">Forgot password?</span></a>
                        <button type="submit" name="sign-in-button" class="flat-button signin">Log In</button>
                    </form>
                </div>
                <!--Registration form-->
                <div class="form-content" id="new">
                    <form id="reg" method="post" action="signUp" name="form" onsubmit="return checkAll();">
                        <input type="text" name="memberName" placeholder="User Name" class="field" required/>
                        <input type="text" id="userId" name="userId-id" placeholder="USERNAME" class="field" onblur="idCheckFunc()" required>
                        <div id="userId_chk" class="vali_check"></div>
                        <input type="email" id="email" name="email" placeholder="EMAIL ADDRESS" class="field" onblur="email_check()" required>
                        <div id="email_chk" class="vali_check"></div>
                        <input type="password" id="password" name="password" placeholder="PASSWORD" class="field" onblur="password_check()" required>
                        <div id="password_chk" class="vali_check"></div>
                        <button type="button" name="register-button" class="flat-button signin">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

