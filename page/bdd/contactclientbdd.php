<?php
session_start();

$_SESSION['idClient'] = $_GET['id'];
include_once('../../Controller/RecupData.php');
$lesClients = RecupData::getContactClientById($_GET['id']);
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
            <a href="clientbdd.php"><img src="../../img/retour.png"/></a>
            <h1>
                Contact Client
            </h1>
            <hr>
            <?php if(count($lesClients) < 1) {?>
            <form action="../../Controller/Post/bdd/ContactclientbddAdd_post.php" method="post">
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
                foreach($lesClients as $unClient)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/ContactclientbddDel_post.php" method="post">
                    <tbody>
                        <tr>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactNom(<?php echo $unClient->idClient ?>, '<?php echo $unClient->nom ?>')"><?php echo $unClient->nom ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactPrenom(<?php echo $unClient->idClient ?>, '<?php echo $unClient->prenom ?>')"><?php echo $unClient->prenom ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactGenre(<?php echo $unClient->idClient ?>, '<?php echo $unClient->genre ?>')"><?php echo $unClient->genre ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactTelFixe(<?php echo $unClient->idClient ?>, '<?php echo $unClient->tel_fixe ?>')"><?php echo $unClient->tel_fixe ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactTelPortable(<?php echo $unClient->idClient ?>, '<?php echo $unClient->tel_portable ?>')"><?php echo $unClient->tel_portable ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactEmail(<?php echo $unClient->idClient ?>, '<?php echo $unClient->email ?>')"><?php echo $unClient->email ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdClientContactFonction(<?php echo $unClient->idClient ?>, '<?php echo $unClient->fonction ?>')"><?php echo $unClient->fonction ?></a></td>
                            <input type="text" name="id" value="<?php echo $_SESSION['idClient'] ?>" style="display: none;">
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