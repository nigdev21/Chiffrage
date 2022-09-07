<?php
include_once('../../PostData.php');

$arr = explode("\r\n", trim($_POST['caracteristique']));
for ($i = 0; $i < count($arr); $i++) {
   $ligne = $arr[$i];
    PostData::AddCaracteristiqueArticle($_POST['id'], $ligne , "");
}
header('location:../../../page/bdd/caracteristiquebdd.php?id='.$_POST['id']);