<?php
session_start();

include_once('../RecupData.php');

$_SESSION['famille'] = $_POST['Famille'];

$arrayFamille = [];

for ($i = 0; $i < count($_POST['Famille']); $i++) {
    $uneFamille = RecupData::getFamilleById($_POST['Famille'][$i]);
    array_push($arrayFamille, $uneFamille);
}

$_SESSION['famille'] = $arrayFamille;

header('location:../../page/article.php');