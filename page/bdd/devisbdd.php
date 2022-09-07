<?php
include_once('../../Controller/RecupData.php');
$lesDevis = RecupData::getAllDevis();
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
                Devis
            </h1>
            <hr>
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Ouvrir</th>
                    <th scope="col">Client</th>
                    <th scope="col">Supprimer</th>
                </tr>
                </thead>
                <?php
                foreach($lesDevis as $unDevis)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/DevisbddDel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $unDevis->id ?></td>
                            <td><?php echo $unDevis->nom ?></td>
                            <td><a href="ouvrirdevis.php?nom=<?php echo $unDevis->nom ?>" class="btn btn-success">Ouvrir</a></td>
                            <td><a href="devisclient.php?id=<?php echo $unDevis->id ?>" class="btn btn-warning">Voir</a></td>
                            <input type="text" name="id" value="<?php echo $unDevis->id ?>" style="display: none;">
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