
var serverHostName = window.location.hostname;

var serverProtocolName = window.location.protocol;

var portName = window.location.port;

if (portName.length == 0) {
    portName = "80";
}

if (serverHostName === "localhost")
{
    serverPath = serverProtocolName + "//" + serverHostName + ":" + portName;
}
else
{
    serverPath = serverProtocolName + "//" + serverHostName;
}

function serverConnectFunc(serverUrl, jsonData) {
    $.ajax({
        url: serverUrl + "/",
        type: 'POST',
        data: jsonData,

        dataType: 'json',
        async: true,

        success: function (event) {
            switch (event["answer"])
            {
                case "ok":
                    alert("success");
                    break;

                case "notes":
                    var keysList = event["list"].replace("[", ""). replace("]", "").split(",");
                    $("#table_notes").empty();

                    keysList.forEach(function(item, i, arr) {
                        $("#table_notes").append("<tr><td>" + item + "</td></tr>");
                    });

                    break;
            }
        },
        error: function (xhr, status, error) {
            alert(error);
        }
    });
}

function showAllNotes()
{
    var jsonData = new Object();
    jsonData.command = "0";

    serverConnectFunc(serverPath, JSON.stringify(jsonData));
}

function addNote()
{
    var jsonData = new Object();
    jsonData.command = "1";
    jsonData.note = $('#NewNoteInput').val();

    serverConnectFunc(serverPath, JSON.stringify(jsonData));
}
