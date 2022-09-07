<?php
session_start();

include_once('../RecupData.php');

$arrayArticle = [];
$arrayArticleNbr = [];

$Prix = 0;

// On met dans arrayArticleNbr le nombre des articles souhaités avec la bonne key
foreach($_POST['ArticleNbr'] as $key => $value)          
    if(!empty($value)) 
        array_push($arrayArticleNbr, $_POST['ArticleNbr'][$key]);

// On select les articles par rapport à l'id
for ($i = 0; $i < count($_POST['Article']); $i++) {
    $article = explode('F', $_POST['Article'][$i]);

    $unArticle = RecupData::getArticleById($article[0]);
    $uneFamille = RecupData::getFamilleById($article[1]);
    $unFournisseur = RecupData::getFournisseurByArticle($unArticle[0]->idFournisseur);
    $caracteristiques = RecupData::getCaracteristiqueByArticle($unArticle[0]->id);
    $normes = RecupData::getNormeByArticle($unArticle[0]->id);
    $accessoires = RecupData::getAccessoireByArticle($unArticle[0]->id);

    array_push($unArticle, $arrayArticleNbr[$i]);
    array_push($unArticle, $unFournisseur);
    array_push($unArticle, $caracteristiques);
    array_push($unArticle, $normes);
    array_push($unArticle, $uneFamille);
    array_push($unArticle, $accessoires);
    array_push($arrayArticle, $unArticle);

    $Prix = $Prix + $unArticle[0]->prix * $arrayArticleNbr[$i];
}

// 2nd Version
// for ($i = 0; $i < count($_POST['Article']); $i++) {
//     $article = explode('F', $_POST['Article'][$i]);

//     $unArticle["Article"] = RecupData::getArticleById($article[0]);
//     $unArticle["Famille"] = RecupData::getFamilleById($article[1]);
//     $unArticle["Fournisseur"] = RecupData::getFournisseurByArticle($unArticle["Article"][0]->idFournisseur);
//     $unArticle["Caracteristique"] = RecupData::getCaracteristiqueByArticle($unArticle["Article"][0]->id);
//     $unArticle["Norme"] = RecupData::getNormeByArticle($unArticle["Article"][0]->id);
//     $unArticle["Accessoire"] = RecupData::getAccessoireByArticle($unArticle["Article"][0]->id);


//     array_push($arrayArticle, $unArticle);

//     $Prix = $Prix + $unArticle["Article"][0]->prix * $arrayArticleNbr[$i];
// }

$arrayArticleSomme = $Prix;

$_SESSION['article'] = $arrayArticle;
$_SESSION['articleSomme'] = $arrayArticleSomme;
$_SESSION['nomProjet'] = $_POST['nomProjet'];

// echo '<pre>';
// print_r($arrayArticle);
// echo '</pre>';

header('location:../CreateExcel.php');