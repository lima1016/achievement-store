function cambiar_login() {
    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";
    document.querySelector('.cont_form_login').style.display = "block";
    document.querySelector('.cont_form_sign_up').style.opacity = "0";

    setTimeout(function () {
        document.querySelector('.cont_form_login').style.opacity = "1";
    }, 400);

    setTimeout(function () {
        document.querySelector('.cont_form_sign_up').style.display = "none";
    }, 200);
}

function cambiar_sign_up(at) {
    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
    document.querySelector('.cont_form_sign_up').style.display = "block";
    document.querySelector('.cont_form_login').style.opacity = "0";

    setTimeout(function () {
        document.querySelector('.cont_form_sign_up').style.opacity = "1";
    }, 100);

    setTimeout(function () {
        document.querySelector('.cont_form_login').style.display = "none";
    }, 400);


}

function ocultar_login_sign_up() {

    document.querySelector('.cont_forms').className = "cont_forms";
    document.querySelector('.cont_form_sign_up').style.opacity = "0";
    document.querySelector('.cont_form_login').style.opacity = "0";

    setTimeout(function () {
        document.querySelector('.cont_form_sign_up').style.display = "none";
        document.querySelector('.cont_form_login').style.display = "none";
    }, 500);

}
function idCheckFunc() {
    const xhr = new XMLHttpRequest();
    const eCheckFlag = false;
    var eRegPass = false;
    if ($('#userId').val() == "") { // 빈 값 검사
        document.getElementById("userId_chk").innerHTML = "유저 아이디를 입력하세요.";
        $("#userId_chk").css('color', 'red');
    }

    if ($('#userId').val() != "") {
        var userIdRegExp = /^[a-zA-z0-9가-힣]{4,12}$/;
        if (!userIdRegExp.test($('#userId').val())) {
            document.getElementById("userId_chk").innerHTML = "4~12자의 아이디만 생성 가능합니다.";
            $("#userId_chk").css('color', 'red');
        } else {
            eRegPass = true;
        }
    }

    // 이메일 중복체크
    if(eRegPass) {
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    if (xhr.responseText == "1") { // 0이면 가입 가능, 아니면 중복!
                        document.getElementById("userId_chk").innerHTML = "중복된 아이디 입니다.";
                        $("#userId_chk").css('color', 'red');
                    } else {
                        document.getElementById("userId_chk").innerHTML = "가입 가능한 아이디 입니다. ";
                        $("#userId_chk").css('color', 'green');
                    }
                } else {
                    alert("시스템 오류 발생!");
                }
            }
        };
        xhr.open("GET", "idCheck?userId=" + $('#userId').val());
        // Controller에서 객체 반환시 json으로 반환이 안됨
        // json 라이브러리 다운함;
        xhr.send();
    }
}

