<?php
include_once('../../PostData.php');
PostData::UpdEmailClientContact($_GET['id'], $_GET['email']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);