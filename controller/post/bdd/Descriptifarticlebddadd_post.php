<?php
include_once('../../PostData.php');
PostData::AddDescriptifArticle($_POST['id'], $_POST['descriptif']);
header('location:../../../page/bdd/descriptifarticlebdd.php?id='.$_POST['id']);