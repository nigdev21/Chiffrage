<?php
include_once('../../PostData.php');
PostData::UpdPrenomClientContact($_GET['id'], $_GET['prenom']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);