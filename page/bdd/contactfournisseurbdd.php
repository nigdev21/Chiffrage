<?php
session_start();

$_SESSION['idFournisseur'] = $_GET['id'];
include_once('../../Controller/RecupData.php');
$lesFournisseurs = RecupData::getContactFournisseurById($_GET['id']);
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
            <a href="fournisseurbdd.php"><img src="../../img/retour.png"/></a>
            <h1>
                Contact Fournisseur
            </h1>
            <hr>
            <?php if(count($lesFournisseurs) < 1) {?>
            <form action="../../Controller/Post/bdd/ContactfournisseurbddAdd_post.php" method="post">
                <div class="form-row">
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="nom" placeholder="Nom"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="prenom" placeholder="Prenom"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="genre" placeholder="Genre"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="tel_fixe" placeholder="Tel Fixe"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="tel_portable" placeholder="Tel Portable"></div>
                    <div class="col-md-4 mb-3"><input type="tel" class="form-control" name="email" placeholder="Email"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="fonction" placeholder="Fonction"></div>
                    <input type="submit" class="btn btn-info" value="Enregistrer">
                </div>
            </form>
            <?php } ?>
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Nom</th>
                    <th scope="col">Prénom</th>
                    <th scope="col">Genre</th>
                    <th scope="col">Tel Fixe</th>
                    <th scope="col">Tel Portable</th>
                    <th scope="col">Email</th>
                    <th scope="col">Fonction</th>
                    <th scope="col">Supprimer</th>
                </tr>
                </thead>
                <?php
                foreach($lesFournisseurs as $unFournisseur)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/ContactfournisseurbddDel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $unFournisseur->nom ?></td>
                            <td><?php echo $unFournisseur->prenom ?></td>
                            <td><?php echo $unFournisseur->genre ?></td>
                            <td><?php echo $unFournisseur->tel_fixe ?></td>
                            <td><?php echo $unFournisseur->tel_portable ?></td>
                            <td><?php echo $unFournisseur->email ?></td>
                            <td><?php echo $unFournisseur->fonction ?></td>
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