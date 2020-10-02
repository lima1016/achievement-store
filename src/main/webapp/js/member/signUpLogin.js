function idCheckFunc() {
    let nCheckFlag = false;
    if ($('#id').val() == "") {
        document.getElementById("userId_chk").innerHTML = "아이디를 입력하세요.";
        $("#userId_chk").css('color', 'red');
    }
    // 아이디 정규식 검사
    let nRegPass = false;
    if ($('#id').val() != "") {
        var idRegExp = /^[a-zA-z0-9가-힣]{2,15}$/;
        if (!idRegExp.test($('#id').val())) {
            document.getElementById("userId_chk").innerHTML = "아이디 형식이 올바르지 않습니다!(2~15자, 특수문자 불가)";
            $("#userId_chk").css('color', 'red');
        } else {
            nRegPass = true;
        }
    }

    // 아이디 중복체크
    if (nRegPass) {
        let xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    // 0이면 가입 가능, 아니면 중복!
                    if (xhr.responseText == "1") {
                        document.getElementById("userId_chk").innerHTML = "중복된 아이디 입니다.";
                        $("#userId_chk").css('color', 'red');
                    } else {
                        document.getElementById("userId_chk").innerHTML = "가입 가능한 아이디 입니다. ";
                        $("#userId_chk").css('color', 'green');
                        nCheckFlag = true;
                    }
                } else {
                    alert("시스템 오류 발생!");
                }
            }
        }
        // false는 동기식(Ajax 순서대로 진행하도록 동기식으로 )
        xhr.open("GET", "idCheck?id=" + $('#id').val(), false);
        xhr.send();
    }
    return nCheckFlag;
}

function email_check() {
    let eCheckFlag = false;
    if ($('#email').val() == "") { // 빈 값 검사
        document.getElementById("email_chk").innerHTML = "이메일을 입력하세요.";
        $("#email_chk").css('color', 'red');
    }

    let eRegPass = false;
    if ($('#email').val() != "") {
        let emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        if (!emailRegExp.test($('#email').val())) {
            document.getElementById("email_chk").innerHTML = "이메일 형식이 올바르지 않습니다!";
            $("#email_chk").css('color', 'red');
        } else {
            eRegPass = true;
        }
    }

    // 이메일 중복체크
    if (eRegPass) {
        let xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    if (xhr.responseText == "1") { // 0이면 가입 가능, 아니면 중복!
                        document.getElementById("email_chk").innerHTML = "중복된 이메일입니다.";
                        $("#email_chk").css('color', 'red');
                    } else {
                        document.getElementById("email_chk").innerHTML = "가입 가능한 이메일입니다. ";
                        $("#email_chk").css('color', 'green');
                        eCheckFlag= true;
                    }
                } else {
                    alert("시스템 오류 발생!");
                }
            }
        }
        xhr.open("GET", "emailCheck?email=" + $('#email').val(), false);
        xhr.send();
    }
    console.log("여기는 email = " + eCheckFlag);
    return eCheckFlag;
}

function password_check() {
    let pCheckFlag = false;
    if ($('#password').val() == "") {
        document.getElementById("password_chk").innerHTML = "비밀번호를 입력하세요.";
        $("#password_chk").css('color', 'red');
    }

    // 비밀번호 정규식 검사
    if ($('#password').val() != "") {
        let passwordRegExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
        if (!passwordRegExp.test($('#password').val())) {
            document.getElementById("password_chk").innerHTML = "8~15자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
            $("#password_chk").css('color', 'red');
        } else {
            document.getElementById("password_chk").innerHTML = "사용 가능한 비밀번호입니다.";
            $("#password_chk").css('color', 'green');
            pCheckFlag = true;
        }
    }
    return pCheckFlag;
}

function checkAll() {
    let checkCnt = 0;

    if (idCheckFunc()) {
        checkCnt++;
        console.log("idCheckFunc()= " + checkCnt)
    }
    if (password_check()) {
        checkCnt++;
        console.log("password_check()= " + checkCnt)
    }
    if (email_check()) {
        checkCnt++;
        console.log("email_check()= " + checkCnt)
    }
    return checkCnt == 3 ? true : false;
}

