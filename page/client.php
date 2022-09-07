<?php
include_once('../Controller/RecupData.php');
$lesClients = RecupData::getAllClients();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
        <title>Chiffrage</title>
    </head>
    <body>
        <div class="jumbotron">
            <a href="../index.php"><img src="../img/retour.png"/></a>
            <h1>
                Client
            </h1>
            <hr>
            <form action="../Controller/Post/Client_post.php" method="post">
                <select name="Client" class="form-control" id="SelectItem" onchange="Check()">
                    <option value="null" selected>Choisir un client...</option>
                    <?php foreach($lesClients as $unClient) { ?>
                        <option value="<?php echo $unClient->id ?>"><?php echo $unClient->nom_societe ?></option>
                    <?php } ?>
                </select>
                <input type="submit" class="btn btn-info" value="Suivant" id="sub" style="display: none;">
            </form>
        </div>
    </body>
    <div class="footer">
        <script src="../js/script.js" type="text/javascript"></script>
        <a href="../index.php" style="float: left;">Accueil</a>
    </div>
</html>