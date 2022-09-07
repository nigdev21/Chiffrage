<?php
$csvFile = file("../../../Fiche/". $_POST['nomDevis'] ."/". $_POST['nomDevis'] .".csv");
$keys = str_getcsv(array_shift($csvFile), ';');
$case = 2;

foreach ($csvFile as $csvRecord) {
    $csv[] = array_combine($keys, str_getcsv($csvRecord, ';'));
}

for ($i=0; $i < count($csv); $i++) {
    if(!empty($csv[$i]))
    {
        $c = $case + $i;
        $csv[$i]['Coef de vente'] = $_POST['coef'];
    }
}

unlink('../../../fiche/'. $_POST['nomDevis'] .'/'. $_POST['nomDevis'] .'.csv');

$vide = array();
$list = array (
    array('Objet', 'Prix achat', 'Qte', 'Cout HA total', 'Coef de vente', 'PV'),
);

foreach ($csv as $item) {
    if($item['Objet'] != "Total" && !empty($item))
    {
        $article = array($item['Objet'], $item['Prix achat'], $item['Qte'], $item['Cout HA total'], $item['Coef de vente'], $item['PV']);
        array_push($list, $article);
    }
    if($item['Objet'] == "Total")
    {
        $prixFinal = array("Total","","",$item['Cout HA total'],"", $item['PV']);
        array_push($list, $prixFinal);
    }
}

$fp = fopen('../../../Fiche/'. $_POST['nomDevis'] .'/'. $_POST['nomDevis'] .'.csv', 'w');  
foreach ($list as $data) { 
    fputcsv($fp, $data, ";"); 
}
fclose($fp);

header('location:../../../page/bdd/devisbdd.php');