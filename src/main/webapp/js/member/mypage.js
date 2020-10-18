nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1",
    //SmartEditor2Skin.html 파일이 존재하는 경로
    sSkinURI: "../js/smarteditor2/SmartEditor2Skin.html",
    htParams: {
        // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
        bUseToolbar: true,
        // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
        bUseVerticalResizer: true,
        // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
        bUseModeChanger: true,
        fOnBeforeUnload: function () {

        }
    },
    fOnAppLoad: function () {
        //textarea 내용을 에디터상에 바로 뿌려주고자 할때 사용
        oEditors.getById["ir1"].exec("PASTE_HTML", ["ㅎㅇ 시작하자마자 이문구 작성됨."]);
    },
    fCreator: "createSEditor2"
});      