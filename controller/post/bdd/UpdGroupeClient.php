<?php
include_once('../../PostData.php');
PostData::UpdGroupeClient($_GET['id'], $_GET['groupe']);
header('location:../../../page/bdd/clientbdd.php');