 pasteComment = function () {
     let msgBox = document.getElementById("myMessage"),
            nameBox = document.getElementById("form-loginUserName"),
            htmlBox = document.getElementById("comments");
        if (htmlBox.querySelectorAll(".dummy").length > 0)
            htmlBox.innerHTML = "";
        htmlBox.innerHTML = htmlBox.innerHTML + '<p>' + escapeHTML(nameBox.value) + ": " + escapeHTML(msgBox.value) + '</p>';
    },
    escapeHTML = function (input) {
        return input
            .replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
            .replace(/'/g, "&#039;");
    },
    clearMessage = function () {
        document.getElementById("myMessage").value = "";
    },
    initEvents = function () {
        let sendBttn = document.getElementById("send");
        sendBttn.addEventListener("click", function () {
            pasteComment();
            clearMessage();
        });
    };
document.addEventListener("DOMContentLoaded", initEvents);
