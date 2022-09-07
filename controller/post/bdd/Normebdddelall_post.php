<?php
include_once('../../PostData.php');
PostData::DelAllNormeArticle($_POST['id']);
header('location:../../../page/bdd/normebdd.php?id='.$_POST['id']);