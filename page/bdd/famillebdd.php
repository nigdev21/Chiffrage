<?php
include_once('../../Controller/RecupData.php');
$lesFamilles = RecupData::getAllFamilles();
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
            <a href="modification.php"><img src="../../img/retour.png"/></a>
            <h1>
                Famille
            </h1>
            <hr>
            <form action="../../Controller/Post/bdd/Famillebddadd_post.php" method="post">
                <input type="text" class="form-control" name="nom" placeholder="Nom">
                <input type="submit" class="btn btn-info" value="Enregistrer">
            </form>
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Supprimer</th>
                </tr>
                </thead>
                <?php
                foreach($lesFamilles as $uneFamille)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/Famillebdddel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $uneFamille->id ?></td>
                            <td><?php echo $uneFamille->nom ?></td>
                            <input type="text" name="id" value="<?php echo $uneFamille->id ?>" style="display: none;">
                            <td><input type="submit" class="btn btn-danger" value="Supprimer"></td>
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