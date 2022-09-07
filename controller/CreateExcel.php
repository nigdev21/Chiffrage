<?php
session_start();

$arrayArticle = $_SESSION['article'];
$arrayArticleSomme = $_SESSION['articleSomme'];

// OLD

$vide = array();
$case = 2;
$c = 0;

mkdir('../Fiche/'.$_SESSION['numDevis'], 0755);

$list = array (
    array('Objet', 'Prix achat', 'Qte', 'Cout HA total', 'Coef de vente', 'PV'),
);

for ($i = 0; $i < count($arrayArticle); $i++) {
    $c = $case + $i;
    ${"article$i"} = array($arrayArticle[$i][0]->nom, str_replace(".",",",$arrayArticle[$i][0]->prix), $arrayArticle[$i][1], '=B'.$c.'*C'.$c, 0, '=D'.$c.'/(1-E'.$c.'/100)');
    array_push($list, ${"article$i"});
}

$prixFinal = array("Total","","",'=SOMME(D2:D'.$c.')',"", '=SOMME(F2:F'.$c.')');

array_push($list, $prixFinal);

$fp = fopen('../Fiche/'.$_SESSION['numDevis'].'/'.$_SESSION['numDevis'].'.csv', 'w');  
foreach ($list as $data) { 
    fputcsv($fp, $data, ";"); 
}
  
fclose($fp);

$list = array (
    array(1, 2, 3, 4),
);
$info = array ($_SESSION['numDevis'], $_SESSION['client'][0]->nom . ' ' .$_SESSION['client'][0]->prenom, $_SESSION['clients'][0]->nom_societe, $_SESSION['nomProjet']);
array_push($list, $info);

$fp = fopen('../Fiche/'.$_SESSION['numDevis'].'/Info.csv', 'w');  
foreach ($list as $data) { 
    fputcsv($fp, $data, ";"); 
}

fclose($fp);

// END OLD
// $nbP = 0;
// foreach ($arrayArticle as $item) {
//     if($item[5][0]->nom == 'Type de poste'  && $item[0]->nom != "Transport et déchargement")
//         $nbP++;
// }

// foreach ($arrayArticle as $item) {
//     if($item[5][0]->nom == 'Type de poste'  && $item[0]->nom != "Transport et déchargement")  {
//         $case = 2;
//         $c = 0;
//         $list = array (
//             array('Objet', 'Prix achat', 'Qte', 'Cout HA total', 'Coef de vente', 'PV'),
//         );
//         $first = 0;
//         for ($k = 0; $k < count($arrayArticle); $k++) {
//             $first ++;
//             if($first == 1) {
//                 $c = $case + $k;
//                 ${"article$k"} = array($item[0]->nom, str_replace(".",",",$item[0]->prix), $item[1], '=B'.$c.'*C'.$c, 0, '=D'.$c.'/(1-E'.$c.'/100)');
//                 array_push($list, ${"article$k"});
//             }
//             if($arrayArticle[$k][5][0]->nom != "Type de poste" && $arrayArticle[$k][5][0]->nom != "Entreprise") {
//                 $c = $case + $k;
//                 ${"article$k"} = array($arrayArticle[$k][0]->nom, str_replace(".",",",$arrayArticle[$k][0]->prix), $arrayArticle[$k][1], '=B'.$c.'*C'.$c, 0, '=D'.$c.'/(1-E'.$c.'/100)');
//                 array_push($list, ${"article$k"});
//             }
//         }

//         $prixFinal = array("Total","","",'=SOMME(D2:D'.$c.')',"", '=SOMME(F2:F'.$c.')');

//         array_push($list, $prixFinal);

//         $fp = fopen('../Fiche/'.$_SESSION['numDevis'].'/'.$item[0]->nom.'.csv', 'w');
//         foreach ($list as $data) { 
//             fputcsv($fp, $data, ";"); 
//         }
//     }
// }

// fclose($fp);

$list = array (
    array(1, 2, 3, 4),
);
$info = array ($_SESSION['numDevis'], $_SESSION['client'][0]->nom . ' ' .$_SESSION['client'][0]->prenom, $_SESSION['clients'][0]->nom_societe, $_SESSION['nomProjet']);
array_push($list, $info);

$fp = fopen('../Fiche/'.$_SESSION['numDevis'].'/Info.csv', 'w');  
foreach ($list as $data) { 
    fputcsv($fp, $data, ";"); 
}

fclose($fp);

// Redirection

$handle = fopen("../Fiche/LstDevis.csv", "a");

fputcsv($handle, array('','','','',$_SESSION['numDevis'],$_SESSION['client'][0]->nom . ' ' .$_SESSION['client'][0]->prenom,$_SESSION['clients'][0]->nom_societe,'',$_SESSION['nomProjet']), ";");

echo "<script type=\"text/javascript\">
        window.open('CreatePdf.php');
        window.location.replace('../page/bdd/devisbdd.php');
    </script>";