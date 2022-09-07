<?php
session_start();

include_once('../RecupData.php');

$_SESSION['clients'] = RecupData::getClientById($_POST['Client']);
$_SESSION['client'] = RecupData::getContactClientById($_POST['Client']);

header('location:../../page/devis.php');