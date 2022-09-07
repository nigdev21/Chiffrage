<?php
include_once('../../PostData.php');
PostData::UpdDescriptionArticle($_GET['id'], $_GET['description']);
header('location:../../../page/bdd/articlebdd.php');