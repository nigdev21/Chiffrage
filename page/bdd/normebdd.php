<?php
session_start();

$_SESSION['idArticle'] = $_GET['id'];
include_once('../../Controller/RecupData.php');
$lesNormes = RecupData::getNormeById($_GET['id']);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/style.css">
        <title>Chiffrage</title>
    </head>
    <body>
        <div class="jumbotron">
            <a href="articlebdd.php"><img src="../../img/retour.png"/></a>
            <h1>
                Norme
            </h1>
            <hr>
            <form action="../../Controller/Post/bdd/Normebddadd_post.php" method="post">
                <div class="form-row">
                    <input type="text" name="id" value="<?php echo $_GET['id'] ?>" style="display: none;">
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="nom" placeholder="Nom"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="description" placeholder="Description"></div>
                    <input type="submit" class="btn btn-info" value="Enregistrer">
                </div>
            </form>
            <form action="../../Controller/Post/bdd/Normebddaddtextarea_post.php" method="post">
                <div class="form-row">
                    <input type="text" name="id" value="<?php echo $_GET['id'] ?>" style="display: none;">
                    <textarea name="norme" class="form-control" placeholder="Normes" cols="30" rows="5"></textarea>
                    <input type="submit" class="btn btn-info" value="Enregistrer les normes">
                </div>
            </form>
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Nom</th>
                    <th scope="col">Description</th>
                    <th scope="col">Supprimer</th>
                </tr>
                </thead>
                <?php
                foreach($lesNormes as $uneNorme)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/Normebdddel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $uneNorme->nom ?></td>
                            <td><?php echo $uneNorme->description ?></td>
                            <input type="text" name="id" value="<?php echo $uneNorme->idArticle ?>" style="display: none;">
                            <input type="text" name="nom" value="<?php echo $uneNorme->nom ?>" style="display: none;">
                            <input type="text" name="description" value="<?php echo $uneNorme->description ?>" style="display: none;">
                            <td><input type="submit" class="btn btn-danger" value="Supprimer"></td>
                        </tr>
                    </tbody>
                    </form>
                    <?php
                    }
                ?>
            </table>
            <form action="../../Controller/Post/bdd/Normebdddelall_post.php" method="post">
                <input type="text" name="id" value="<?php echo $uneNorme->idArticle ?>" style="display: none;">
                <input type="submit" class="btn btn-danger" style="width: 100%;" value="Tout Supprimer">
            </form>
            </div>
        </div>
    </body>
    <div class="footer">
        <a href="../../index.php" style="float: left;">Accueil</a>
    </div>
</html>