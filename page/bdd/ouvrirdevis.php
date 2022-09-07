<?php
error_reporting(0);
$csvFile = file("../../fiche/".$_GET['nom']."/".$_GET['nom'].".csv");
$csvFile2 = file("../../fiche/".$_GET['nom']."/Info.csv");

$keys = str_getcsv(array_shift($csvFile), ';');
$keys2 = str_getcsv(array_shift($csvFile2), ';');

foreach ($csvFile as $csvRecord) {
    $csv[] = array_combine($keys, str_getcsv($csvRecord, ';'));
}
foreach ($csvFile2 as $csvRecord) {
    $csv2[] = array_combine($keys2, str_getcsv($csvRecord, ';'));
}

$CHA = 0;
$PV = 0;
for ($i = 0; $i < count($csv); $i++)
{
    if(!empty($csv[$i]) && $csv[$i]["Objet"] != "Total") 
    {
        $csv[$i]["Cout HA total"] = ($csv[$i]["Prix achat"] * $csv[$i]["Qte"]);
        $var = ($csv[$i]["Cout HA total"] / (1-($csv[$i]["Coef de vente"]/100)));
        $csv[$i]["PV"] = round($var, 2);
        $CHA += $csv[$i]["Cout HA total"];
        $PV += $csv[$i]["PV"];
    }
    if(!empty($csv[$i]) && $csv[$i]["Objet"] == "Total") 
    {
        $csv[$i]["Cout HA total"] = $CHA;
        $csv[$i]["PV"] = $PV;
    }
}
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
            <a href="devisbdd.php"><img src="../../img/retour.png"/></a>
            <h1>
                <?php echo $_GET['nom'] ?>
            </h1>
            <hr>
            <div style="overflow-x:auto;">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Objet</th>
                            <th scope="col">Prix achat</th>
                            <th scope="col">Qte</th>
                            <th scope="col">Cout HA total</th>
                            <th scope="col">Coef de vente</th>
                            <th scope="col">PV</th>
                        </tr>
                    </thead>
                    
                    <form action="../../Controller/Post/bdd/UpdDevisCoef.php" method="post">
                    <input type="text" name="nomDevis" value="<?php echo $_GET['nom'] ?>" style="visibility: hidden;">
                    <?php
                    for ($i = 0; $i < count($csv); $i++)
                    {
                    ?>
                    
                        <tbody>
                            <tr>
                                <?php if(!empty($csv[$i])) { ?>
                                <td><?php if($csv[$i]["Objet"] == "Total") { echo '<p style="color:red;">'. $csv[$i]["Objet"] .'<p>'; } else echo $csv[$i]["Objet"] ?></td>
                                <td><?php echo $csv[$i]["Prix achat"] ?></td>
                                <td><?php echo $csv[$i]["Qte"] ?></td>
                                <td><?php if($csv[$i]["Objet"] == "Total") { echo '<p id="hT" style="color:red;">'. $csv[$i]["Cout HA total"] .' €<p>'; } else echo '<p class="ha">' . $csv[$i]["Cout HA total"] . "</p>" ?></td>
                                <td><?php if($csv[$i]["Objet"] == "Total") { echo '<input type="number" id="coefInput" name="coef" placeholder="Coef" value=' . $csv[$i]["Coef de vente"] . '>'; } else echo '<p class="coefP">' . $csv[$i]["Coef de vente"] . '</p>' ?></td>
                                <td><?php if($csv[$i]["Objet"] == "Total") { echo '<p id="pvT" style="color:red;">'. $csv[$i]["PV"] .' €<p>'; } else echo '<p class="pv">' . $csv[$i]["PV"] . "</p>" ?></td>
                                <?php } ?>
                            </tr>
                        </tbody>
                    
                    <?php
                    }
                    ?>
                    <input type="submit" class="btn btn-info" value="Enregistrer le devis avec le coef">
                    </form>
                </table>
            </div>
        </div>
    </body>
    <div class="footer">
        <script src="../../js/script.js" type="text/javascript"></script>
        <a href="../../index.php" style="float: left;">Accueil</a>
    </div>
</html>