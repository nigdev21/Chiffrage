<?php
session_start();
include_once('../Controller/RecupData.php');
$lesArticles = [];
for ($i = 0; $i < count($_SESSION['famille']); $i++) {
    $req = RecupData::getArticlesByFamille($_SESSION['famille'][$i][0]->id);
    $req['FamilleID'] = $_SESSION['famille'][$i][0]->id;
    $req['Famille'] = $_SESSION['famille'][$i][0]->nom;
    array_push($lesArticles, $req);
}
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
            <a href="famille.php"><img src="../img/retour.png"/></a>
            <h1>
                Articles
            </h1>
            <hr>
            <form action="../Controller/Post/Article_post.php" method="post">
                <input type="text" name="nomProjet" class="form-control" placeholder="Nom Projet">
                <?php
                // ENTREPRISE
                foreach($lesArticles as $unArticle)
                {
                    if($unArticle['Famille'] == "Entreprise")
                    {
                        echo '<div class="alert alert-danger" role="alert"><h5>Les articles pour la famille ' . $unArticle['Famille'] . '</h5>';
                        foreach($unArticle as $item)
                        {
                        ?>
                        <script>
                        if(!document.getElementById("A<?php echo $item->id ?>"))
                            document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" onkeydown="return false" disabled></div>')
                        </script>
                        <?php
                        }
                        echo '</div>';
                    }
                }
                // CELLULE
                foreach($lesArticles as $unArticle)
                {
                    if($unArticle['Famille'] == "Cellule HTA consommateur RM6" || $unArticle['Famille'] == "Cellule HTA consommateur SM6" || $unArticle['Famille'] == "Cellule HTA poste producteur"|| $unArticle['Famille'] == "Cellule HTA poste producteur" || $unArticle['Famille'] == "Cellule HTA SIEMENS" || $unArticle['Famille'] == "Cellule SIEMENS C13200")
                    {
                        echo '<div class="alert alert-warning" role="alert"><h5>Les articles pour la famille ' . $unArticle['Famille'] . '</h5>';
                        foreach($unArticle as $item)
                        {
                        ?>
                        <script>
                        if(!document.getElementById("A<?php echo $item->id ?>"))
                            document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" onkeydown="return false" disabled></div>')
                        </script>
                        <?php
                        }
                        echo '</div>';
                    }
                }
                // TRANSFORMATEUR
                foreach($lesArticles as $unArticle)
                {
                    if($unArticle['Famille'] == "Transformateur de puissance" || $unArticle['Famille'] == "Transformateur abaisseur Schneider electric" || $unArticle['Famille'] == "Transformateur à commission" || $unArticle['Famille'] == "Transformateur abaisseur mobilite electrique Eletrafo" || $unArticle['Famille'] == "Transformateur abaisseur distribution Eletrafo" || $unArticle['Famille'] == "Transformateur abaisseur sec IP00 mobilité électrique Eletrafo" || $unArticle['Famille'] == "Transformateur abaisseur sec IP00 distribution Eletrafo" || $unArticle['Famille'] == "Transformateur abaisseur sec IP00 Schneider electric")
                    {
                        echo '<div class="alert alert-success" role="alert"><h5>Les articles pour la famille ' . $unArticle['Famille'] . '</h5>';
                        foreach($unArticle as $item)
                        {
                        ?>
                        <script>
                        if(!document.getElementById("A<?php echo $item->id ?>"))
                            document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" onkeydown="return false" disabled></div>')
                        </script>
                        <?php
                        }
                        echo '</div>';
                    }
                }
                foreach($lesArticles as $unArticle)
                {
                    if($unArticle['Famille'] == "Liaison câble HTA" || $unArticle['Famille'] == "Liaison câble BT")
                    {
                        echo '<div class="alert alert-info" role="alert"><h5>Les articles pour la famille ' . $unArticle['Famille'] . ' | Quantité = metre</h5>';
                        foreach($unArticle as $item)
                        {
                        ?>
                        <script>
                        if(!document.getElementById("A<?php echo $item->id ?>"))
                            document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" disabled></div>')
                        </script>
                        <?php
                        }
                        echo '</div>';
                    }
                    if($unArticle['Famille'] == "Main d oeuvre")
                    {
                        echo '<div class="alert alert-info" role="alert"><h5>Les articles pour la famille ' . $unArticle['Famille'] . ' | Quantité = heure</h5>';
                        foreach($unArticle as $item)
                        {
                        ?>
                        <script>
                        if(!document.getElementById("A<?php echo $item->id ?>"))
                            document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" disabled></div>')
                        </script>
                        <?php
                        }
                        echo '</div>';
                    }
                    if($unArticle['Famille'] != "Entreprise" && $unArticle['Famille'] != "Liaison câble HTA" && $unArticle['Famille'] != "Liaison câble BT" && $unArticle['Famille'] != "Main d oeuvre" && $unArticle['Famille'] != "Cellule HTA consommateur RM6" && $unArticle['Famille'] != "Cellule HTA consommateur SM6" && $unArticle['Famille'] != "Cellule HTA poste producteur"&& $unArticle['Famille'] != "Cellule HTA poste producteur" && $unArticle['Famille'] != "Cellule HTA SIEMENS" && $unArticle['Famille'] != "Cellule SIEMENS C13200" && $unArticle['Famille'] != "Transformateur de puissance" && $unArticle['Famille'] != "Transformateur abaisseur Schneider electric" && $unArticle['Famille'] != "Transformateur à commission" && $unArticle['Famille'] != "Transformateur abaisseur mobilite electrique Eletrafo" && $unArticle['Famille'] != "Transformateur abaisseur distribution Eletrafo" && $unArticle['Famille'] != "Transformateur abaisseur sec IP00 mobilité électrique Eletrafo" && $unArticle['Famille'] != "Transformateur abaisseur sec IP00 distribution Eletrafo" && $unArticle['Famille'] != "Transformateur abaisseur sec IP00 Schneider electric")
                    {
                        echo '<div class="alert alert-info" role="alert"><h5>Les articles pour la famille ' . $unArticle['Famille'] . '</h5>';
                        foreach($unArticle as $item)
                        {
                        ?>
                        <script>
                        if(!document.getElementById("A<?php echo $item->id ?>")) {
                            if("<?php echo $item->nom ?>" == "Détection Défauts Homopolaire HTA" || "<?php echo $item->nom ?>" == "Fourniture et pose d’un éclairage par Fluos (2 x 36W)"|| "<?php echo $item->nom ?>" == "Fourniture et pose d’un contact de porte de porte avec report d’information sur la supervision" || "<?php echo $item->nom ?>" == "Fourniture et pose d’un ensemble interrupteur / prise 2 pôles + terre sur goulotte(s)" || "<?php echo $item->nom ?>" == "Fourniture et pose d’un éclairage de secours fixe sur mur (BAES)")
                                document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" checked onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" value="1"></div>')
                            else
                                document.write('<div class="custom-control custom-checkbox mr-sm-2"><input type="checkbox" onclick="Check()" name="Article[]" value="<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" class="custom-control-input" id="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><label class="custom-control-label" for="A<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>"><?php echo $item->nom ?></label><input type="number" id="N<?php echo $item->id ?>F<?php echo $unArticle['FamilleID'] ?>" name="ArticleNbr[]" class="number" min="1" disabled></div>')
                        }
                            
                        </script>
                        <?php
                        }
                        echo '</div>';
                    }
                }
                ?>
                <input type="submit" class="btn btn-info" value="Valider" id="sub" style="display: none;">
            </form>
        </div>
    </body>
    <div class="footer">
        <script src="../js/script.js" type="text/javascript"></script>
        <a href="../index.php" style="float: left;">Accueil</a>
        <a href="../Controller/Logout.php">Déconnexion</a>
    </div>
</html>