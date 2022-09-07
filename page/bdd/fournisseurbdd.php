<?php
include_once('../../Controller/RecupData.php');
$lesFournisseurs = RecupData::getAllFournisseurs();
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
                Fournisseur
            </h1>
            <hr>
            <form action="../../Controller/Post/bdd/Fournisseurbddadd_post.php" method="post">
                <div class="form-row">
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="nom_societe" placeholder="Nom societe"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="adresse" placeholder="Adresse"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="cp" placeholder="Cp"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="ville" placeholder="Ville"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="groupe" placeholder="Groupe"></div>
                    <input type="submit" class="btn btn-info" value="Enregistrer">
                </div>
            </form>
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nom Societe</th>
                    <th scope="col">Adresse</th>
                    <th scope="col">Cp</th>
                    <th scope="col">Ville</th>
                    <th scope="col">Groupe</th>
                    <th scope="col">Contact</th>
                    <th scope="col">Supprimer</th>
                </tr>
                </thead>
                <?php
                foreach($lesFournisseurs as $unFournisseur)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/Fournisseurbdddel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $unFournisseur->id ?></td>
                            <td><?php echo $unFournisseur->nom_societe ?></td>
                            <td><?php echo $unFournisseur->adresse ?></td>
                            <td><?php echo $unFournisseur->cp ?></td>
                            <td><?php echo $unFournisseur->ville ?></td>
                            <td><?php echo $unFournisseur->groupe ?></td>
                            <td><a href="contactfournisseurbdd.php?id=<?php echo $unFournisseur->id ?>" class="btn btn-warning">Voir</a></td>
                            <input type="text" name="id" value="<?php echo $unFournisseur->id ?>" style="display: none;">
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