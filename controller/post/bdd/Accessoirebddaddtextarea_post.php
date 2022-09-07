<?php
include_once('../../PostData.php');

$arr = explode("\r\n", trim($_POST['accessoire']));
for ($i = 0; $i < count($arr); $i++) {
   $ligne = $arr[$i];
    PostData::AddAccessoireArticle($_POST['id'], $ligne , "");
}
header('location:../../../page/bdd/accessoirebdd.php?id='.$_POST['id']);