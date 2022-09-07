<?php
session_start();

include_once('../../PostData.php');
PostData::DelFamilleArticle($_POST['id'], $_SESSION['idArticle']);
header('location:../../../page/bdd/famillearticle.php?id='.$_SESSION['idArticle']);