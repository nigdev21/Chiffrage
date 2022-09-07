<?php
include_once('../../Controller/RecupData.php');
$lesArticles = RecupData::getAllArticles();
$lesFournisseurs = RecupData::getAllFournisseurs();
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
                Article
            </h1>
            <hr>
            <form action="../../Controller/Post/bdd/Articlebddadd_post.php" method="post">
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <select name="idFournisseur"class="form-control" >
                            <?php foreach($lesFournisseurs as $unFournisseur) { ?>
                                <option selected value="<?php echo $unFournisseur->id ?>"><?php echo $unFournisseur->nom_societe ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="nom" placeholder="Nom"></div>
                    <div class="col-md-4 mb-3"><textarea class="form-control" name="description" placeholder="Description"></textarea></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="img" placeholder="Image"></div>
                    <div class="col-md-4 mb-3"><input type="text" class="form-control" name="prix" placeholder="Prix"></div>
                    <input type="submit" class="btn btn-info" value="Enregistrer">
                </div>
            </form>
            <input class="form-control" id="searchInput" type="text" placeholder="Rechercher...">
            <div style="overflow-x:auto;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Description</th>
                    <th scope="col">Image</th>
                    <th scope="col">Prix</th>
                    <th scope="col">Famille</th>
                    <th scope="col">Caracteristique</th>
                    <th scope="col">Norme</th>
                    <th scope="col">Accessoire</th>
                    <th scope="col">Supprimer</th>
                </tr>
                </thead>
                <tbody id="tableBody">
                <?php
                foreach($lesArticles as $unArticle)
                {
                    ?>
                    <form action="../../Controller/Post/bdd/Articlebdddel_post.php" method="post">
                        <tr>
                            <td><?php echo $unArticle->id ?></td>
                            <td><a style="cursor: pointer;" onclick="UpdArticleNom(<?php echo $unArticle->id ?>, '<?php echo $unArticle->nom ?>')"><?php echo $unArticle->nom ?></a></td>
                            <td><a style="cursor: pointer;" onclick="UpdArticleDescription(<?php echo $unArticle->id ?>)"><?php echo substr($unArticle->description, 0, 50) ?>...</a></td>
                            <td><input type="button" class="btn btn-dark" value="<?php echo $unArticle->img ?>" onclick="UpdArticleImg(<?php echo $unArticle->id ?>, '<?php echo $unArticle->img ?>')"></td>
                            <td><input type="button" class="btn btn-dark" value="<?php echo number_format($unArticle->prix, 2, '.', ' ') . ' €'; ?>" onclick="UpdArticlePrix(<?php echo $unArticle->id ?>, <?php echo $unArticle->prix ?>)"></td>
                            <td><a href="famillearticle.php?id=<?php echo $unArticle->id ?>" class="btn btn-secondary">Voir</a></td>
                            <td><a href="caracteristiquebdd.php?id=<?php echo $unArticle->id ?>" class="btn btn-success">Voir</a></td>
                            <td><a href="normebdd.php?id=<?php echo $unArticle->id ?>" class="btn btn-warning">Voir</a></td>
                            <td><a href="accessoirebdd.php?id=<?php echo $unArticle->id ?>" class="btn btn-primary">Voir</a></td>
                            <input type="text" name="id" value="<?php echo $unArticle->id ?>" style="display: none;">
                            <td><input type="submit" class="btn btn-danger" value="Supprimer"></td>
                        </tr>
                    </form>
                    <?php
                    }
                ?>
                </tbody>
            </table>
            </div>
        </div>
    </body>
    <div class="footer">
        <script src="../../js/script.js" type="text/javascript"></script>
        <a href="../../index.php" style="float: left;">Accueil</a>
    </div>
    <script>
$(document).ready(function(){
  $("#searchInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tableBody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</html>
