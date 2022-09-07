<?php
include_once('../../PostData.php');
PostData::UpdTelPortableClientContact($_GET['id'], $_GET['telP']);
header('location:../../../page/bdd/contactclientbdd.php?id='.$_GET['id']);