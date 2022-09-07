<?php
include_once('../../PostData.php');
PostData::AddFamille($_POST['nom']);
header('location:../../../page/bdd/famillebdd.php');