<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <link rel="stylesheet" href="/css/member/signUpLogin.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

    <script src="/js/member/signUpLogin.js" type="text/javascript"></script>
</head>
<body>
<div class="cotn_principal">
    <div class="cont_centrar">
        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <!-- LOGIN -->
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">
                        <h2>LOGIN</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
                    </div>
                </div>
                <!-- SIGNUP -->
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>SIGN UP</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur.</p>
                        <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
                    </div>
                </div>
            </div>
            <div class="cont_back_info">
                <div class="cont_img_back_grey">
                    <img src="https://images.unsplash.com/photo-1453831362806-3d5577f014a4?dpr=1&auto=compress,format&fit=crop&w=1199&h=812&q=80&cs=tinysrgb&crop="
                         alt=""/>
                </div>

            </div>

            <!-- LOGIN form -->
            <div class="cont_forms">
                <form method="post" action="signIn">
                    <div class="cont_img_back_">
                        <img src="https://images.unsplash.com/photo-1453831362806-3d5577f014a4?dpr=1&auto=compress,format&fit=crop&w=1199&h=812&q=80&cs=tinysrgb&crop="
                             alt=""/>
                    </div>
                    <div class="cont_form_login">
                        <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                        <h2>LOGIN</h2>
                        <input type="text" name="userId" placeholder="UserId" required/>
                        <input type="password" name="password" placeholder="Password" required/>
                        <input type="submit" value="LOGIN" class="btn_login" onclick="cambiar_login()"/>
                    </div>
                </form>

                <!-- SIGNUP form -->
                <form method="post" action="signUp">
                    <div class="cont_form_sign_up">
                        <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                        <h2>SIGN UP</h2>
                        <input type="text" name="memberName" placeholder="User Name" required/>
                        <input type="text" name="userId" placeholder="User ID" required/>
                        <input type="text" name="email" placeholder="Email" required/>
                        <input type="password" name="password" placeholder="Password" required/>
                        <%--                        <input type="password" placeholder="Confirm Password"/>--%>
                        <input type="submit" value="SIGN UP" class="btn_sign_up" onclick="cambiar_sign_up()"/>
                    </div>
                </form>
            </div>
    </div>
</div>
</div>
</body>
</html>
