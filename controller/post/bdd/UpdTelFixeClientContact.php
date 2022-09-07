<?php
include_once('../../PostData.php');
PostData::UpdTelFixeClientContact($_GET['id'], $_GET['telF']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);