<?php
session_start();

include_once('../PostData.php');

include_once('../RecupData.php');

$nomDevis = RecupData::getDevisByNom($_POST['numDevis']);
if(empty($nomDevis[0])) {
    PostData::AddDevis($_POST['numDevis']);
    $idDevis = RecupData::getLastDevis();
    PostData::AddDevisClient($_SESSION['client'][0]->idClient, $idDevis[0]->last);
    $_SESSION['numDevis'] = $_POST['numDevis'];
    header('location:../../page/famille.php');
}
else 
    header('location:../../page/devis.php');