// Devuelve la lista de todos los jugadores
var getPlayerList = function () {
        playerList = [{
            name: "juan-rodriguez",
            nicename: "Juan Rodriguez",
            url: "/team/players/juan-rodriguez/"
        }, {
            name: "juan-rodrguez",
            nicename: "Juan Rodriguez",
            url: "/team/players/juan-rodriguez/"
        }, {
            name: "pedro-salgado",
            nicename: "Pedro Salgado",
            url: "/team/players/pedro-salgado/"
        }, {
            name: "andres-hernandez",
            nicename: "Andrés Hernández",
            url: "/team/players/andres-hernandez/"
        }, {
            name: "manuel-estevez",
            nicename: "Manuel Estévez",
            url: "/team/players/manuel-estevez/"
        }, {
            name: "jorge-rico",
            nicename: "Jorge Rico",
            url: "/team/players/jorge-rico/"
        }];
        return playerList;
    },

    // Devuelve los jugadores etiquetados en el comentario
    getTaggedPlayers = function () {
        let words = document.getElementById("myMessage").value.replace(/\s/g, " ").split(" "),
            tagged = new Array();

        let name = document.getElementById("form-loginUserNo").value.replace(/\s/g, " ").split(" "),
            taggedName = new Array();
        for (let w = 0; w < words.length; w++) {
            if (words[w].search(/\@/) > -1) {
                taggedName.push(name[w].replace(/[^\w-]+/g, ''));
                tagged.push(words[w].replace(/[^\w-]+/g, ''));
            }
        }
        ;
        return tagged;
    },
    // Trae la info de los jugadores etiquetados
    searchTaggedPlayers = function () {
        var taggedPlayers = getTaggedPlayers();
        if (taggedPlayers.length < 1)
            return;
        var playerList = getPlayerList();
        for (var p = 0; p < playerList.length; p++) {
            for (prop in playerList[p]) {
                if (taggedPlayers.indexOf(playerList[p][prop]) > -1) {
                    postComment(playerList[p]);
                    continue;
                }
            }
            ;
        }
        ;
    },
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