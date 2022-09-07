<?php
include_once('../../PostData.php');
PostData::DelArticle($_POST['id']);
header('location:../../../page/bdd/articlebdd.php');