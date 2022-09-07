<?php
include_once('../../PostData.php');
PostData::AddNormeArticle($_POST['id'], $_POST['nom'], $_POST['description']);
header('location:../../../page/bdd/normebdd.php?id='.$_POST['id']);