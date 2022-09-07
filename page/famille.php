<?php
include_once('../Controller/RecupData.php');
$lesFamilles = RecupData::getAllFamilles();
?>
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
            <a href="devis.php"><img src="../img/retour.png"/></a>
            <h1>
                Familles
            </h1>
            <hr>
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" onClick="toggle(this)" id="checkAll"/>
                <label class="custom-control-label" for="checkAll" style="color: grey;">Tout Sélectionner</label>
            </div>
            <form action="../Controller/Post/Famille_post.php" method="post">
                <?php
                foreach($lesFamilles as $item)
                {
                    ?>
                    <script>
                    if(!document.getElementById("F<?php echo $item->id ?>"))
                        document.write('<div class="custom-control custom-checkbox"><input type="checkbox" onclick="Check()" name="Famille[]" value="<?php echo $item->id ?>" class="custom-control-input" id="F<?php echo $item->id ?>"><label class="custom-control-label" for="F<?php echo $item->id ?>"><?php echo $item->nom ?></label> </div>')
                    </script>
                    <?php
                }
                ?>
                <input type="submit" class="btn btn-info" value="Suivant">
            </form>
        </div>
    </body>
    <div class="footer">
        <script src="../js/script.js" type="text/javascript"></script>
        <a href="../index.php" style="float: left;">Accueil</a>
    </div>
</html>