function ham_CheckFunc() {
    let myHam = $("#form-myHam").val();
    let betHam = $("#form-goal-ham").val();
    let eRegPass = false;

    if (betHam == "") { // 빈 값 검사
        document.getElementById("ownHam_chk").innerHTML = "최소 0ham 이상을 입력해 주세요.";
        $("#ownHam_chk").css('color', 'red');
    } else {
        eRegPass = true;
    }

    myHam = parseInt(myHam);
    betHam = parseInt(betHam);
    if (eRegPass) {
        if (betHam > myHam) {
            document.getElementById("ownHam_chk").innerHTML = "보유하신 ham 보다 큰 수를 입력 하셨습니다.";
            $("#ownHam_chk").css('color', 'red');
        } else {
            document.getElementById("ownHam_chk").innerHTML = "해당 ham을 겁니다.";
            $("#ownHam_chk").css('color', 'green');
        }
    }
}