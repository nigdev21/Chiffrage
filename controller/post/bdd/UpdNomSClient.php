<?php
include_once('../../PostData.php');
PostData::UpdNomSClient($_GET['id'], $_GET['nom']);
header('location:../../../page/bdd/clientbdd.php');