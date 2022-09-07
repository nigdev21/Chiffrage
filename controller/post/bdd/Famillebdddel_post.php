<?php
include_once('../../PostData.php');
PostData::DelFamille($_POST['id']);
header('location:../../../page/bdd/famillebdd.php');