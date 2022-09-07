<?php
session_start();

include_once('../../PostData.php');
PostData::AddDevisClient($_POST['client'], $_SESSION['idDevis']);
header('location:../../../page/bdd/devisclient.php?id='.$_SESSION['idDevis']);