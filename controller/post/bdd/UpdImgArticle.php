<?php
include_once('../../PostData.php');
PostData::UpdImgArticle($_GET['id'], $_GET['img']);
header('location:../../../page/bdd/articlebdd.php');