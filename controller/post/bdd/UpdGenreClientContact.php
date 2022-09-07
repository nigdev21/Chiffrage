<?php
include_once('../../PostData.php');
PostData::UpdGenreClientContact($_GET['id'], $_GET['genre']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);