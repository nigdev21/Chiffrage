<?php
include_once('../../PostData.php');
PostData::AddAccessoireArticle($_POST['id'], $_POST['nom'], $_POST['description']);
header('location:../../../page/bdd/accessoirebdd.php?id='.$_POST['id']);