<?php
include_once('../../PostData.php');
PostData::UpdPrixArticle($_GET['id'], $_GET['prix']);
header('location:../../../page/bdd/articlebdd.php');