// Inserta un link al jugador etiquetado en el HTML
    postComment = function (player) {
        var myDiv = document.getElementById("comments"),
            anchor = '<a href="' + player.url + '" class="player-tag">' + player.nicename + '</a>',
            newHtml = myDiv.innerHTML.replace("@" + player.name, anchor);
        myDiv.innerHTML = newHtml;
    },
    // Copia el mensaje del textarea al div
    pasteComment = function () {
        var msgBox = document.getElementById("myMessage"),
            nameBox = document.getElementById("form-loginUserNo"),
            htmlBox = document.getElementById("comments");
        if (htmlBox.querySelectorAll(".dummy").length > 0)
            htmlBox.innerHTML = "";
        htmlBox.innerHTML = htmlBox.innerHTML + '<div class="comment"><p>' + escapeHTML(nameBox.value) + ": " + escapeHTML(msgBox.value) + '</p></div>';
    },
    // Sanea el contenido del comentario
    escapeHTML = function (input) {
        return input
            .replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
            .replace(/'/g, "&#039;");
    },
    // Vacía el contenido del comentario
    clearMessage = function () {
        document.getElementById("myMessage").value = '';
    },
    // Agrega los listeners a los eventos
    initEvents = function () {
        var sendBttn = document.getElementById("send");
        sendBttn.addEventListener("click", function () {
            pasteComment();
            searchTaggedPlayers();
            clearMessage();
        });
    };
// Inicializa la app llamando a initEvents
document.addEventListener("DOMContentLoaded", initEvents);