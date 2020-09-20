

function idCheckFunc() {
    // 유저 아이디 빈 값 검사
    if ($('#userId').val() == "") {
        document.getElementById("userId_chk").innerHTML = "유저 아이디를 입력하세요.";
        $("#userId_chk").css('color', 'red');
    }

    let uRegPass = false;
    // 유저아이디 정규식 검사
    if ($('#userId').val() != "") {
        const userIdRegExp = /^[a-zA-z0-9가-힣]{4,12}$/;
        if (!userIdRegExp.test($('#userId').val())) {
            document.getElementById("userId_chk").innerHTML = "4~12자의 아이디만 생성 가능합니다.";
            $("#userId_chk").css('color', 'red');
        } else {
            uRegPass = true;
        }
    }
    let uCheckFlag = false;
    // 유저아이디 중복체크
    if (uRegPass) {
        let xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    if (xhr.responseText == "1") { // 0이면 가입 가능, 아니면 중복!
                        document.getElementById("userId_chk").innerHTML = "중복된 아이디 입니다.";
                        $("#userId_chk").css('color', 'red');
                    } else {
                        document.getElementById("userId_chk").innerHTML = "가입 가능한 아이디 입니다. ";
                        $("#userId_chk").css('color', 'green');
                        uCheckFlag = true;
                    }
                } else {
                    alert("시스템 오류 발생!");
                }
            }
            console.log("여기까지는 true가 나올꺼임= " + uCheckFlag)
        }
        console.log("문제의 여기임 = " + uCheckFlag);

        xhr.open("GET", "idCheck?userId=" + $('#userId').val());
        // Controller에서 객체 반환시 json으로 반환이 안됨
        // json 라이브러리 다운함;
        xhr.send();
    }
    console.log("여기는 userId = " + uCheckFlag);
    return uCheckFlag;
}

function email_check() {
    let eCheckFlag = false;
    if ($('#email').val() == "") { // 빈 값 검사
        document.getElementById("email_chk").innerHTML = "이메일을 입력하세요.";
        $("#email_chk").css('color', 'red');
    }

    let eRegPass = false;
    if ($('#email').val() != "") {
        var emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
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
        xhr.open("GET", "emailCheck?email=" + $('#email').val());
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
        var passwordRegExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
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
    var checkCnt = 0;

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

