<?php
include_once('../../PostData.php');
PostData::UpdNomArticle($_GET['id'], $_GET['nom']);
header('location:../../../page/bdd/articlebdd.php');