<?php
include_once('../../PostData.php');
PostData::AddArticle($_POST['idFournisseur'], $_POST['nom'], $_POST['description'], $_POST['img'], $_POST['prix']);
header('location:../../../page/bdd/articlebdd.php');