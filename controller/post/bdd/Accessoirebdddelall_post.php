<?php
include_once('../../PostData.php');
PostData::DelAllAccesssoireArticle($_POST['id']);
header('location:../../../page/bdd/accessoirebdd.php?id='.$_POST['id']);