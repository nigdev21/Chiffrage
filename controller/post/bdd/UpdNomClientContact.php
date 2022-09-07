<?php
include_once('../../PostData.php');
PostData::UpdNomClientContact($_GET['id'], $_GET['nom']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);