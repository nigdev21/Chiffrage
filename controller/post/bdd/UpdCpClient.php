<?php
include_once('../../PostData.php');
PostData::UpdCpClient($_GET['id'], $_GET['cp']);
header('location:../../../page/bdd/clientbdd.php');