<?php
include_once('../../PostData.php');
PostData::UpdFonctionClientContact($_GET['id'], $_GET['fonction']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);