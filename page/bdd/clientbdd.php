<?php
include_once('../../Controller/RecupData.php');
$lesClients = RecupData::getAllClients();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <title>Chiffrage</title>
    </head>
    <body>
        <div class="jumbotron">
            <a href="modification.php"><img src="../../img/retour.png"/></a>
            <h1>
                Client
            </h1>
            <hr>
            <form action="../../Controller/Post/bdd/Clientbddadd_post.php" method="post">
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
                foreach($lesClients as $unClient)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/Clientbdddel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $unClient->id ?></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientNomS(<?php echo $unClient->id ?>, '<?php echo $unClient->nom_societe ?>')"><?php echo $unClient->nom_societe ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientAdresse(<?php echo $unClient->id ?>, '<?php echo $unClient->adresse ?>')"><?php echo $unClient->adresse ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientCp(<?php echo $unClient->id ?>, '<?php echo $unClient->cp ?>')"><?php echo $unClient->cp ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientVille(<?php echo $unClient->id ?>, '<?php echo $unClient->ville ?>')"><?php echo $unClient->ville ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientGroupe(<?php echo $unClient->id ?>, '<?php echo $unClient->groupe ?>')"><?php echo $unClient->groupe ?></a></td>
                            <td><a href="contactclientbdd.php?id=<?php echo $unClient->id ?>" class="btn btn-warning">Voir</a></td>
                            <input type="text" name="id" value="<?php echo $unClient->id ?>" style="display: none;">
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
        <script src="../../js/script.js" type="text/javascript"></script>
        <a href="../../index.php" style="float: left;">Accueil</a>
    </div>
</html>