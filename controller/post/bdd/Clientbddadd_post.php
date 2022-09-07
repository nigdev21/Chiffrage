<?php
include_once('../../PostData.php');
PostData::AddClient($_POST['nom_societe'], $_POST['adresse'], $_POST['cp'], $_POST['ville'], $_POST['groupe']);
header('location:../../../page/bdd/clientbdd.php');