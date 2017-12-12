<!DOCTYPE html>
<html>
<head>
    <title>SimpleServ</title>

    <meta charset="utf-8">
    <meta note="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
          rel="stylesheet" type="text/css">
    <link href="https://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
          rel="stylesheet" type="text/css">

    <link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/main.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script src="js/script.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>

<body>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a class="btn btn-primary" onclick="showAllNotes()">Show all notes</a>

                <div class="border">
                    <div>
                        <a class="btn btn-primary" onclick="addNote()">Add note</a>

                        <div class="modal-body" style="text-align: center;">
                            <input class="form-control" id="NewNoteInput"
                                   placeholder="Enter some note">
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <table class="table">
                    <tbody id="table_notes">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>

</html>