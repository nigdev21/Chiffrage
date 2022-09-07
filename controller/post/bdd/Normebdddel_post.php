<?php
include_once('../../PostData.php');
PostData::DelNormeArticle($_POST['id'], $_POST['nom'], $_POST['description']);
header('location:../../../page/bdd/normebdd.php?id='.$_POST['id']);