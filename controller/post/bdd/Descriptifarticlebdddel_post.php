<?php
include_once('../../PostData.php');
PostData::DelDescriptifArticle($_POST['id']);
header('location:../../../page/bdd/descriptifarticlebdd.php?id='.$_POST['id']);