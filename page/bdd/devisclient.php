<?php
session_start();

$_SESSION['idDevis'] = $_GET['id'];
include_once('../../Controller/RecupData.php');
$lesClientDev = RecupData::getClientByDevis($_GET['id']);
$lesClients = RecupData::getAllClients();
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
            <a href="clientbdd.php"><img src="../../img/retour.png"/></a>
            <h1>
                Devis Client
            </h1>
            <hr>
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
                foreach($lesClientDev as $unClient)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/DevisClientDel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><?php echo $unClient->id ?></td>
                            <td><?php echo $unClient->nom_societe ?></td>
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
            <form action="../../Controller/Post/bdd/DevisClientAdd_post.php" method="post">
                <select class="form-control" name="client">
                    <option selected>Choisir un client...</option>
                    <?php foreach($lesClients as $unClient) { ?>
                        <option value="<?php echo $unClient->id ?>"><?php echo $unClient->nom_societe ?></option>
                    <?php } ?>
                </select>
                <input type="submit" class="btn btn-info" value="Ajouter">
            </form>
        </div>
    </body>
    <div class="footer">
        <a href="../../index.php" style="float: left;">Accueil</a>
    </div>
</html>