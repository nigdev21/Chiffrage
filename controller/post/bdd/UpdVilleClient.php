<?php
include_once('../../PostData.php');
PostData::UpdVilleClient($_GET['id'], $_GET['ville']);
header('location:../../../page/bdd/clientbdd.php');