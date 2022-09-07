<?php
session_start();

include_once('../../PostData.php');
PostData::DelDevisClient($_POST['id'], $_SESSION['idDevis']);
header('location:../../../page/bdd/devisclient.php?id='.$_SESSION['idDevis']);