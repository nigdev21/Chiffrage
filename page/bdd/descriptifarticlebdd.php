<?php
session_start();

$_SESSION['idArticle'] = $_GET['id'];
include_once('../../Controller/RecupData.php');
$lesArticles = RecupData::getArticleById($_GET['id']);
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
                Descriptif
            </h1>
            <hr>
            <form action="../../Controller/Post/bdd/Descriptifarticlebddadd_post.php" method="post">
                <div class="form-row">
                    <input type="text" name="id" value="<?php echo $_GET['id'] ?>" style="display: none;">
                    <div class="col-md-4 mb-3"><textarea class="form-control" name="descriptif" placeholder="Descriptif"></textarea></div>
                    <input type="submit" class="btn btn-info" value="Enregistrer">
                </div>
            </form>
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Descriptif</th>
                    <th scope="col">Vider</th>
                </tr>
                </thead>
                <?php
                foreach($lesArticles as $unArticle)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/Descriptifarticlebdddel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $unArticle->descriptif ?></td>
                            <input type="text" name="id" value="<?php echo $unArticle->id ?>" style="display: none;">
                            <td><input type="submit" class="btn btn-danger" value="Vider"></td>
                        </tr>
                    </tbody>
                    </form>
                    <?php
                    }
                ?>
            </table>
            </div>
        </div>
    </body>
    <div class="footer">
        <a href="../../index.php" style="float: left;">Accueil</a>
    </div>
</html>