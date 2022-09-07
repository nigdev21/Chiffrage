<?php
include_once('../../PostData.php');
PostData::AddCaracteristiqueArticle($_POST['id'], $_POST['nom'], $_POST['description']);
header('location:../../../page/bdd/caracteristiquebdd.php?id='.$_POST['id']);