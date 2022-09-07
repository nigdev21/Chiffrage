<?php
include_once('../../PostData.php');
PostData::DelAllCaracteristiqueArticle($_POST['id']);
header('location:../../../page/bdd/caracteristiquebdd.php?id='.$_POST['id']);