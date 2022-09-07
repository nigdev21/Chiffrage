<?php
include_once('../../PostData.php');

$arr = explode("\r\n", trim($_POST['norme']));
for ($i = 0; $i < count($arr); $i++) {
   $ligne = $arr[$i];
    PostData::AddNormeArticle($_POST['id'], $ligne , "");
}
header('location:../../../page/bdd/normebdd.php?id='.$_POST['id']);