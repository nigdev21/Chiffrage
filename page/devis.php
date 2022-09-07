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
            <a href="client.php"><img src="../img/retour.png"/></a>
            <h1>
                Devis
            </h1>
            <hr>
            <form action="../Controller/Post/Devis_post.php" method="post">
                <input type="text" name="numDevis" class="form-control" placeholder="Numéro du devis" required>
                <input type="submit" class="btn btn-info" value="Choisir un num de Devis">
            </form>
        </div>
    </body>
    <div class="footer">
        <script src="../js/script.js" type="text/javascript"></script>
        <a href="../index.php" style="float: left;">Accueil</a>
    </div>
</html>