<?php
include_once('../../PostData.php');
PostData::DelClient($_POST['id']);
header('location:../../../page/bdd/clientbdd.php');