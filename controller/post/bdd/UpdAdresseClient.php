<?php
include_once('../../PostData.php');
PostData::UpdAdresseClient($_GET['id'], $_GET['adresse']);
header('location:../../../page/bdd/clientbdd.php');