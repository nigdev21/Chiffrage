<?php
session_start();

include_once('../../PostData.php');
PostData::AddFamilleArticle($_POST['famille'], $_SESSION['idArticle']);
header('location:../../../page/bdd/famillearticle.php?id='.$_SESSION['idArticle']);